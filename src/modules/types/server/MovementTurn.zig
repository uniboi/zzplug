pub const MovementTurn = extern struct {
    turnAct: i32, // +0x0 size: 0x4 (0x1 * 0x4) type 5
    sequence: i32, // +0x4 size: 0x4 (0x1 * 0x4) type 5
    forwardDistance: f32, // +0x8 size: 0x4 (0x1 * 0x4) type 1
    perpendicularDistance: f32, // +0xc size: 0x4 (0x1 * 0x4) type 1
    forwardMoveAdjust: f32, // +0x10 size: 0x4 (0x1 * 0x4) type 1

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x14);
        try std.testing.expect(@offsetOf(@This(), "turnAct") == 0x0);
        try std.testing.expect(@offsetOf(@This(), "sequence") == 0x4);
        try std.testing.expect(@offsetOf(@This(), "forwardDistance") == 0x8);
        try std.testing.expect(@offsetOf(@This(), "perpendicularDistance") == 0xc);
        try std.testing.expect(@offsetOf(@This(), "forwardMoveAdjust") == 0x10);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
