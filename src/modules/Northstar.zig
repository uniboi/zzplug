sys: *const ifaces.NsSys,
createInterface: ifaces.CreateInterfacePtr,

pub fn init(module: *abi.Module) Northstar {
    const createInterface: ifaces.CreateInterfacePtr = @ptrCast(std.os.windows.kernel32.GetProcAddress(module.handle(), "CreateInterface"));
    const sys: *const ifaces.NsSys = @alignCast(@ptrCast(createInterface("NSSys001", null)));

    return .{
        .createInterface = createInterface,
        .sys = sys,
    };
}

var log_fmt_buf: [2048]u8 = @splat(0);

/// Log a message using Northstar's logging system.
/// Messages will appear in the in-game console and logfiles.
pub fn log(ns: *Northstar, level: ifaces.NsSys.LogLevel, msg: [*:0]const u8) void {
    ns.sys.vtable.log(ns.sys, 0, level, msg);
}

/// Log a message using Northstar's logging system.
/// Formattted messages are truncated after 2048 bytes.
pub fn logFmt(ns: *Northstar, level: ifaces.NsSys.LogLevel, comptime fmt: []const u8, args: anytype) void {
    const zbuf = std.fmt.bufPrintZ(&log_fmt_buf, fmt, args) catch buf: {
        log_fmt_buf[log_fmt_buf.len - 1] = 0;
        break :buf log_fmt_buf[0.. :0];
    };

    ns.log(level, zbuf);
}

/// Unload this plugin module
pub fn unload(ns: *Northstar) void {
    ns.sys.vtable.unload(ns.sys, 0);
}

/// Unload and reload this plugin module
pub fn reload(ns: *Northstar) void {
    ns.sys.vtable.reload(ns.sys, 0);
}

const Northstar = @This();
const ifaces = @import("../interfaces.zig");
const abi = @import("../abi.zig");
const std = @import("std");
