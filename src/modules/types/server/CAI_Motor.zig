pub const CAI_Motor = extern struct {
    vtable: *anyopaque,
    CAI_Component: abi.cpp.Inherit(server.CAI_Component),

    CAI_ProxyMovementSink: [16]abi.undefined, // +0x10 size: 0x10 (0x0 * 0x10) type 0
    m_steerDirection: m.Vector3, // +0x20 size: 0xc (0x1 * 0xc) type 3
    m_straightPathCached: server.dtStraightPathResult, // +0x2c size: 0x60 (0x1 * 0x60) type 10
    m_pushedVel: m.Vector3, // +0x8c size: 0xc (0x1 * 0xc) type 3
    m_flMoveInterval: f32, // +0x98 size: 0x4 (0x1 * 0x4) type 1
    m_IdealYaw: f32, // +0x9c size: 0x4 (0x1 * 0x4) type 1
    m_fMoveYaw: f32, // +0xa0 size: 0x4 (0x1 * 0x4) type 1
    m_vecVelocity: m.Vector3, // +0xa4 size: 0xc (0x1 * 0xc) type 3
    m_vecAngularVelocity: m.Vector3, // +0xb0 size: 0xc (0x1 * 0xc) type 3
    m_bMoving: bool, // +0xbc size: 0x1 (0x1 * 0x1) type 6
    gap_bd: [3]abi.undefined,
    m_moveSpeedScale: f32, // +0xc0 size: 0x4 (0x1 * 0x4) type 1
    m_moveSpeedScaleScript: f32, // +0xc4 size: 0x4 (0x1 * 0x4) type 1
    m_nDismountSequence: i32, // +0xc8 size: 0x4 (0x1 * 0x4) type 5
    m_vecDismount: m.Vector3, // +0xcc size: 0xc (0x1 * 0xc) type 3
    m_facingQueue: [32]abi.undefined, // +0xd8 size: 0x20 (0x1 * 0x20) type 11
    m_pMoveProbe: *server.CAI_MoveProbe, // +0xf8 size: 0x8 (0x1 * 0x8) type 10

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x100);
        try std.testing.expect(@offsetOf(@This(), "CAI_ProxyMovementSink") == 0x10);
        try std.testing.expect(@offsetOf(@This(), "m_steerDirection") == 0x20);
        try std.testing.expect(@offsetOf(@This(), "m_straightPathCached") == 0x2c);
        try std.testing.expect(@offsetOf(@This(), "m_pushedVel") == 0x8c);
        try std.testing.expect(@offsetOf(@This(), "m_flMoveInterval") == 0x98);
        try std.testing.expect(@offsetOf(@This(), "m_IdealYaw") == 0x9c);
        try std.testing.expect(@offsetOf(@This(), "m_fMoveYaw") == 0xa0);
        try std.testing.expect(@offsetOf(@This(), "m_vecVelocity") == 0xa4);
        try std.testing.expect(@offsetOf(@This(), "m_vecAngularVelocity") == 0xb0);
        try std.testing.expect(@offsetOf(@This(), "m_bMoving") == 0xbc);
        try std.testing.expect(@offsetOf(@This(), "m_moveSpeedScale") == 0xc0);
        try std.testing.expect(@offsetOf(@This(), "m_moveSpeedScaleScript") == 0xc4);
        try std.testing.expect(@offsetOf(@This(), "m_nDismountSequence") == 0xc8);
        try std.testing.expect(@offsetOf(@This(), "m_vecDismount") == 0xcc);
        try std.testing.expect(@offsetOf(@This(), "m_facingQueue") == 0xd8);
        try std.testing.expect(@offsetOf(@This(), "m_pMoveProbe") == 0xf8);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
