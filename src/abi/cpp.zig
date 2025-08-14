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

const std = @import("std");

