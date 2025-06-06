pub const AI_FollowParams_t = extern struct {
    formation: i32, // +0x0 size: 0x4 (0x1 * 0x4) type 5
    targetMoveTolerance: f32, // +0x4 size: 0x4 (0x1 * 0x4) type 1
    goalTolerance: f32, // +0x8 size: 0x4 (0x1 * 0x4) type 1
    goalCombatTolerance: f32, // +0xc size: 0x4 (0x1 * 0x4) type 1
    bNormalMemoryDiscard: bool, // +0x10 size: 0x1 (0x1 * 0x1) type 6

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x14);
        try std.testing.expect(@offsetOf(@This(), "formation") == 0x0);
        try std.testing.expect(@offsetOf(@This(), "targetMoveTolerance") == 0x4);
        try std.testing.expect(@offsetOf(@This(), "goalTolerance") == 0x8);
        try std.testing.expect(@offsetOf(@This(), "goalCombatTolerance") == 0xc);
        try std.testing.expect(@offsetOf(@This(), "bNormalMemoryDiscard") == 0x10);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
