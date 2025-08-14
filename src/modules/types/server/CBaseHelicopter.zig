pub const CBaseHelicopter = extern struct {
    vtable: *anyopaque,
    CBaseHelicopterBehaviorHost: abi.cpp.Inherit(server.CBaseHelicopterBehaviorHost),

    m_flForce: f32, // +0x2198 size: 0x4 (0x1 * 0x4) type 1
    m_vecAngAcceleration: m.Vector3, // +0x219c size: 0xc (0x1 * 0xc) type 3
    m_fMaxAngAcceleration: f32, // +0x21a8 size: 0x4 (0x1 * 0x4) type 1
    m_vMaxAngVelocity: m.Vector3, // +0x21ac size: 0xc (0x1 * 0xc) type 3
    m_vecDesiredFaceDir: m.Vector3, // +0x21b8 size: 0xc (0x1 * 0xc) type 3
    m_distToNext: f32, // +0x21c4 size: 0x4 (0x1 * 0x4) type 1
    m_flLastSeen: valve.time, // +0x21c8 size: 0x4 (0x1 * 0x4) type 16
    m_flPrevSeen: valve.time, // +0x21cc size: 0x4 (0x1 * 0x4) type 16
    m_vecTargetPosition: m.Vector3, // +0x21d0 size: 0xc (0x1 * 0xc) type 15
    m_flGoalSpeed: f32, // +0x21dc size: 0x4 (0x1 * 0x4) type 1
    m_flRandomOffsetTime: valve.time, // +0x21e0 size: 0x4 (0x1 * 0x4) type 16
    m_vecRandomOffset: m.Vector3, // +0x21e4 size: 0xc (0x1 * 0xc) type 3
    m_facingEntity: valve.EHANDLE, // +0x21f0 size: 0x4 (0x1 * 0x4) type 13
    gap_21f4: [4]abi.undefined,
    m_AssaultBehavior: server.CAI_AssaultBehavior, // +0x21f8 size: 0xe8 (0x1 * 0xe8) type 10
    m_FollowBehavior: server.CAI_FollowBehavior, // +0x22e0 size: 0x148 (0x1 * 0x148) type 10
    m_SearchBehavior: server.CAI_SearchBehavior, // +0x2428 size: 0x50 (0x1 * 0x50) type 10
    m_PatrolBehavior: server.CAI_PatrolBehavior, // +0x2478 size: 0x50 (0x1 * 0x50) type 10
    m_cullBoxMins: m.Vector3, // +0x24c8 size: 0xc (0x1 * 0xc) type 3
    m_cullBoxMaxs: m.Vector3, // +0x24d4 size: 0xc (0x1 * 0xc) type 3

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x24e0);
        try std.testing.expect(@offsetOf(@This(), "m_flForce") == 0x2198);
        try std.testing.expect(@offsetOf(@This(), "m_vecAngAcceleration") == 0x219c);
        try std.testing.expect(@offsetOf(@This(), "m_fMaxAngAcceleration") == 0x21a8);
        try std.testing.expect(@offsetOf(@This(), "m_vMaxAngVelocity") == 0x21ac);
        try std.testing.expect(@offsetOf(@This(), "m_vecDesiredFaceDir") == 0x21b8);
        try std.testing.expect(@offsetOf(@This(), "m_distToNext") == 0x21c4);
        try std.testing.expect(@offsetOf(@This(), "m_flLastSeen") == 0x21c8);
        try std.testing.expect(@offsetOf(@This(), "m_flPrevSeen") == 0x21cc);
        try std.testing.expect(@offsetOf(@This(), "m_vecTargetPosition") == 0x21d0);
        try std.testing.expect(@offsetOf(@This(), "m_flGoalSpeed") == 0x21dc);
        try std.testing.expect(@offsetOf(@This(), "m_flRandomOffsetTime") == 0x21e0);
        try std.testing.expect(@offsetOf(@This(), "m_vecRandomOffset") == 0x21e4);
        try std.testing.expect(@offsetOf(@This(), "m_facingEntity") == 0x21f0);
        try std.testing.expect(@offsetOf(@This(), "m_AssaultBehavior") == 0x21f8);
        try std.testing.expect(@offsetOf(@This(), "m_FollowBehavior") == 0x22e0);
        try std.testing.expect(@offsetOf(@This(), "m_SearchBehavior") == 0x2428);
        try std.testing.expect(@offsetOf(@This(), "m_PatrolBehavior") == 0x2478);
        try std.testing.expect(@offsetOf(@This(), "m_cullBoxMins") == 0x24c8);
        try std.testing.expect(@offsetOf(@This(), "m_cullBoxMaxs") == 0x24d4);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
