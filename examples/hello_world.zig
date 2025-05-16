const std = @import("std");
const HMODULE = std.os.windows.HMODULE;

const zzplug = @import("zzplug");

const PluginCallbacks = zzplug.interfaces.PluginCallbacks;
const InterfaceStatus = zzplug.interfaces.InterfaceStatus;

const NsSys = zzplug.interfaces.NsSys;

fn init(_: *const PluginCallbacks.Instance, ns_module: HMODULE, init_data: *const PluginCallbacks.InitData, reloaded: bool) callconv(.C) void {
    _ = reloaded;

    const ns_create_interface = @as(*fn (name: [*:0]const u8, ?*InterfaceStatus) callconv(.C) *anyopaque, @ptrCast(std.os.windows.kernel32.GetProcAddress(ns_module, "CreateInterface")));
    const sys: *const NsSys = @alignCast(@ptrCast(ns_create_interface("NSSys001", null)));
    sys.vftable.log(sys, init_data.handle, .info, "Hello World!");
}

const hello_world: zzplug.Plugin(
    .{
        .name = "zzplug_test",
        .log_name = "zzplug_test",
        .log_color = .{ .red = 224, .green = 187, .blue = 228 },
        .dependency_name = "ZZPLUG_TEST",
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
