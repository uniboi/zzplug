pub const CAI_MoveAndShootOverlay = extern struct {
    vtable: *anyopaque,
    CAI_Component: abi.cpp.Inherit(server.CAI_Component),

    m_forcedMovement: i32, // +0x10 size: 0x4 (0x1 * 0x4) type 5
    m_forcedMovementExpireTime: valve.time, // +0x14 size: 0x4 (0x1 * 0x4) type 16
    m_isMovingAndShooting: bool, // +0x18 size: 0x1 (0x1 * 0x1) type 6
    m_disableMoveAndShoot: bool, // +0x19 size: 0x1 (0x1 * 0x1) type 6

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x20);
        try std.testing.expect(@offsetOf(@This(), "m_forcedMovement") == 0x10);
        try std.testing.expect(@offsetOf(@This(), "m_forcedMovementExpireTime") == 0x14);
        try std.testing.expect(@offsetOf(@This(), "m_isMovingAndShooting") == 0x18);
        try std.testing.expect(@offsetOf(@This(), "m_disableMoveAndShoot") == 0x19);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
