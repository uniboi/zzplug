pub const CreateInterfacePtr = *const fn (name: [*:0]const u8, status: ?*InterfaceStatus) callconv(.c) ?*anyopaque;

pub const InterfaceStatus = enum(c_int) {
    /// interface has been constructed
    ok = 0,
    /// could not find interface to instantiate
    failed = 1,
};

pub const PluginContext = packed struct(c_longlong) {
    /// The plugin will get loaded on dedicated servers
    dedicated: bool,
    /// The plugin will get loaded on clients
    client: bool,
    /// Unused bits of the flag
    _: u62 = 0,

    /// plugin is loaded in all contexts
    pub const always: @This() = .{ .dedicated = true, .client = true };
};

pub const PluginConfig = struct {
    /// General plugin name
    name: [*:0]const u8,

    /// Log prefix used by NS
    log_name: [*:0]const u8,

    /// Log prefix color used by NS
    log_color: Color = .{ .red = 0, .green = 0, .blue = 0 },

    /// Name of Squirrel Constant created. Used for feature detection of this plugin in scripts
    ///
    /// ```
    /// #if MY_PLUGIN_IS_LOADED
    /// print("loaded plugin with 'dependency_name' MY_PLUGIN_IS_LOADED");
    /// #else
    /// print("plugin not loaded");
    /// #endif
    /// ```
    dependency_name: [*:0]const u8,

    /// Determines if NS will load this plugins for dedicated servers and / or clients
    context: PluginContext,
};

/// If all zeroes, ns will use the default plugin colors
pub const Color = packed struct(u64) {
    red: u8,
    green: u8,
    blue: u8,
    _: u40 = 0,
};

pub fn PluginId(config: PluginConfig) type {
    return extern struct {

        // vtable: *const PluginIdVTable = &plugin_id_vtable,
        const VTable = extern struct {
            getString: *const @TypeOf(getString),
            getField: *const @TypeOf(getField),
        };

        vtable: *const VTable = &.{ .getString = getString, .getField = getField },

        const StringKind = enum(c_int) {
            /// The name of the plugin
            name = 0,
            /// Name used in logs by this plugin
            log_name = 1,
            /// Name used for script dependencies
            /// Values returned when a dependency_name is requested have to be a valid squirrel identifier
            dependency_name = 2,

            // force the user to handle invalid values
            _,
        };

        pub fn getString(_: *const @This(), kind: StringKind) callconv(.c) ?[*:0]const u8 {
            return switch (kind) {
                .name => config.name,
                .log_name => config.log_name,
                .dependency_name => config.dependency_name,
                else => null,
            };
        }

        const FieldKind = enum(c_int) {
            /// The context when the plugin should be loaded.
            /// This does NOT mean script context, but whether the plugin is meant to be used on dedicated servers and / or clients
            context,
            color,

            // force the user to handle invalid values
            _,
        };

        pub fn getField(_: *const @This(), kind: FieldKind) callconv(.c) c_longlong {
            return switch (kind) {
                .context => @bitCast(config.context),
                .color => @bitCast(config.log_color),
                else => 0,
            };
        }
    };
}

pub const PluginCallbacks = extern struct {
    pub const Instance = opaque {};

    pub const InitData = extern struct {
        /// System handle of this plugin library
        handle: HMODULE,
    };

    /// Called after this plugin has been loaded and validated by Northstar.
    ///
    /// At this point in time no game systems (for example any squirrel VM) have been initialized
    init: *const fn (*const Instance, ns_handle: HMODULE, init_data: *const InitData, reloaded: bool) callconv(.c) void,

    /// Called after all plugins have been initialized
    finalize: *const fn (*const Instance) callconv(.c) void = finalizeStub,

    /// Called before this plugin will get unloaded by Northstar.
    ///
    /// The plugin will only get unloaded if `true` is returned.
    ///
    /// Destroy all state used by the plugin here.
    unload: *const fn (*const Instance) callconv(.c) bool = unloadStub,

    /// Called after a sqvm has been created
    on_sqvm_created: *const fn (*const Instance, sqvm: *sq.C_SQVM) callconv(.c) void = onSqvmCreatedStub,

    /// Called right before a sqvm is being destroyed
    on_sqvm_destroying: *const fn (*const Instance, sqvm: *sq.C_SQVM) callconv(.c) void = onSqvmDestroyingStub,

    /// Called after any dll has been loaded by the game process.
    ///
    /// This includes other plugins, dependencies used by northstar and modules loaded by the game.
    on_library_loaded: *const fn (*const Instance, module: HMODULE, library_name: ?[*:0]const u8) callconv(.c) void = onLibraryLoadedStub,

    /// Called every game frame
    run_frame: *const fn (*const Instance) callconv(.c) void = runFrameStub,

    fn finalizeStub(_: *const Instance) callconv(.c) void {}
    fn unloadStub(_: *const Instance) callconv(.c) bool {
        return false;
    }
    fn onSqvmCreatedStub(_: *const Instance, _: *sq.C_SQVM) callconv(.c) void {}
    fn onSqvmDestroyingStub(_: *const Instance, _: *sq.C_SQVM) callconv(.c) void {}
    fn onLibraryLoadedStub(_: *const Instance, _: HMODULE, _: ?[*:0]const u8) callconv(.c) void {}
    fn runFrameStub(_: *const Instance) callconv(.c) void {}
};

pub const NsSys = @import("interfaces/NsSys.zig").NsSys;
const sq = @import("squirrel.zig");

const std = @import("std");
const HMODULE = std.os.windows.HMODULE;
const testing = std.testing;
