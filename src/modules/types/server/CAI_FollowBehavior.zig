pub const CAI_FollowBehavior = extern struct {
    vtable: *anyopaque,
    CAI_BehaviorBase: abi.Inherit(server.CAI_BehaviorBase),

    m_hFollowTarget: valve.EHANDLE, // +0x50 size: 0x4 (0x1 * 0x4) type 13
    m_FollowNavGoal: server.AI_FollowNavInfo_t, // +0x54 size: 0x28 (0x1 * 0x28) type 10
    m_flTimeUpdatedFollowPosition: valve.time, // +0x7c size: 0x4 (0x1 * 0x4) type 16
    m_flTimeFollowTargetVisible: valve.time, // +0x80 size: 0x4 (0x1 * 0x4) type 16
    m_TargetMonitor: server.CAI_MoveMonitor, // +0x84 size: 0x18 (0x1 * 0x18) type 10
    m_bTargetUnreachable: bool, // +0x9c size: 0x1 (0x1 * 0x1) type 6
    m_bOffsetPosNotValid: bool, // +0x9d size: 0x1 (0x1 * 0x1) type 6
    m_bNavBlockedSkipFollowBehavior: bool, // +0x9e size: 0x1 (0x1 * 0x1) type 6
    gap_9f: [1]abi.undefined,
    m_vFollowMoveAnchor: m.Vector3, // +0xa0 size: 0xc (0x1 * 0xc) type 15
    m_successfulFollowTargetMonitorSerialNumber: i32, // +0xac size: 0x4 (0x1 * 0x4) type 5
    m_successfulFollowMonitorMyPosition: server.CAI_MoveMonitor, // +0xb0 size: 0x18 (0x1 * 0x18) type 10
    m_flOriginalEnemyDiscardTime: f32, // +0xc8 size: 0x4 (0x1 * 0x4) type 1
    m_retryCoverTime: f32, // +0xcc size: 0x4 (0x1 * 0x4) type 1
    m_FollowDelay: server.CRandStopwatch, // +0xd0 size: 0x10 (0x1 * 0x10) type 10
    m_RepathOnFollowTimer: server.CSimpleSimTimer, // +0xe0 size: 0x4 (0x1 * 0x4) type 10
    m_CurrentFollowActivity: [4]abi.undefined, // +0xe4 size: 0x4 (0x1 * 0x4) type 11
    m_TimeBlockUseWaitPoint: server.CRandSimTimer, // +0xe8 size: 0xc (0x1 * 0xc) type 10
    m_TimeCheckForWaitPoint: server.CSimTimer, // +0xf4 size: 0x8 (0x1 * 0x8) type 10
    gap_fc: [4]abi.undefined,
    m_pInterruptWaitPoint: *server.CBaseEntity, // +0x100 size: 0x8 (0x1 * 0x8) type 12
    m_TimeBeforeSpreadFacing: server.CRandSimTimer, // +0x108 size: 0xc (0x1 * 0xc) type 10
    m_TimeNextSpreadFacing: server.CRandSimTimer, // +0x114 size: 0xc (0x1 * 0xc) type 10
    m_hFollowManagerInfo: [16]abi.undefined, // +0x120 size: 0x10 (0x1 * 0x10) type 10
    m_followParams: server.AI_FollowParams_t, // +0x130 size: 0x14 (0x1 * 0x14) type 10

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x148);
        try std.testing.expect(@offsetOf(@This(), "m_hFollowTarget") == 0x50);
        try std.testing.expect(@offsetOf(@This(), "m_FollowNavGoal") == 0x54);
        try std.testing.expect(@offsetOf(@This(), "m_flTimeUpdatedFollowPosition") == 0x7c);
        try std.testing.expect(@offsetOf(@This(), "m_flTimeFollowTargetVisible") == 0x80);
        try std.testing.expect(@offsetOf(@This(), "m_TargetMonitor") == 0x84);
        try std.testing.expect(@offsetOf(@This(), "m_bTargetUnreachable") == 0x9c);
        try std.testing.expect(@offsetOf(@This(), "m_bOffsetPosNotValid") == 0x9d);
        try std.testing.expect(@offsetOf(@This(), "m_bNavBlockedSkipFollowBehavior") == 0x9e);
        try std.testing.expect(@offsetOf(@This(), "m_vFollowMoveAnchor") == 0xa0);
        try std.testing.expect(@offsetOf(@This(), "m_successfulFollowTargetMonitorSerialNumber") == 0xac);
        try std.testing.expect(@offsetOf(@This(), "m_successfulFollowMonitorMyPosition") == 0xb0);
        try std.testing.expect(@offsetOf(@This(), "m_flOriginalEnemyDiscardTime") == 0xc8);
        try std.testing.expect(@offsetOf(@This(), "m_retryCoverTime") == 0xcc);
        try std.testing.expect(@offsetOf(@This(), "m_FollowDelay") == 0xd0);
        try std.testing.expect(@offsetOf(@This(), "m_RepathOnFollowTimer") == 0xe0);
        try std.testing.expect(@offsetOf(@This(), "m_CurrentFollowActivity") == 0xe4);
        try std.testing.expect(@offsetOf(@This(), "m_TimeBlockUseWaitPoint") == 0xe8);
        try std.testing.expect(@offsetOf(@This(), "m_TimeCheckForWaitPoint") == 0xf4);
        try std.testing.expect(@offsetOf(@This(), "m_pInterruptWaitPoint") == 0x100);
        try std.testing.expect(@offsetOf(@This(), "m_TimeBeforeSpreadFacing") == 0x108);
        try std.testing.expect(@offsetOf(@This(), "m_TimeNextSpreadFacing") == 0x114);
        try std.testing.expect(@offsetOf(@This(), "m_hFollowManagerInfo") == 0x120);
        try std.testing.expect(@offsetOf(@This(), "m_followParams") == 0x130);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
