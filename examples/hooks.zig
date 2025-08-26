const hooks_example: zzplug.Plugin(
    .{
        .name = "hooks_example",
        .log_name = "hkexample",
        .dependency_name = "HOOKS_EXAMPLE",
    },
    .{
        .init = init,
        .unload = unload,
        .on_library_loaded = onLibraryLoaded,
    },
    .{},
) = .{};

comptime {
    hooks_example.embed();
}

var pca: ?zigzag.PageChunkAllocator = null;
var status_hook: ?zigzag.Hook(CommandCallback) = null;
var cc_toggle_hook: *zzplug.valve.tier1.ConCommand = undefined;

fn init(_: *const PC, _: std.os.windows.HMODULE, _: *const zzplug.interfaces.PluginCallbacks.InitData, _: bool) callconv(.c) void {
    pca = zigzag.PageChunkAllocator.init() catch |err| {
        zzplug.modules.northstar.?.logFmt(.err, "could not initialize PCA: {t}", .{err});
    };
}

fn unload(_: *const PC) callconv(.c) bool {
    if (pca) |*p| {
        if (status_hook) |hook| {
            hook.deinit(p.allocator()) catch |err| {
                zzplug.modules.northstar.?.logFmt(.err, "Could not unhook status: {t}", .{err});
                return false;
            };
        }

        p.deinit();
    }

    return true;
}

fn onLibraryLoaded(_: *const PC, _: std.os.windows.HMODULE, lib_name: ?[*:0]const u8) callconv(.c) void {
    if (pca == null or lib_name == null) return;
    if (std.mem.eql(u8, "engine.dll", std.mem.span(lib_name.?))) {
        enableHook();

        cc_toggle_hook = zzplug.valve.tier1.ConCommand.create(
            zzplug.modules.tier0.?.allocator(),
            "toggle_hook",
            ccToggleHook,
            "toggle example hook",
            .{},
            null,
        ) catch {
            zzplug.modules.northstar.?.log(.err, "failed to create concommand");
            return;
        };
    }
}

fn ccStatusDetour(cmd: *const zzplug.valve.tier1.CCommand) callconv(.c) void {
    zzplug.modules.northstar.?.log(.info, "1) pre");
    status_hook.?.delegate(cmd);
    zzplug.modules.northstar.?.log(.info, "2) post");
}

fn ccToggleHook(_: *const zzplug.valve.tier1.CCommand) callconv(.c) void {
    if (status_hook) |hook| {
        hook.deinit(pca.?.allocator()) catch |err| {
            zzplug.modules.northstar.?.logFmt(.err, "couldn't disable hook: {t}", .{err});
            return;
        };

        zzplug.modules.northstar.?.log(.info, "disabled hook");
    } else {
        enableHook();
    }
}

fn enableHook() void {
    const cc_status: *CommandCallback = @ptrCast(zzplug.modules.engine.?.module.offset(0x15ce80));
    status_hook = zigzag.Hook(CommandCallback).init(pca.?.allocator(), cc_status, ccStatusDetour) catch |err| {
        zzplug.modules.northstar.?.logFmt(.err, "Could not hook status: {t}", .{err});
        return;
    };

    zzplug.modules.northstar.?.logFmt(.info, "installed hook.\ntarget: 0x{x}\ndelegate: 0x{x}\nhook: 0x{x}", .{
        @intFromPtr(status_hook.?.target),
        @intFromPtr(status_hook.?.delegate),
        @intFromPtr(&ccStatusDetour),
    });
}

const std = @import("std");
const zigzag = @import("zigzag");
const zzplug = @import("zzplug");
const PC = zzplug.interfaces.PluginCallbacks.Instance;
const CommandCallback = zzplug.valve.tier1.ConCommand.CommandCallback;
