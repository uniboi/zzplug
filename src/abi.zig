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

pub const Module = opaque {
    pub fn fromHandle(h: std.os.windows.HMODULE) *Module {
        return @ptrCast(h);
    }

    pub fn handle(mod: *Module) std.os.windows.HMODULE {
        return @ptrCast(mod);
    }

    pub fn offset(mod: *Module, data_offset: usize) *align(8) anyopaque {
        return @ptrFromInt(@intFromPtr(mod) + data_offset);
    }

    pub fn patch(mod: *Module, data_offset: usize, data: []const u8) usize {
        const bytes: [*]u8 = @ptrCast(mod.offset(data_offset));
        var stream = std.io.fixedBufferStream(bytes[0..data.len]);
        return stream.writer().write(data) catch unreachable;
    }
};

pub const @"undefined" = u8;

const std = @import("std");
