pub const SQArray = extern struct {
    vtable: *anyopaque,
    SQCollectable: abi.Inherit(sq.SQCollectable),
    values: sq.Vector(sq.SQObject),
    print: *const fn (*SQArray, buf: [*]u8, buf_size: u32, unk_1: i64, unk_2: i32) callconv(.c) i64,

    test {
        abi.assertSize(@This(), 0x40);
    }
};

const sq = @import("../squirrel.zig");
const abi = @import("../abi.zig");
const std = @import("std");
