pub const CAI_Navigator = extern struct {
    vtable: *anyopaque,
    CAI_Component: abi.cpp.Inherit(server.CAI_Component),

    CAI_DefMovementSink: *anyopaque, // +0x10 size: 0x8 (0x0 * 0x8) type 0
    m_navType: i32, // +0x18 size: 0x4 (0x1 * 0x4) type 5
    m_fNavComplete: bool, // +0x1c size: 0x1 (0x1 * 0x1) type 6
    m_bLastNavFailed: bool, // +0x1d size: 0x1 (0x1 * 0x1) type 6
    gap_1e: [2]abi.undefined,
    m_pMotor: *anyopaque, // +0x20 size: 0x8 (0x1 * 0x8) type 31
    m_pMoveProbe: *anyopaque, // +0x28 size: 0x8 (0x1 * 0x8) type 31
    m_pLocalNavigator: *anyopaque, // +0x30 size: 0x8 (0x1 * 0x8) type 31
    m_pAINetwork: *anyopaque, // +0x38 size: 0x8 (0x1 * 0x8) type 31
    m_pPath: *server.CAI_Path, // +0x40 size: 0x8 (0x1 * 0x8) type 10
    m_utilityPath: [32]abi.undefined, // +0x48 size: 0x20 (0x1 * 0x20) type 0
    m_pClippedWaypoints: *anyopaque, // +0x68 size: 0x8 (0x1 * 0x8) type 31
    m_flTimeClipped: valve.time, // +0x70 size: 0x4 (0x1 * 0x4) type 16
    m_PreviousMoveActivity: i32, // +0x74 size: 0x4 (0x1 * 0x4) type 5
    m_PreviousArrivalActivity: i32, // +0x78 size: 0x4 (0x1 * 0x4) type 5
    m_moveTransitionAnim: i32, // +0x7c size: 0x4 (0x1 * 0x4) type 5
    m_bValidateActivitySpeed: bool, // +0x80 size: 0x1 (0x1 * 0x1) type 6
    m_bCalledStartMove: bool, // +0x81 size: 0x1 (0x1 * 0x1) type 6
    m_bAdjustMoveSpeedToSquad: bool, // +0x82 size: 0x1 (0x1 * 0x1) type 6
    m_bForcedSimplify: bool, // +0x83 size: 0x1 (0x1 * 0x1) type 6
    m_flNextSimplifyTime: valve.time, // +0x84 size: 0x4 (0x1 * 0x4) type 16
    m_flLastSuccessfulSimplifyTime: valve.time, // +0x88 size: 0x4 (0x1 * 0x4) type 16
    m_flTimeLastAvoidanceTriangulate: valve.time, // +0x8c size: 0x4 (0x1 * 0x4) type 16
    m_timePathRebuildMax: f32, // +0x90 size: 0x4 (0x1 * 0x4) type 1
    m_timePathRebuildDelay: f32, // +0x94 size: 0x4 (0x1 * 0x4) type 1
    m_timePathRebuildFail: valve.time, // +0x98 size: 0x4 (0x1 * 0x4) type 16
    m_timePathRebuildNext: valve.time, // +0x9c size: 0x4 (0x1 * 0x4) type 16
    m_prevPathCorner: valve.EHANDLE, // +0xa0 size: 0x4 (0x1 * 0x4) type 13
    m_nextPathCorner: valve.EHANDLE, // +0xa4 size: 0x4 (0x1 * 0x4) type 13
    m_savePathCornerOnScheduleChange: bool, // +0xa8 size: 0x1 (0x1 * 0x1) type 6
    m_pathCornerDirectionForward: bool, // +0xa9 size: 0x1 (0x1 * 0x1) type 6
    m_fRememberStaleNodes: bool, // +0xaa size: 0x1 (0x1 * 0x1) type 6
    m_bNoPathcornerPathfinds: bool, // +0xab size: 0x1 (0x1 * 0x1) type 6
    m_checkClusterDangerAtTime: f32, // +0xac size: 0x4 (0x1 * 0x4) type 1
    m_bHadPath: bool, // +0xb0 size: 0x1 (0x1 * 0x1) type 6
    m_bAnimWasMoving: bool, // +0xb1 size: 0x1 (0x1 * 0x1) type 6
    m_setConditionPathInvolvesDangerousCluster: bool, // +0xb2 size: 0x1 (0x1 * 0x1) type 6
    m_bProbeHitPhysicsObject: bool, // +0xb3 size: 0x1 (0x1 * 0x1) type 6
    m_bPathBlockedByPhysicsObject: bool, // +0xb4 size: 0x1 (0x1 * 0x1) type 6
    m_bPathBlockedByNPC: bool, // +0xb5 size: 0x1 (0x1 * 0x1) type 6
    m_bProbeHitNPC: bool, // +0xb6 size: 0x1 (0x1 * 0x1) type 6
    m_fPeerMoveWait: bool, // +0xb7 size: 0x1 (0x1 * 0x1) type 6
    m_hPeerWaitingOn: valve.EHANDLE, // +0xb8 size: 0x4 (0x1 * 0x4) type 13
    m_PeerWaitMoveTimer: [8]abi.undefined, // +0xbc size: 0x8 (0x1 * 0x8) type 10
    m_PeerWaitClearTimer: [8]abi.undefined, // +0xc4 size: 0x8 (0x1 * 0x8) type 10
    m_NextSidestepTimer: [8]abi.undefined, // +0xcc size: 0x8 (0x1 * 0x8) type 10
    m_hBigStepGroundEnt: valve.EHANDLE, // +0xd4 size: 0x4 (0x1 * 0x4) type 13
    m_hLastBlockingEnt: valve.EHANDLE, // +0xd8 size: 0x4 (0x1 * 0x4) type 13
    m_hAvoidEnt: valve.EHANDLE, // +0xdc size: 0x4 (0x1 * 0x4) type 13
    m_avoidDistSqr: f32, // +0xe0 size: 0x4 (0x1 * 0x4) type 1
    m_vPosBeginFailedSteer: m.Vector3, // +0xe4 size: 0xc (0x1 * 0xc) type 3
    m_timeBeginFailedSteer: valve.time, // +0xf0 size: 0x4 (0x1 * 0x4) type 16
    m_traverseRefYaw: f32, // +0xf4 size: 0x4 (0x1 * 0x4) type 1
    m_traverseRefPos: m.Vector3, // +0xf8 size: 0xc (0x1 * 0xc) type 3
    m_traversePlantPos: m.Vector3, // +0x104 size: 0xc (0x1 * 0xc) type 3
    m_nNavFailCounter: i32, // +0x110 size: 0x4 (0x1 * 0x4) type 5
    m_flLastNavFailTime: f32, // +0x114 size: 0x4 (0x1 * 0x4) type 1
    m_flLastPathFindTime: valve.time, // +0x118 size: 0x4 (0x1 * 0x4) type 16
    m_moveFlags: i32, // +0x11c size: 0x4 (0x1 * 0x4) type 5

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x120);
        try std.testing.expect(@offsetOf(@This(), "CAI_DefMovementSink") == 0x10);
        try std.testing.expect(@offsetOf(@This(), "m_navType") == 0x18);
        try std.testing.expect(@offsetOf(@This(), "m_fNavComplete") == 0x1c);
        try std.testing.expect(@offsetOf(@This(), "m_bLastNavFailed") == 0x1d);
        try std.testing.expect(@offsetOf(@This(), "m_pMotor") == 0x20);
        try std.testing.expect(@offsetOf(@This(), "m_pMoveProbe") == 0x28);
        try std.testing.expect(@offsetOf(@This(), "m_pLocalNavigator") == 0x30);
        try std.testing.expect(@offsetOf(@This(), "m_pAINetwork") == 0x38);
        try std.testing.expect(@offsetOf(@This(), "m_pPath") == 0x40);
        try std.testing.expect(@offsetOf(@This(), "m_utilityPath") == 0x48);
        try std.testing.expect(@offsetOf(@This(), "m_pClippedWaypoints") == 0x68);
        try std.testing.expect(@offsetOf(@This(), "m_flTimeClipped") == 0x70);
        try std.testing.expect(@offsetOf(@This(), "m_PreviousMoveActivity") == 0x74);
        try std.testing.expect(@offsetOf(@This(), "m_PreviousArrivalActivity") == 0x78);
        try std.testing.expect(@offsetOf(@This(), "m_moveTransitionAnim") == 0x7c);
        try std.testing.expect(@offsetOf(@This(), "m_bValidateActivitySpeed") == 0x80);
        try std.testing.expect(@offsetOf(@This(), "m_bCalledStartMove") == 0x81);
        try std.testing.expect(@offsetOf(@This(), "m_bAdjustMoveSpeedToSquad") == 0x82);
        try std.testing.expect(@offsetOf(@This(), "m_bForcedSimplify") == 0x83);
        try std.testing.expect(@offsetOf(@This(), "m_flNextSimplifyTime") == 0x84);
        try std.testing.expect(@offsetOf(@This(), "m_flLastSuccessfulSimplifyTime") == 0x88);
        try std.testing.expect(@offsetOf(@This(), "m_flTimeLastAvoidanceTriangulate") == 0x8c);
        try std.testing.expect(@offsetOf(@This(), "m_timePathRebuildMax") == 0x90);
        try std.testing.expect(@offsetOf(@This(), "m_timePathRebuildDelay") == 0x94);
        try std.testing.expect(@offsetOf(@This(), "m_timePathRebuildFail") == 0x98);
        try std.testing.expect(@offsetOf(@This(), "m_timePathRebuildNext") == 0x9c);
        try std.testing.expect(@offsetOf(@This(), "m_prevPathCorner") == 0xa0);
        try std.testing.expect(@offsetOf(@This(), "m_nextPathCorner") == 0xa4);
        try std.testing.expect(@offsetOf(@This(), "m_savePathCornerOnScheduleChange") == 0xa8);
        try std.testing.expect(@offsetOf(@This(), "m_pathCornerDirectionForward") == 0xa9);
        try std.testing.expect(@offsetOf(@This(), "m_fRememberStaleNodes") == 0xaa);
        try std.testing.expect(@offsetOf(@This(), "m_bNoPathcornerPathfinds") == 0xab);
        try std.testing.expect(@offsetOf(@This(), "m_checkClusterDangerAtTime") == 0xac);
        try std.testing.expect(@offsetOf(@This(), "m_bHadPath") == 0xb0);
        try std.testing.expect(@offsetOf(@This(), "m_bAnimWasMoving") == 0xb1);
        try std.testing.expect(@offsetOf(@This(), "m_setConditionPathInvolvesDangerousCluster") == 0xb2);
        try std.testing.expect(@offsetOf(@This(), "m_bProbeHitPhysicsObject") == 0xb3);
        try std.testing.expect(@offsetOf(@This(), "m_bPathBlockedByPhysicsObject") == 0xb4);
        try std.testing.expect(@offsetOf(@This(), "m_bPathBlockedByNPC") == 0xb5);
        try std.testing.expect(@offsetOf(@This(), "m_bProbeHitNPC") == 0xb6);
        try std.testing.expect(@offsetOf(@This(), "m_fPeerMoveWait") == 0xb7);
        try std.testing.expect(@offsetOf(@This(), "m_hPeerWaitingOn") == 0xb8);
        try std.testing.expect(@offsetOf(@This(), "m_PeerWaitMoveTimer") == 0xbc);
        try std.testing.expect(@offsetOf(@This(), "m_PeerWaitClearTimer") == 0xc4);
        try std.testing.expect(@offsetOf(@This(), "m_NextSidestepTimer") == 0xcc);
        try std.testing.expect(@offsetOf(@This(), "m_hBigStepGroundEnt") == 0xd4);
        try std.testing.expect(@offsetOf(@This(), "m_hLastBlockingEnt") == 0xd8);
        try std.testing.expect(@offsetOf(@This(), "m_hAvoidEnt") == 0xdc);
        try std.testing.expect(@offsetOf(@This(), "m_avoidDistSqr") == 0xe0);
        try std.testing.expect(@offsetOf(@This(), "m_vPosBeginFailedSteer") == 0xe4);
        try std.testing.expect(@offsetOf(@This(), "m_timeBeginFailedSteer") == 0xf0);
        try std.testing.expect(@offsetOf(@This(), "m_traverseRefYaw") == 0xf4);
        try std.testing.expect(@offsetOf(@This(), "m_traverseRefPos") == 0xf8);
        try std.testing.expect(@offsetOf(@This(), "m_traversePlantPos") == 0x104);
        try std.testing.expect(@offsetOf(@This(), "m_nNavFailCounter") == 0x110);
        try std.testing.expect(@offsetOf(@This(), "m_flLastNavFailTime") == 0x114);
        try std.testing.expect(@offsetOf(@This(), "m_flLastPathFindTime") == 0x118);
        try std.testing.expect(@offsetOf(@This(), "m_moveFlags") == 0x11c);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
