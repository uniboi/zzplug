pub const cpp = @import("./abi/cpp.zig");

pub fn assertInheritance(comptime Child: type, comptime Parent: type) void {
    const child_info = @typeInfo(Child);
    const parent_info = @typeInfo(Parent);

    if (child_info != .@"struct" or parent_info != .@"struct") @compileError("Parent and Child must be structs");
    for (child_info.@"struct".fields[0..parent_info.@"struct".fields.len], parent_info.@"struct".fields) |child_field, parent_field| {
        if (@offsetOf(Child, child_field.name) != @offsetOf(Parent, parent_field.name)) @compileError("Inherited member has different offset");
        if (std.mem.eql(u8, child_field.name, parent_field.name) == false) @compileError("Inherited member has different name. Expected " ++ parent_field.name ++ ", got " ++ child_field.name);
        if (!std.mem.eql(u8, child_field.name, "vtable") and // TODO check vtables are properly inherited
            child_field.type != parent_field.type)
        {
            @compileError("Inherited member " ++ child_field.name ++ " has different Type");
        }
    }
}

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
