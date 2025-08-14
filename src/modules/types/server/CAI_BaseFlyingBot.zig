pub const CAI_BaseFlyingBot = extern struct {
    vtable: *anyopaque,
    CAI_BaseActorBase: abi.cpp.Inherit(server.CAI_BaseActorBase),

    m_vCurrentVelocity: m.Vector3, // +0x20b8 size: 0xc (0x1 * 0xc) type 3
    m_vCurrentAngularVelocity: m.Vector3, // +0x20c4 size: 0xc (0x1 * 0xc) type 3
    m_vCurrentBanking: m.Vector3, // +0x20d0 size: 0xc (0x1 * 0xc) type 3
    m_vNoiseMod: m.Vector3, // +0x20dc size: 0xc (0x1 * 0xc) type 3
    m_fHeadYaw: f32, // +0x20e8 size: 0x4 (0x1 * 0x4) type 1
    m_fNextYawChangeSoundTime: f32, // +0x20ec size: 0x4 (0x1 * 0x4) type 1
    m_vLastPatrolDir: m.Vector3, // +0x20f0 size: 0xc (0x1 * 0xc) type 3
    m_vecDesiredVel: m.Vector3, // +0x20fc size: 0xc (0x1 * 0xc) type 3
    m_flAccelTime: valve.time, // +0x2108 size: 0x4 (0x1 * 0x4) type 16
    m_KilledInfo: server.CTakeDamageInfo, // +0x210c size: 0x78 (0x1 * 0x78) type 10
    gap_2184: [4]abi.undefined,
    m_AssaultBehavior: server.CAI_AssaultBehavior, // +0x2188 size: 0xe8 (0x1 * 0xe8) type 10
    m_FollowBehavior: server.CAI_FollowBehavior, // +0x2270 size: 0x148 (0x1 * 0x148) type 10
    m_SearchBehavior: server.CAI_SearchBehavior, // +0x23b8 size: 0x50 (0x1 * 0x50) type 10
    m_PatrolBehavior: server.CAI_PatrolBehavior, // +0x2408 size: 0x50 (0x1 * 0x50) type 10

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x2458);
        try std.testing.expect(@offsetOf(@This(), "m_vCurrentVelocity") == 0x20b8);
        try std.testing.expect(@offsetOf(@This(), "m_vCurrentAngularVelocity") == 0x20c4);
        try std.testing.expect(@offsetOf(@This(), "m_vCurrentBanking") == 0x20d0);
        try std.testing.expect(@offsetOf(@This(), "m_vNoiseMod") == 0x20dc);
        try std.testing.expect(@offsetOf(@This(), "m_fHeadYaw") == 0x20e8);
        try std.testing.expect(@offsetOf(@This(), "m_fNextYawChangeSoundTime") == 0x20ec);
        try std.testing.expect(@offsetOf(@This(), "m_vLastPatrolDir") == 0x20f0);
        try std.testing.expect(@offsetOf(@This(), "m_vecDesiredVel") == 0x20fc);
        try std.testing.expect(@offsetOf(@This(), "m_flAccelTime") == 0x2108);
        try std.testing.expect(@offsetOf(@This(), "m_KilledInfo") == 0x210c);
        try std.testing.expect(@offsetOf(@This(), "m_AssaultBehavior") == 0x2188);
        try std.testing.expect(@offsetOf(@This(), "m_FollowBehavior") == 0x2270);
        try std.testing.expect(@offsetOf(@This(), "m_SearchBehavior") == 0x23b8);
        try std.testing.expect(@offsetOf(@This(), "m_PatrolBehavior") == 0x2408);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
