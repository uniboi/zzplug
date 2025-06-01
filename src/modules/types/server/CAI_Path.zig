pub const CAI_Path = extern struct {
    vtable: *anyopaque,
    CAI_Component: abi.Inherit(server.CAI_Component),

    m_Waypoints: *anyopaque, // +0x10 size: 0x8 (0x1 * 0x8) type 0
    m_clusterPath: [32]abi.undefined, // +0x18 size: 0x20 (0x1 * 0x20) type 0
    m_clusterPathNoExclusions: [32]abi.undefined, // +0x38 size: 0x20 (0x1 * 0x20) type 0
    m_goalTolerance: f32, // +0x58 size: 0x4 (0x1 * 0x4) type 1
    m_activity: [4]abi.undefined, // +0x5c size: 0x4 (0x1 * 0x4) type 11
    m_sequence: i32, // +0x60 size: 0x4 (0x1 * 0x4) type 5
    m_scriptMoveSequence: i32, // +0x64 size: 0x4 (0x1 * 0x4) type 5
    m_target: valve.EHANDLE, // +0x68 size: 0x4 (0x1 * 0x4) type 13
    m_waypointTolerance: f32, // +0x6c size: 0x4 (0x1 * 0x4) type 1
    m_movementTurnsAreValid: bool, // +0x70 size: 0x1 (0x1 * 0x1) type 6
    gap_71: [3]abi.undefined,
    m_leftTurn: server.MovementTurn, // +0x74 size: 0x14 (0x1 * 0x14) type 10
    m_rightTurn: server.MovementTurn, // +0x88 size: 0x14 (0x1 * 0x14) type 10
    m_arrivalActivity: [4]abi.undefined, // +0x9c size: 0x4 (0x1 * 0x4) type 11
    m_arrivalSequence: i32, // +0xa0 size: 0x4 (0x1 * 0x4) type 5
    m_animArrivalSequence: i32, // +0xa4 size: 0x4 (0x1 * 0x4) type 5
    m_fAnimArrivalDist: f32, // +0xa8 size: 0x4 (0x1 * 0x4) type 1
    m_fAnimArrivalYaw: f32, // +0xac size: 0x4 (0x1 * 0x4) type 1
    m_fAnimArrivalYawOffset: f32, // +0xb0 size: 0x4 (0x1 * 0x4) type 1
    m_animArrivalIdealStartPosition: m.Vector3, // +0xb4 size: 0xc (0x1 * 0xc) type 3
    m_animArrivalFlags: i32, // +0xc0 size: 0x4 (0x1 * 0x4) type 5
    m_bAnimArrivalFail: bool, // +0xc4 size: 0x1 (0x1 * 0x1) type 6
    gap_c5: [3]abi.undefined,
    m_iLastNodeReached: i32, // +0xc8 size: 0x4 (0x1 * 0x4) type 5
    m_goalNode: i32, // +0xcc size: 0x4 (0x1 * 0x4) type 5
    m_startGroundEnt: valve.EHANDLE, // +0xd0 size: 0x4 (0x1 * 0x4) type 13
    m_goalGroundEnt: valve.EHANDLE, // +0xd4 size: 0x4 (0x1 * 0x4) type 13
    m_bUsedSquadCachedPath: bool, // +0xd8 size: 0x1 (0x1 * 0x1) type 6
    gap_d9: [3]abi.undefined,
    m_goalPos: m.Vector3, // +0xdc size: 0xc (0x1 * 0xc) type 15
    m_goalPos_worldSpaceCached: m.Vector3, // +0xe8 size: 0xc (0x1 * 0xc) type 15
    m_goalType: i32, // +0xf4 size: 0x4 (0x1 * 0x4) type 5
    m_goalFlags: i32, // +0xf8 size: 0x4 (0x1 * 0x4) type 5
    m_routeStartTime: valve.time, // +0xfc size: 0x4 (0x1 * 0x4) type 16
    m_goalStoppingDistance: f32, // +0x100 size: 0x4 (0x1 * 0x4) type 1

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x108);
        try std.testing.expect(@offsetOf(@This(), "m_Waypoints") == 0x10);
        try std.testing.expect(@offsetOf(@This(), "m_clusterPath") == 0x18);
        try std.testing.expect(@offsetOf(@This(), "m_clusterPathNoExclusions") == 0x38);
        try std.testing.expect(@offsetOf(@This(), "m_goalTolerance") == 0x58);
        try std.testing.expect(@offsetOf(@This(), "m_activity") == 0x5c);
        try std.testing.expect(@offsetOf(@This(), "m_sequence") == 0x60);
        try std.testing.expect(@offsetOf(@This(), "m_scriptMoveSequence") == 0x64);
        try std.testing.expect(@offsetOf(@This(), "m_target") == 0x68);
        try std.testing.expect(@offsetOf(@This(), "m_waypointTolerance") == 0x6c);
        try std.testing.expect(@offsetOf(@This(), "m_movementTurnsAreValid") == 0x70);
        try std.testing.expect(@offsetOf(@This(), "m_leftTurn") == 0x74);
        try std.testing.expect(@offsetOf(@This(), "m_rightTurn") == 0x88);
        try std.testing.expect(@offsetOf(@This(), "m_arrivalActivity") == 0x9c);
        try std.testing.expect(@offsetOf(@This(), "m_arrivalSequence") == 0xa0);
        try std.testing.expect(@offsetOf(@This(), "m_animArrivalSequence") == 0xa4);
        try std.testing.expect(@offsetOf(@This(), "m_fAnimArrivalDist") == 0xa8);
        try std.testing.expect(@offsetOf(@This(), "m_fAnimArrivalYaw") == 0xac);
        try std.testing.expect(@offsetOf(@This(), "m_fAnimArrivalYawOffset") == 0xb0);
        try std.testing.expect(@offsetOf(@This(), "m_animArrivalIdealStartPosition") == 0xb4);
        try std.testing.expect(@offsetOf(@This(), "m_animArrivalFlags") == 0xc0);
        try std.testing.expect(@offsetOf(@This(), "m_bAnimArrivalFail") == 0xc4);
        try std.testing.expect(@offsetOf(@This(), "m_iLastNodeReached") == 0xc8);
        try std.testing.expect(@offsetOf(@This(), "m_goalNode") == 0xcc);
        try std.testing.expect(@offsetOf(@This(), "m_startGroundEnt") == 0xd0);
        try std.testing.expect(@offsetOf(@This(), "m_goalGroundEnt") == 0xd4);
        try std.testing.expect(@offsetOf(@This(), "m_bUsedSquadCachedPath") == 0xd8);
        try std.testing.expect(@offsetOf(@This(), "m_goalPos") == 0xdc);
        try std.testing.expect(@offsetOf(@This(), "m_goalPos_worldSpaceCached") == 0xe8);
        try std.testing.expect(@offsetOf(@This(), "m_goalType") == 0xf4);
        try std.testing.expect(@offsetOf(@This(), "m_goalFlags") == 0xf8);
        try std.testing.expect(@offsetOf(@This(), "m_routeStartTime") == 0xfc);
        try std.testing.expect(@offsetOf(@This(), "m_goalStoppingDistance") == 0x100);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
