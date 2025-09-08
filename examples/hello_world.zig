//! A small plugin that logs "Hello World" in the console immediately after starting the game. That's it

// this callback is called by northstar when the plugin module has been loaded
fn init(_: *const PluginCallbacks.Instance, _: HMODULE, _: *const PluginCallbacks.InitData, _: bool) callconv(.c) void {
    zzplug.modules.northstar.?.log(.info, "Hello World");
}

fn unload(_: *const PluginCallbacks.Instance) callconv(.c) bool {
    return true;
}

// configure the plugin
const hello_world: zzplug.Plugin(.{
    .info = .{
        .name = "zzplug_example",
        .log_name = "zzexample", // All NS log prefixes are 9 chars long. Plugins are free to choose any length but I usually use 9 to line the logs up
        .log_color = .{ .red = 224, .green = 187, .blue = 228 },
        .dependency_name = "ZZPLUG_EXAMPLE",
        .context = .{ .client = true, .dedicated = true },
    },
    .callbacks = .{
        // specify the plugin callback that gets called by northstar immediately after loading
        .init = init,
        .unload = unload,
    },
}) = .{};

// Calling the embed method on the plugin is required. Otherwise the plugin can't get loaded by northstar
comptime {
    hello_world.embed();
}

const std = @import("std");
const HMODULE = std.os.windows.HMODULE;

const zzplug = @import("zzplug");
const PluginCallbacks = zzplug.interfaces.PluginCallbacks;
