pub const SQFunctionProto = opaque {
    pub const Head = extern struct {
        vtable: *anyopaque,
        SQCollectable: abi.Inherit(sq.SQCollectable),

        unknown_30: *anyopaque,
        _source_name: sq.SQObject,
        _name: sq.SQObject,
        gap_58: [8]u8,
        unknown_60: sq.SQObject,
        gap_70: [4]u8,
        unknown_74: sq.SQInteger,
        gap_78: [4]u8,
        unknown_7c: sq.SQInteger,
        unknown_80: *anyopaque,
        unknown_88: sq.SQInteger,
        unknown_90: [*]sq.SQObject,
        unknown_98: sq.SQInteger,
        unknown_a0: [*]sq.SQObject,
        unknown_a8: sq.SQInteger,
        unknown_b0: [*]sq.SQObject,
        unknown_b8: sq.SQInteger,
        unknown_c0: [*]sq.SQObject,
        unknown_c8: sq.SQInteger,
        unknown_d0: [*]sq.SQObject,
        unknown_d8: sq.SQInteger,
        unknown_e0: [*]u8, // undefined
        unknown_e8: sq.SQInteger,
        unknown_f0: [*]sq.SQObject,
        unknown_f8: sq.SQInteger,

        test {
            try std.testing.expect(@offsetOf(@This(), "unknown_60") == 0x60);
            try std.testing.expect(@offsetOf(@This(), "unknown_74") == 0x74);
            try std.testing.expect(@offsetOf(@This(), "unknown_7c") == 0x7c);
            try std.testing.expect(@offsetOf(@This(), "unknown_80") == 0x80);
            try std.testing.expect(@offsetOf(@This(), "unknown_88") == 0x88);
            try std.testing.expect(@offsetOf(@This(), "unknown_90") == 0x90);
            try std.testing.expect(@offsetOf(@This(), "unknown_98") == 0x98);
            try std.testing.expect(@offsetOf(@This(), "unknown_a0") == 0xa0);
            try std.testing.expect(@offsetOf(@This(), "unknown_a8") == 0xa8);
            try std.testing.expect(@offsetOf(@This(), "unknown_b0") == 0xb0);
            try std.testing.expect(@offsetOf(@This(), "unknown_b8") == 0xb8);
            try std.testing.expect(@offsetOf(@This(), "unknown_c0") == 0xc0);
            try std.testing.expect(@offsetOf(@This(), "unknown_d0") == 0xd0);
            try std.testing.expect(@offsetOf(@This(), "unknown_d8") == 0xd8);
            try std.testing.expect(@offsetOf(@This(), "unknown_e0") == 0xe0);
            try std.testing.expect(@offsetOf(@This(), "unknown_e8") == 0xe8);
            try std.testing.expect(@offsetOf(@This(), "unknown_f0") == 0xf0);
            try std.testing.expect(@offsetOf(@This(), "unknown_f8") == 0xf8);
        }
    };

    pub fn head(fp: *SQFunctionProto) *Head {
        return @ptrCast(@alignCast(fp));
    }
};

const sq = @import("../../squirrel.zig");
const std = @import("std");
const abi = @import("../../abi.zig");
