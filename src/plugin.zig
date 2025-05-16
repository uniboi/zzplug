const std = @import("std");

const interface = @import("interfaces.zig");
const InterfaceStatus = interface.InterfaceStatus;
const PluginConfig = interface.PluginConfig;
const PluginId = interface.PluginId;
const PluginCallbacks = interface.PluginCallbacks;

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
pub fn Plugin(comptime config: PluginConfig, comptime callbacks: PluginCallbacks, comptime interfaces: std.StaticStringMap(*fn () *anyopaque)) type {
    const plugin_id: PluginId(config) = .{};

    const callbacks_instance: extern struct { vtable: *const PluginCallbacks } = .{ .vtable = &callbacks };

    const static_interfaces: std.StaticStringMap(*const anyopaque) = .initComptime(.{
        .{ "PluginId001", &plugin_id },
        .{ "PluginCallbacks001", &callbacks_instance },
    });

    const I = struct {
        /// Create an interface instance based on an identifier that includes name and version
        /// Newer versions of an interface are compatible with older versions
        pub fn createInterface(name: [*:0]const u8, maybe_status: ?*InterfaceStatus) callconv(.C) ?*anyopaque {
            const len = std.mem.len(name);
            const name_slice = name[0..len];

            if (static_interfaces.get(name_slice)) |iface| {
                if (maybe_status) |status| {
                    status.* = .ok;
                }

                return @constCast(iface);
            }

            if (interfaces.get(name_slice)) |iface| {
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
