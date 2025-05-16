const std = @import("std");
const HMODULE = std.os.windows.HMODULE;

const Sys = @This();

pub const LogLevel = enum(c_int) {
    info,
    warn,
    err,
};

vftable: *const struct {
    /// Log a message using Northstar's source console system
    log: *const fn (*const Sys, own_handle: HMODULE, level: LogLevel, msg: [*:0]const u8) callconv(.C) void,
    /// Unload this plugin
    unload: *const fn (*const Sys, own_handle: HMODULE) callconv(.C) void,
    /// Reload this plugin
    reload: *const fn (*const Sys, own_handle: HMODULE) callconv(.C) void,
},
