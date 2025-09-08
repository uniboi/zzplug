extern "kernel32" fn GetModuleHandleA(lpModuleName: ?[*:0]const u8) callconv(.winapi) ?std.os.windows.HMODULE;

/// Create a configured Plugin type with a baked CreateInterface implementation
///
/// In order to register your plugin, call the `embed` method at comptime:
/// ```zig
/// const my_plugin: Plugin(...) = .{};
///
/// comptime {
///    my_plugin.embed();
/// }
/// ```
pub fn Plugin(comptime config: Config) type {
    const plugin_id: PluginId(config.info) = .{};

    const Proxies = struct {
        pub fn init(instance: *const PluginCallbacks.Instance, ns_module: std.os.windows.HMODULE, init_data: *const PluginCallbacks.InitData, reloaded: bool) callconv(.c) void {
            modules.northstar = .init(.fromHandle(ns_module), init_data);

            const tier0 = GetModuleHandleA("tier0.dll");
            if (tier0) |module| {
                modules.tier0 = .init(.fromHandle(module));
            } else {
                modules.northstar.?.log(.err, "tier0.dll is not loaded");
            }

            config.callbacks.init(instance, ns_module, init_data, reloaded);
        }

        pub fn onLibraryLoaded(instance: *const PluginCallbacks.Instance, module: std.os.windows.HMODULE, library_name: ?[*:0]const u8) callconv(.c) void {
            if (library_name != null) {
                const Libraries = enum {
                    @"server.dll",
                    @"client.dll",
                    @"engine.dll",
                };

                const name = std.mem.span(library_name.?);
                const lib = std.meta.stringToEnum(Libraries, name);

                if (lib != null) {
                    switch (lib.?) {
                        .@"server.dll" => {
                            modules.server = .init(.fromHandle(module));
                            sq.ctx.initForServer(&modules.server.?);
                        },
                        .@"client.dll" => {
                            modules.client = .init(.fromHandle(module));
                            sq.ctx.initForClient(&modules.client.?);
                        },
                        .@"engine.dll" => {
                            modules.engine = .init(.fromHandle(module));
                        },
                    }
                }
            }

            config.callbacks.on_library_loaded(instance, module, library_name);
        }
    };

    const callbacks_instance: extern struct { vtable: *const PluginCallbacks } = .{
        .vtable = &.{
            .init = &Proxies.init,
            .finalize = config.callbacks.finalize,
            .unload = config.callbacks.unload,
            .on_sqvm_created = config.callbacks.on_sqvm_created,
            .on_sqvm_destroying = config.callbacks.on_sqvm_destroying,
            .on_library_loaded = &Proxies.onLibraryLoaded,
            .run_frame = config.callbacks.run_frame,
        },
    };

    const static_interfaces: std.StaticStringMap(*const anyopaque) = .initComptime(.{
        .{ "PluginId001", &plugin_id },
        .{ "PluginCallbacks001", &callbacks_instance },
    });

    const I = struct {
        /// Create an interface instance based on an identifier that includes name and version
        /// Newer versions of an interface are compatible with older versions
        pub fn createInterface(name: [*:0]const u8, maybe_status: ?*InterfaceStatus) callconv(.c) ?*anyopaque {
            const len = std.mem.len(name);
            const name_slice = name[0..len];

            if (static_interfaces.get(name_slice)) |iface| {
                if (maybe_status) |status| {
                    status.* = .ok;
                }

                return @constCast(iface);
            }

            if (config.interfaces.get(name_slice)) |iface| {
                if (maybe_status) |status| {
                    status.* = .ok;
                }

                return iface();
            }

            if (maybe_status) |status| {
                status.* = .failed;
            }

            return null;
        }

        /// Link required symbols
        fn createEntry() void {
            comptime {
                @export(&@This().createInterface, .{ .name = "CreateInterface" });
            }
        }

        /// Ensure required symbols are linked in the binary
        pub fn embed(self: @This()) void {
            createEntry();
            std.mem.doNotOptimizeAway(self);
        }
    };

    return I;
}

pub const Config = struct {
    info: PluginIdConfig,
    callbacks: PluginCallbacks = .{},
    interfaces: std.StaticStringMap(*fn () *anyopaque) = .{},
};

const std = @import("std");
const modules = @import("modules.zig");
const interface = @import("interfaces.zig");
const sq = @import("squirrel.zig");
const InterfaceStatus = interface.InterfaceStatus;
const PluginIdConfig = interface.PluginIdConfig;
const PluginId = interface.PluginId;
const PluginCallbacks = interface.PluginCallbacks;
