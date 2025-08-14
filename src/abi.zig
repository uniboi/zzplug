pub const cpp = @import("./abi/cpp.zig");

pub fn assertSize(comptime T: type, comptime size: comptime_int) void {
    if (@sizeOf(T) != size) @compileError(
        std.fmt.comptimePrint(
            "Size of {s} does not fit. Expected {d}, got {d}.",
            .{ @typeName(T), size, @sizeOf(T) },
        ),
    );
}

pub fn assertOffset(comptime T: type, comptime field: []const u8, comptime offset: usize) void {
    if (@offsetOf(T, field) != offset) @compileError(
        std.fmt.comptimePrint(
            "Offset {s}.{s} is incorrect. Expected {2d} (0x{2X}), got {3d} (0x{3X})",
            .{ @typeName(T), field, offset, @offsetOf(T, field)},
        ),
    );
}

pub const Module = @import("abi/module.zig").Module;
/// describes padding or an unknown type with a known size
pub const @"undefined" = u8;
/// a pointer that is potentially deallocated
pub const IllegalPointer = *opaque {};

const std = @import("std");
