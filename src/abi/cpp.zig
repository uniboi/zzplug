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

pub fn upcast(T: type, hierarchy: Tree(type), value: anytype) if (@typeInfo(@TypeOf(value)).pointer.is_const) *const T else *T {
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
                .{ .value = sq.SQVM },
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

const std = @import("std");
const Tree = @import("./tree.zig").Tree;
const sq = @import("../squirrel.zig");

