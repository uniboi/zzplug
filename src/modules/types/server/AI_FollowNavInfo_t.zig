pub const AI_FollowNavInfo_t = extern struct {
    flags: i32, // +0x0 size: 0x4 (0x1 * 0x4) type 5
    position: m.Vector3, // +0x4 size: 0xc (0x1 * 0xc) type 15
    facingAngle: f32, // +0x10 size: 0x4 (0x1 * 0x4) type 1
    Zrange: f32, // +0x14 size: 0x4 (0x1 * 0x4) type 1
    toleranceMargin: f32, // +0x18 size: 0x4 (0x1 * 0x4) type 1
    followPointTolerance: f32, // +0x1c size: 0x4 (0x1 * 0x4) type 1
    repathOnRouteTolerance: f32, // +0x20 size: 0x4 (0x1 * 0x4) type 1
    walkTolerance: f32, // +0x24 size: 0x4 (0x1 * 0x4) type 1

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x28);
        try std.testing.expect(@offsetOf(@This(), "flags") == 0x0);
        try std.testing.expect(@offsetOf(@This(), "position") == 0x4);
        try std.testing.expect(@offsetOf(@This(), "facingAngle") == 0x10);
        try std.testing.expect(@offsetOf(@This(), "Zrange") == 0x14);
        try std.testing.expect(@offsetOf(@This(), "toleranceMargin") == 0x18);
        try std.testing.expect(@offsetOf(@This(), "followPointTolerance") == 0x1c);
        try std.testing.expect(@offsetOf(@This(), "repathOnRouteTolerance") == 0x20);
        try std.testing.expect(@offsetOf(@This(), "walkTolerance") == 0x24);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");