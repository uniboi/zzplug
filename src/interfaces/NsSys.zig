const std = @import("std");
const HMODULE = std.os.windows.HMODULE;

pub const NsSys = extern struct {
    const Sys = @This();

    vtable: *const struct {
        /// Log a message using Northstar's source console system
        log: *const fn (*const Sys, unused: u64, level: LogLevel, msg: [*:0]const u8) callconv(.c) void,
        /// Unload this plugin
        unload: *const fn (*const Sys, unused: u64) callconv(.c) void,
        /// Reload this plugin
        reload: *const fn (*const Sys, unused: u64) callconv(.c) void,
    },

    pub const LogLevel = enum(c_int) {
        info,
        warn,
        err,
    };
};
