//! This plugin installs a hook for the status ConCommand
//! To toggle if the hook is enabled, run the toggle_hook ConCommand also added by this plugin
//!
//! Try it out in-game:
//! ] status
//! ] toggle_hook
//! ] status

const hooks_example: zzplug.Plugin(.{
    .info = .{
        .name = "hooks_example",
        .log_name = "hkexample",
        .dependency_name = "HOOKS_EXAMPLE",
    },
    .callbacks = .{
        .init = init,
        .unload = unload,
        .on_library_loaded = onLibraryLoaded,
    },
}) = .{};

comptime {
    hooks_example.embed();
}

/// This is the special allocator we need for hooking
var pca: ?zigzag.PageChunkAllocator = null;
/// The actual hook.
/// Stores which address has been hooked, where the trampoline is located and some more info
var status_hook: ?zigzag.Hook(CommandCallback) = null;
/// A small helper ConCommand that disables or enables the hook
var cc_toggle_hook: *zzplug.valve.tier1.ConCommand = undefined;

fn init(_: *const PC, _: std.os.windows.HMODULE, _: *const zzplug.interfaces.PluginCallbacks.InitData, _: bool) callconv(.c) void {
    // set up the allocator required for hooks
    // we can't use std.mem.Allocator (like tier0.allocator()) because hooks need a guarantee that
    // the allocated block is near the target address
    pca = zigzag.PageChunkAllocator.init() catch |err| {
        zzplug.modules.northstar.?.logFmt(.err, "could not initialize PCA: {t}", .{err});
    };
}

// this is only required if you want to be able to reload the plugin at runtime
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

    //wait for engine.dll to be loaded
    if (std.mem.eql(u8, "engine.dll", std.mem.span(lib_name.?))) {
        // install the hook for the `status` ConCommand
        enableHook();

        // create the ConCommand to toggle the status hook
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

// This function will get called instead of the original function
fn ccStatusDetour(cmd: *const zzplug.valve.tier1.CCommand) callconv(.c) void {
    zzplug.modules.northstar.?.log(.info, "in detour");
    // call the original function
    status_hook.?.delegate(cmd);
}

fn ccToggleHook(_: *const zzplug.valve.tier1.CCommand) callconv(.c) void {
    if (status_hook) |hook| {
        hook.deinit(pca.?.allocator()) catch |err| {
            zzplug.modules.northstar.?.logFmt(.err, "couldn't disable hook: {t}", .{err});
            return;
        };
        zzplug.modules.northstar.?.log(.info, "disabled hook");
        status_hook = null;
    } else {
        enableHook();
    }
}

fn enableHook() void {
    // This is the address of the function we want to hook
    const cc_status: *CommandCallback = @ptrCast(zzplug.modules.engine.?.module.offset(0x15ce80));
    // Install the hook. Whenever cc_status is executed, ccStatusDetour is called instead
    status_hook = zigzag.Hook(CommandCallback).init(pca.?.allocator(), cc_status, ccStatusDetour) catch |err| {
        zzplug.modules.northstar.?.logFmt(.err, "Could not hook status: {t}", .{err});
        return;
    };

    zzplug.modules.northstar.?.log(.info, "installed hook");
}

const std = @import("std");
const zigzag = @import("zigzag");
const zzplug = @import("zzplug");
const PC = zzplug.interfaces.PluginCallbacks.Instance;
const CommandCallback = zzplug.valve.tier1.ConCommand.CommandCallback;
