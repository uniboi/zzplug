pub const CAI_Combatant = extern struct {
    vtable: *anyopaque,
    CAI_BaseActor: abi.Inherit(server.CAI_BaseActor),

    m_flNextPainSoundTime: valve.time, // +0x21f0 size: 0x4 (0x1 * 0x4) type 16
    m_flNextAlertSoundTime: valve.time, // +0x21f4 size: 0x4 (0x1 * 0x4) type 16
    m_flNextLostSoundTime: valve.time, // +0x21f8 size: 0x4 (0x1 * 0x4) type 16
    m_flAlertPatrolTime: valve.time, // +0x21fc size: 0x4 (0x1 * 0x4) type 16
    m_flNextPieOffTime: valve.time, // +0x2200 size: 0x4 (0x1 * 0x4) type 16
    gap_2204: [4]abi.undefined,
    m_AssaultBehavior: server.CAI_AssaultBehavior, // +0x2208 size: 0xe8 (0x1 * 0xe8) type 10
    m_FollowBehavior: server.CAI_FollowBehavior, // +0x22f0 size: 0x148 (0x1 * 0x148) type 10
    m_SearchBehavior: server.CAI_SearchBehavior, // +0x2438 size: 0x50 (0x1 * 0x50) type 10
    m_PatrolBehavior: server.CAI_PatrolBehavior, // +0x2488 size: 0x50 (0x1 * 0x50) type 10
    m_snipingState: i32, // +0x24d8 size: 0x4 (0x1 * 0x4) type 5
    m_snipingRetry: i32, // +0x24dc size: 0x4 (0x1 * 0x4) type 5
    m_sniperShots: i32, // +0x24e0 size: 0x4 (0x1 * 0x4) type 5
    m_maxSnipingRetry: i32, // +0x24e4 size: 0x4 (0x1 * 0x4) type 5
    m_maxSniperShots: i32, // +0x24e8 size: 0x4 (0x1 * 0x4) type 5
    m_vecAltFireTarget: m.Vector3, // +0x24ec size: 0xc (0x1 * 0xc) type 3
    m_iTacticalVariant: i32, // +0x24f8 size: 0x4 (0x1 * 0x4) type 5
    m_iPathfindingVariant: i32, // +0x24fc size: 0x4 (0x1 * 0x4) type 5

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x2500);
        try std.testing.expect(@offsetOf(@This(), "m_flNextPainSoundTime") == 0x21f0);
        try std.testing.expect(@offsetOf(@This(), "m_flNextAlertSoundTime") == 0x21f4);
        try std.testing.expect(@offsetOf(@This(), "m_flNextLostSoundTime") == 0x21f8);
        try std.testing.expect(@offsetOf(@This(), "m_flAlertPatrolTime") == 0x21fc);
        try std.testing.expect(@offsetOf(@This(), "m_flNextPieOffTime") == 0x2200);
        try std.testing.expect(@offsetOf(@This(), "m_AssaultBehavior") == 0x2208);
        try std.testing.expect(@offsetOf(@This(), "m_FollowBehavior") == 0x22f0);
        try std.testing.expect(@offsetOf(@This(), "m_SearchBehavior") == 0x2438);
        try std.testing.expect(@offsetOf(@This(), "m_PatrolBehavior") == 0x2488);
        try std.testing.expect(@offsetOf(@This(), "m_snipingState") == 0x24d8);
        try std.testing.expect(@offsetOf(@This(), "m_snipingRetry") == 0x24dc);
        try std.testing.expect(@offsetOf(@This(), "m_sniperShots") == 0x24e0);
        try std.testing.expect(@offsetOf(@This(), "m_maxSnipingRetry") == 0x24e4);
        try std.testing.expect(@offsetOf(@This(), "m_maxSniperShots") == 0x24e8);
        try std.testing.expect(@offsetOf(@This(), "m_vecAltFireTarget") == 0x24ec);
        try std.testing.expect(@offsetOf(@This(), "m_iTacticalVariant") == 0x24f8);
        try std.testing.expect(@offsetOf(@This(), "m_iPathfindingVariant") == 0x24fc);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
