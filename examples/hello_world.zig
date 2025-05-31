fn init(_: *const PluginCallbacks.Instance, _: HMODULE, _: *const PluginCallbacks.InitData, _: bool) callconv(.C) void {
    zzplug.modules.northstar.log(.info, "Hello World");
}

const hello_world: zzplug.Plugin(
    .{
        .name = "zzplug_example",
        .log_name = "zzexample", // All NS log prefixes are 9 chars long. Plugins are free to choose any length but I usually use 9 to line the logs up
        .log_color = .{ .red = 224, .green = 187, .blue = 228 },
        .dependency_name = "ZZPLUG_EXAMPLE",
        .context = .{ .client = true, .dedicated = true },
    },
    .{
        .init = init,
    },
    .initComptime(.{}),
) = .{};

comptime {
    hello_world.embed();
}

const std = @import("std");
const HMODULE = std.os.windows.HMODULE;

const zzplug = @import("zzplug");

const PluginCallbacks = zzplug.interfaces.PluginCallbacks;
const InterfaceStatus = zzplug.interfaces.InterfaceStatus;
