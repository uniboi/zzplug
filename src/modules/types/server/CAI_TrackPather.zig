pub const CAI_TrackPather = extern struct {
    vtable: *anyopaque,
    CAI_BaseNPC: abi.cpp.Inherit(server.CAI_BaseNPC),

    m_vecDesiredPosition: m.Vector3, // +0x20b0 size: 0xc (0x1 * 0xc) type 15
    m_vecGoalOrientation: m.Vector3, // +0x20bc size: 0xc (0x1 * 0xc) type 3
    m_pCurrentPathTarget: valve.EHANDLE, // +0x20c8 size: 0x4 (0x1 * 0x4) type 13
    m_pDestPathTarget: valve.EHANDLE, // +0x20cc size: 0x4 (0x1 * 0x4) type 13
    m_pLastPathTarget: valve.EHANDLE, // +0x20d0 size: 0x4 (0x1 * 0x4) type 13
    m_pTargetNearestPath: valve.EHANDLE, // +0x20d4 size: 0x4 (0x1 * 0x4) type 13
    m_strCurrentPathName: [*:0]u8, // +0x20d8 size: 0x8 (0x1 * 0x8) type 2
    m_strDestPathName: [*:0]u8, // +0x20e0 size: 0x8 (0x1 * 0x8) type 2
    m_strLastPathName: [*:0]u8, // +0x20e8 size: 0x8 (0x1 * 0x8) type 2
    m_strTargetNearestPathName: [*:0]u8, // +0x20f0 size: 0x8 (0x1 * 0x8) type 2
    m_vecLastGoalCheckPosition: m.Vector3, // +0x20f8 size: 0xc (0x1 * 0xc) type 15
    m_flEnemyPathUpdateTime: valve.time, // +0x2104 size: 0x4 (0x1 * 0x4) type 16
    m_bForcedMove: bool, // +0x2108 size: 0x1 (0x1 * 0x1) type 6
    m_bPatrolling: bool, // +0x2109 size: 0x1 (0x1 * 0x1) type 6
    m_bPatrolBreakable: bool, // +0x210a size: 0x1 (0x1 * 0x1) type 6
    m_bLeading: bool, // +0x210b size: 0x1 (0x1 * 0x1) type 6
    m_flTargetDistanceThreshold: f32, // +0x210c size: 0x4 (0x1 * 0x4) type 1
    m_flAvoidDistance: f32, // +0x2110 size: 0x4 (0x1 * 0x4) type 1
    m_flTargetTolerance: f32, // +0x2114 size: 0x4 (0x1 * 0x4) type 1
    m_vecSegmentStartPoint: m.Vector3, // +0x2118 size: 0xc (0x1 * 0xc) type 15
    m_vecSegmentStartSplinePoint: m.Vector3, // +0x2124 size: 0xc (0x1 * 0xc) type 15
    m_bMovingForward: bool, // +0x2130 size: 0x1 (0x1 * 0x1) type 6
    m_bChooseFarthestPoint: bool, // +0x2131 size: 0x1 (0x1 * 0x1) type 6
    gap_2132: [2]abi.undefined,
    m_flFarthestPathDist: f32, // +0x2134 size: 0x4 (0x1 * 0x4) type 1
    m_flPathMaxSpeed: f32, // +0x2138 size: 0x4 (0x1 * 0x4) type 1
    m_flTargetDistFromPath: f32, // +0x213c size: 0x4 (0x1 * 0x4) type 1
    m_flLeadDistance: f32, // +0x2140 size: 0x4 (0x1 * 0x4) type 1
    m_vecTargetPathDir: m.Vector3, // +0x2144 size: 0xc (0x1 * 0xc) type 3
    m_vecTargetPathPoint: m.Vector3, // +0x2150 size: 0xc (0x1 * 0xc) type 15
    m_nPauseState: i32, // +0x215c size: 0x4 (0x1 * 0x4) type 5
    m_OnArrived: [40]abi.undefined, // +0x2160 size: 0x28 (0x1 * 0x28) type 11
    m_pathDestSpeed: f32, // +0x2188 size: 0x4 (0x1 * 0x4) type 1
    m_defaultDesiredSpeed: f32, // +0x218c size: 0x4 (0x1 * 0x4) type 1

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x2190);
        try std.testing.expect(@offsetOf(@This(), "m_vecDesiredPosition") == 0x20b0);
        try std.testing.expect(@offsetOf(@This(), "m_vecGoalOrientation") == 0x20bc);
        try std.testing.expect(@offsetOf(@This(), "m_pCurrentPathTarget") == 0x20c8);
        try std.testing.expect(@offsetOf(@This(), "m_pDestPathTarget") == 0x20cc);
        try std.testing.expect(@offsetOf(@This(), "m_pLastPathTarget") == 0x20d0);
        try std.testing.expect(@offsetOf(@This(), "m_pTargetNearestPath") == 0x20d4);
        try std.testing.expect(@offsetOf(@This(), "m_strCurrentPathName") == 0x20d8);
        try std.testing.expect(@offsetOf(@This(), "m_strDestPathName") == 0x20e0);
        try std.testing.expect(@offsetOf(@This(), "m_strLastPathName") == 0x20e8);
        try std.testing.expect(@offsetOf(@This(), "m_strTargetNearestPathName") == 0x20f0);
        try std.testing.expect(@offsetOf(@This(), "m_vecLastGoalCheckPosition") == 0x20f8);
        try std.testing.expect(@offsetOf(@This(), "m_flEnemyPathUpdateTime") == 0x2104);
        try std.testing.expect(@offsetOf(@This(), "m_bForcedMove") == 0x2108);
        try std.testing.expect(@offsetOf(@This(), "m_bPatrolling") == 0x2109);
        try std.testing.expect(@offsetOf(@This(), "m_bPatrolBreakable") == 0x210a);
        try std.testing.expect(@offsetOf(@This(), "m_bLeading") == 0x210b);
        try std.testing.expect(@offsetOf(@This(), "m_flTargetDistanceThreshold") == 0x210c);
        try std.testing.expect(@offsetOf(@This(), "m_flAvoidDistance") == 0x2110);
        try std.testing.expect(@offsetOf(@This(), "m_flTargetTolerance") == 0x2114);
        try std.testing.expect(@offsetOf(@This(), "m_vecSegmentStartPoint") == 0x2118);
        try std.testing.expect(@offsetOf(@This(), "m_vecSegmentStartSplinePoint") == 0x2124);
        try std.testing.expect(@offsetOf(@This(), "m_bMovingForward") == 0x2130);
        try std.testing.expect(@offsetOf(@This(), "m_bChooseFarthestPoint") == 0x2131);
        try std.testing.expect(@offsetOf(@This(), "m_flFarthestPathDist") == 0x2134);
        try std.testing.expect(@offsetOf(@This(), "m_flPathMaxSpeed") == 0x2138);
        try std.testing.expect(@offsetOf(@This(), "m_flTargetDistFromPath") == 0x213c);
        try std.testing.expect(@offsetOf(@This(), "m_flLeadDistance") == 0x2140);
        try std.testing.expect(@offsetOf(@This(), "m_vecTargetPathDir") == 0x2144);
        try std.testing.expect(@offsetOf(@This(), "m_vecTargetPathPoint") == 0x2150);
        try std.testing.expect(@offsetOf(@This(), "m_nPauseState") == 0x215c);
        try std.testing.expect(@offsetOf(@This(), "m_OnArrived") == 0x2160);
        try std.testing.expect(@offsetOf(@This(), "m_pathDestSpeed") == 0x2188);
        try std.testing.expect(@offsetOf(@This(), "m_defaultDesiredSpeed") == 0x218c);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
