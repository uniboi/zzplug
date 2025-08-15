const con_commands_example: zzplug.Plugin(
    .{
        .name = "zzplug_concommand_example",
        .log_name = "ccexample",
        .dependency_name = "CON_COMMAND_EXAMPLE",
    },
    .{
        .unload = unload,
        .on_library_loaded = onLibraryLoaded,
    },
    .{},
) = .{};

comptime {
    con_commands_example.embed();
}

var cc_hello_world: *zzplug.valve.tier1.ConCommand = undefined;

fn unload(_: *const Callbacks.Instance) callconv(.c) bool {
    if(zzplug.modules.tier0) |tier0| {
        tier0.allocator().destroy(cc_hello_world);
    }

    return true;
}

fn onLibraryLoaded(_: *const Callbacks.Instance, _: std.os.windows.HMODULE, lib_name: ?[*:0]const u8) callconv(.c) void {
    if(lib_name == null) return;
    if(std.mem.eql(u8, "engine.dll", std.mem.span(lib_name.?))) {
        cc_hello_world = zzplug.valve.tier1.ConCommand.create(
            zzplug.modules.tier0.?.allocator(),
            "zzplug_hello_world",
            ccHelloWorld,
            "print hello world",
            .{},
            null,
        ) catch {
            zzplug.modules.northstar.?.log(.err, "failed to allocate ConCommand");
            return;
        };
    }
}

fn ccHelloWorld(cmd: *const zzplug.valve.tier1.CCommand) callconv(.c) void {
    _ = cmd;
    zzplug.modules.northstar.?.log(.info, "hello world!");
}

const std = @import("std");
const zzplug = @import("zzplug");
const Callbacks = zzplug.interfaces.PluginCallbacks;
