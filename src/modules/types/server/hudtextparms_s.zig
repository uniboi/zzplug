pub const hudtextparms_s = extern struct {
    x: f32, // +0x0 size: 0x4 (0x1 * 0x4) type 1
    y: f32, // +0x4 size: 0x4 (0x1 * 0x4) type 1
    effect: i32, // +0x8 size: 0x4 (0x1 * 0x4) type 5
    r1: u8, // +0xc size: 0x1 (0x1 * 0x1) type 8
    g1: u8, // +0xd size: 0x1 (0x1 * 0x1) type 8
    b1: u8, // +0xe size: 0x1 (0x1 * 0x1) type 8
    a1: u8, // +0xf size: 0x1 (0x1 * 0x1) type 8
    r2: u8, // +0x10 size: 0x1 (0x1 * 0x1) type 8
    g2: u8, // +0x11 size: 0x1 (0x1 * 0x1) type 8
    b2: u8, // +0x12 size: 0x1 (0x1 * 0x1) type 8
    a2: u8, // +0x13 size: 0x1 (0x1 * 0x1) type 8
    fadeinTime: f32, // +0x14 size: 0x4 (0x1 * 0x4) type 1
    fadeoutTime: f32, // +0x18 size: 0x4 (0x1 * 0x4) type 1
    holdTime: f32, // +0x1c size: 0x4 (0x1 * 0x4) type 1
    fxTime: f32, // +0x20 size: 0x4 (0x1 * 0x4) type 1
    channel: i32, // +0x24 size: 0x4 (0x1 * 0x4) type 5

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x28);
        try std.testing.expect(@offsetOf(@This(), "x") == 0x0);
        try std.testing.expect(@offsetOf(@This(), "y") == 0x4);
        try std.testing.expect(@offsetOf(@This(), "effect") == 0x8);
        try std.testing.expect(@offsetOf(@This(), "r1") == 0xc);
        try std.testing.expect(@offsetOf(@This(), "g1") == 0xd);
        try std.testing.expect(@offsetOf(@This(), "b1") == 0xe);
        try std.testing.expect(@offsetOf(@This(), "a1") == 0xf);
        try std.testing.expect(@offsetOf(@This(), "r2") == 0x10);
        try std.testing.expect(@offsetOf(@This(), "g2") == 0x11);
        try std.testing.expect(@offsetOf(@This(), "b2") == 0x12);
        try std.testing.expect(@offsetOf(@This(), "a2") == 0x13);
        try std.testing.expect(@offsetOf(@This(), "fadeinTime") == 0x14);
        try std.testing.expect(@offsetOf(@This(), "fadeoutTime") == 0x18);
        try std.testing.expect(@offsetOf(@This(), "holdTime") == 0x1c);
        try std.testing.expect(@offsetOf(@This(), "fxTime") == 0x20);
        try std.testing.expect(@offsetOf(@This(), "channel") == 0x24);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
