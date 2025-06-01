pub const dtStraightPathResult = extern struct {
    pathCount: i32, // +0x0 size: 0x4 (0x1 * 0x4) type 5
    path: [5]m.Vector3, // +0x4 size: 0x3c (0x5 * 0xc) type 3
    polys: [5]i32, // +0x40 size: 0x14 (0x5 * 0x4) type 5
    jumps: [5]u8, // +0x54 size: 0x5 (0x5 * 0x1) type 8
    flags: [5]u8, // +0x59 size: 0x5 (0x5 * 0x1) type 8
    pathEndIsGoal: bool, // +0x5e size: 0x1 (0x1 * 0x1) type 6

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x60);
        try std.testing.expect(@offsetOf(@This(), "pathCount") == 0x0);
        try std.testing.expect(@offsetOf(@This(), "path") == 0x4);
        try std.testing.expect(@offsetOf(@This(), "polys") == 0x40);
        try std.testing.expect(@offsetOf(@This(), "jumps") == 0x54);
        try std.testing.expect(@offsetOf(@This(), "flags") == 0x59);
        try std.testing.expect(@offsetOf(@This(), "pathEndIsGoal") == 0x5e);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");