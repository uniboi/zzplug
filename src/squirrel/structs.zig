pub const SQStructInstance = opaque {
    pub const Head = extern struct {
        vtable: *anyopaque,
        rc: sq.SQInteger,
        weakref: ?*sq.SQWeakRef,
        _next: ?*sq.SQCollectable,
        _prev: ?*sq.SQCollectable,
        _shared_state: *sq.SQSharedState,

        size: sq.SQUnsignedInteger,
        unknown_u34: sq.SQInteger,

        test {
            try std.testing.expect(@offsetOf(Head, "size") == 0x30);
            comptime abi.assertInheritance(Head, sq.SQCollectable);
        }
    };

    const data_offset = 0x38;

    pub fn head(instance: *SQStructInstance) *Head {
        return @ptrCast(@alignCast(instance));
    }

    pub fn data(instance: *SQStructInstance) []sq.SQObject {
        const size = instance.head().size;
        return @as([*]sq.SQObject, @ptrFromInt(@intFromPtr(instance) + data_offset))[0..size];
    }

    // TODO: what does this store?
    pub fn tail(instance: *SQStructInstance) *[56]u8 {
        const size = instance.head().size;
        return @as(*[56]u8, @ptrFromInt(@intFromPtr(instance) + data_offset + (@sizeOf(sq.SQObject) * size)));
    }
};

pub const SQStructDef = extern struct {};

const sq = @import("../squirrel.zig");
const std = @import("std");
const abi = @import("../abi.zig");
