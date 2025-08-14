pub const CSnapshotCanary = extern struct {
    vtable: *anyopaque,
    CBaseEntity: abi.cpp.Inherit(server.CBaseEntity),

    tick: i32, // +0x9e0 size: 0x4 (0x1 * 0x4) type 5
    index: i32, // +0x9e4 size: 0x4 (0x1 * 0x4) type 5
    a: i32, // +0x9e8 size: 0x4 (0x1 * 0x4) type 5
    b: i32, // +0x9ec size: 0x4 (0x1 * 0x4) type 5
    c: i32, // +0x9f0 size: 0x4 (0x1 * 0x4) type 5
    d: i32, // +0x9f4 size: 0x4 (0x1 * 0x4) type 5
    e: i32, // +0x9f8 size: 0x4 (0x1 * 0x4) type 5
    f: i32, // +0x9fc size: 0x4 (0x1 * 0x4) type 5
    g: i32, // +0xa00 size: 0x4 (0x1 * 0x4) type 5
    h: i32, // +0xa04 size: 0x4 (0x1 * 0x4) type 5
    i: i32, // +0xa08 size: 0x4 (0x1 * 0x4) type 5
    j: i32, // +0xa0c size: 0x4 (0x1 * 0x4) type 5
    k: i32, // +0xa10 size: 0x4 (0x1 * 0x4) type 5
    l: i32, // +0xa14 size: 0x4 (0x1 * 0x4) type 5
    m: i32, // +0xa18 size: 0x4 (0x1 * 0x4) type 5
    n: i32, // +0xa1c size: 0x4 (0x1 * 0x4) type 5
    o: i32, // +0xa20 size: 0x4 (0x1 * 0x4) type 5
    p: i32, // +0xa24 size: 0x4 (0x1 * 0x4) type 5
    q: i32, // +0xa28 size: 0x4 (0x1 * 0x4) type 5
    r: i32, // +0xa2c size: 0x4 (0x1 * 0x4) type 5
    s: i32, // +0xa30 size: 0x4 (0x1 * 0x4) type 5
    t: i32, // +0xa34 size: 0x4 (0x1 * 0x4) type 5
    u: i32, // +0xa38 size: 0x4 (0x1 * 0x4) type 5
    v: i32, // +0xa3c size: 0x4 (0x1 * 0x4) type 5
    w: i32, // +0xa40 size: 0x4 (0x1 * 0x4) type 5
    x: i32, // +0xa44 size: 0x4 (0x1 * 0x4) type 5
    y: i32, // +0xa48 size: 0x4 (0x1 * 0x4) type 5
    z: i32, // +0xa4c size: 0x4 (0x1 * 0x4) type 5

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xa50);
        try std.testing.expect(@offsetOf(@This(), "tick") == 0x9e0);
        try std.testing.expect(@offsetOf(@This(), "index") == 0x9e4);
        try std.testing.expect(@offsetOf(@This(), "a") == 0x9e8);
        try std.testing.expect(@offsetOf(@This(), "b") == 0x9ec);
        try std.testing.expect(@offsetOf(@This(), "c") == 0x9f0);
        try std.testing.expect(@offsetOf(@This(), "d") == 0x9f4);
        try std.testing.expect(@offsetOf(@This(), "e") == 0x9f8);
        try std.testing.expect(@offsetOf(@This(), "f") == 0x9fc);
        try std.testing.expect(@offsetOf(@This(), "g") == 0xa00);
        try std.testing.expect(@offsetOf(@This(), "h") == 0xa04);
        try std.testing.expect(@offsetOf(@This(), "i") == 0xa08);
        try std.testing.expect(@offsetOf(@This(), "j") == 0xa0c);
        try std.testing.expect(@offsetOf(@This(), "k") == 0xa10);
        try std.testing.expect(@offsetOf(@This(), "l") == 0xa14);
        try std.testing.expect(@offsetOf(@This(), "m") == 0xa18);
        try std.testing.expect(@offsetOf(@This(), "n") == 0xa1c);
        try std.testing.expect(@offsetOf(@This(), "o") == 0xa20);
        try std.testing.expect(@offsetOf(@This(), "p") == 0xa24);
        try std.testing.expect(@offsetOf(@This(), "q") == 0xa28);
        try std.testing.expect(@offsetOf(@This(), "r") == 0xa2c);
        try std.testing.expect(@offsetOf(@This(), "s") == 0xa30);
        try std.testing.expect(@offsetOf(@This(), "t") == 0xa34);
        try std.testing.expect(@offsetOf(@This(), "u") == 0xa38);
        try std.testing.expect(@offsetOf(@This(), "v") == 0xa3c);
        try std.testing.expect(@offsetOf(@This(), "w") == 0xa40);
        try std.testing.expect(@offsetOf(@This(), "x") == 0xa44);
        try std.testing.expect(@offsetOf(@This(), "y") == 0xa48);
        try std.testing.expect(@offsetOf(@This(), "z") == 0xa4c);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
