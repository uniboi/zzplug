pub const SQObject = extern struct {
    type: SQObjectType.OT,
    val: SQObjectValue align(4),

    pub const SQObjectValue = extern union {
        ptr: Padded(*anyopaque),

        integer: Padded(sq.SQInteger),
        float: Padded(sq.SQFloat),
        bool: Padded(sq.SQBool),
        vec: Vector3,

        refcounted: Padded(*sq.SQRefCounted),
        delegable: Padded(*sq.SQDelegable),
        weakref: Padded(*sq.SQWeakRef),

        class: Padded(*sq.SQClass),
        array: Padded(*sq.SQArray),
        closure: Padded(*sq.SQClosure),
        function_proto: Padded(*sq.SQFunctionProto),
        function_proto_unimplemented: Padded(*sq.SQFunctionProtoUnimplemented),
        instance: Padded(*sq.SQInstance),
        native_closure: Padded(*sq.SQNativeClosure),
        string: Padded(*sq.SQString),
        struct_def: Padded(*sq.SQStructDef),
        struct_instance: Padded(*sq.SQStructInstance),
        table: Padded(*sq.SQTable),
        thread: Padded(*sq.SQVM),

        // ...

        fn Padded(comptime T: type) type {
            return extern struct {
                _: u32,
                value: T align(4),
            };
        }

        test {
            try std.testing.expect(@sizeOf(SQObjectValue) == 0x0C);
        }
    };

    pub fn value(self: SQObject, comptime kind: std.meta.FieldEnum(SQObjectValue)) @FieldType(@FieldType(SQObjectValue, @tagName(kind)), "value") {
        return @field(self.val, @tagName(kind)).value;
    }

    pub fn addref(self: SQObject) void {
        if (self.type.properties().refcounted) {
            self.value(.refcounted).addref();
        }
    }

    pub fn release(self: SQObject) void {
        if (self.type.properties().refcounted) {
            self.value(.refcounted).release();
        }
    }

    pub fn realval(self: SQObject) SQObject {
        if (self.type == .weakref) return self.val.weakref.value.obj;
        return self;
    }

    pub fn format(self: SQObject, writer: *std.Io.Writer) !void {
        switch (self.type) {
            .integer => try writer.print("SQInteger{{ {} }}", .{self.val.integer.value}),
            .float => try writer.print("SQFloat{{ {d} }}", .{self.val.float.value}),
            .bool => try writer.print("SQBool{{ {} }}", .{self.val.bool.value}),
            .vector => try writer.print("Vector3{{ < {d}, {d}, {d} > }}", .{ self.val.vec.x, self.val.vec.y, self.val.vec.z }),
            .weakref => try writer.print("SQWeakRef{{ {f} }}", .{self.val.weakref.value.obj}),
            .struct_instance => try writer.print("{f}", .{self.value(.struct_instance)}),
            .table => try writer.print("{f}", .{self.value(.table)}),
            .array => try writer.print("{f}", .{self.value(.array)}),
            .string => try writer.print("{f}", .{self.value(.string)}),
            else => try writer.print("SQObject{{ {} }}", .{self.val.ptr.value}),
        }
    }

    pub fn upcast(T: type, val: anytype) if(@typeInfo(@TypeOf(val)).pointer.is_const) *const T else *T {
        return abi.cpp.upcast(T, abi.cpp.squirrel_object_hierarchy, val);
    }

    pub const SQObjectType = packed struct(u32) {
        null: bool = false, // 0x01
        integer: bool = false, // 0x02
        float: bool = false, // 0x04
        bool: bool = false, // 0x08
        string: bool = false, // 0x10
        table: bool = false, // 0x20
        array: bool = false, // 0x40
        userdata: bool = false, // 0x80
        closure: bool = false, // 0x100
        native_closure: bool = false, // 0x200
        asset: bool = false, // 0x400
        userpointer: bool = false, // 0x800
        thread: bool = false, // 0x1000
        function_proto: bool = false, // 0x2000
        class: bool = false, // 0x4000
        class_instance: bool = false, // 0x8000
        weakref: bool = false, // 0x10000
        _1: u1 = 0,
        vector: bool = false, // 0x40000
        function_proto_unimplemented: bool = false, // 0x80000
        struct_def: bool = false, // 0x100000
        struct_instance: bool = false, // 0x200000
        entity_instance: bool = false, // 0x400000
        _2: u1 = 0,

        /// object can be coerced to false
        can_be_false: bool = false, // 0x1000000
        delegable: bool = false, // 0x2000000
        numeric: bool = false, // 0x4000000
        refcounted: bool = false, // 0x8000000

        _3: u4 = 0,

        pub const OT = enum(u32) {
            userpointer = @bitCast(SQObjectType{ .userpointer = true }),
            vector = @bitCast(SQObjectType{ .vector = true }),
            null = @bitCast(SQObjectType{ .null = true, .can_be_false = true }),
            bool = @bitCast(SQObjectType{ .bool = true, .can_be_false = true }),
            integer = @bitCast(SQObjectType{ .integer = true, .numeric = true, .can_be_false = true }),
            float = @bitCast(SQObjectType{ .float = true, .numeric = true, .can_be_false = true }),
            string = @bitCast(SQObjectType{ .string = true, .refcounted = true }),
            table = @bitCast(SQObjectType{ .table = true, .refcounted = true, .delegable = true }),
            array = @bitCast(SQObjectType{ .array = true, .refcounted = true }),
            userdata = @bitCast(SQObjectType{ .userdata = true, .refcounted = true, .delegable = true }),
            closure = @bitCast(SQObjectType{ .closure = true, .refcounted = true }),
            native_closure = @bitCast(SQObjectType{ .native_closure = true, .refcounted = true }),
            asset = @bitCast(SQObjectType{ .asset = true, .refcounted = true }),
            thread = @bitCast(SQObjectType{ .thread = true, .refcounted = true }),
            funcproto = @bitCast(SQObjectType{ .function_proto = true, .refcounted = true }),
            class = @bitCast(SQObjectType{ .class = true, .refcounted = true }),
            class_instance = @bitCast(SQObjectType{ .class_instance = true, .refcounted = true, .delegable = true }),
            weakref = @bitCast(SQObjectType{ .weakref = true, .refcounted = true }),
            struct_def = @bitCast(SQObjectType{ .struct_def = true, .refcounted = true }),
            struct_instance = @bitCast(SQObjectType{ .struct_instance = true, .refcounted = true }),
            entity_instance = @bitCast(SQObjectType{ .entity_instance = true, .refcounted = true, .delegable = true }),
            function_proto_unimplemented = @bitCast(SQObjectType{ .function_proto_unimplemented = true, .refcounted = true }),

            _, // non-exhaustive until I figure out all object types

            pub fn properties(self: OT) SQObjectType {
                return @bitCast(@intFromEnum(self));
            }

            test {
                try std.testing.expect(0x1000001 == @intFromEnum(SQObjectType.OT.null));
                try std.testing.expect(0x8200000 == @intFromEnum(SQObjectType.OT.struct_instance));
                try std.testing.expect(0xa000020 == @intFromEnum(SQObjectType.OT.table));
                try std.testing.expect(0xa400000 == @intFromEnum(SQObjectType.OT.entity_instance));
                try std.testing.expect(0x8080000 == @intFromEnum(SQObjectType.OT.function_proto_unimplemented));

                try std.testing.expect(SQObjectType.OT.struct_instance.properties() == SQObjectType{ .struct_instance = true, .refcounted = true });
            }
        };
    };

    test "SQObject size" {
        try std.testing.expect(@sizeOf(SQObject) == 0x10);
    }

    test "SQObject layout" {
        const o: SQObject = .{ .type = .vector, .val = .{ .vec = .{ .x = 1, .y = 2, .z = 3 } } };
        try std.testing.expect(o.val.vec.y == 2);
        try std.testing.expect(@as(sq.SQFloat, @bitCast(o.val.integer.value)) == 2);
    }
};

const std = @import("std");
const sq = @import("../../squirrel.zig");
const Vector3 = @import("../../math/vector.zig").Vector3;
const abi = @import("../../abi.zig");
