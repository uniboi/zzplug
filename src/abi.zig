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
    if (@sizeOf(T) != size) @compileError(std.fmt.comptimePrint("Size of {s} does not fit. Expected {d}, got {d}.", .{ @typeName(T), size, @sizeOf(T) }));
}

pub fn Inherit(T: type) type {
    const info = @typeInfo(T);
    if (info != .@"struct") @compileError("can only inherit structs");

    const fields = fields: {
        if (info.@"struct".fields.len == 0) break :fields &.{};

        // TODO: multiple vtables are possible
        if (std.mem.eql(u8, info.@"struct".fields[0].name, "vtable")) break :fields info.@"struct".fields[1..];

        break :fields info.@"struct".fields;
    };

    return @Type(.{
        .@"struct" = .{
            .layout = .@"extern",
            .fields = fields,
            .decls = &.{},
            .is_tuple = false,
        },
    });
}

pub fn downCast(T: type, hierarchy: Tree(type), value: anytype) if(@typeInfo(@TypeOf(value)).pointer.is_const) *const T else *T {
    comptime {
        const VT = std.meta.Child(@TypeOf(value));

        const subtree = hierarchy.find(T) orelse @compileError(@typeName(T) ++ " does not exist in hierarchy");
        if (subtree.find(VT) == null) @compileError(@typeName(VT) ++ " does not inherit " ++ @typeName(T));
    }

    return @ptrCast(value);
}

pub const squirrel_object_hierarchy: Tree(type) = .{
    .value = sq.SQRefCounted,
    .children = &.{
        .{ .value = sq.SQWeakRef },
        .{ .value = sq.SQString },
        .{ .value = sq.SQFunctionProto },
        .{ .value = sq.SQFunctionProtoUnimplemented },
        // .{ .value = sq.SQVM }, // Not sure about this one
        .{
            .value = sq.SQCollectable,
            .children = &.{
                .{ .value = sq.SQClosure },
                .{ .value = sq.SQFunctionProto },
                .{ .value = sq.SQArray },
                .{ .value = sq.SQStructInstance },
                .{ .value = sq.SQStructDef },
                .{ .value = sq.SQClass },
                .{ .value = sq.SQNativeClosure },
                .{ .value = sq.SQVM }, // Not sure about this one
                .{
                    .value = sq.SQDelegable,
                    .children = &.{
                        .{ .value = sq.SQTable },
                        .{ .value = sq.SQInstance },
                    },
                },
            },
        },
    },
};

pub const Module = @import("abi/module.zig").Module;
/// describes padding or an unknown type with a known size
pub const @"undefined" = u8;
/// a pointer that is potentially deallocated
pub const IllegalPointer = *opaque {};

const std = @import("std");
const Tree = @import("abi/tree.zig").Tree;
const sq = @import("squirrel.zig");
