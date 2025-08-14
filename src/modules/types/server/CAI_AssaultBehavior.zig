pub const CAI_AssaultBehavior = extern struct {
    vtable: *anyopaque,
    CAI_BehaviorBase: abi.cpp.Inherit(server.CAI_BehaviorBase),

    m_assaultGroundRelativePos: m.Vector3, // +0x50 size: 0xc (0x1 * 0xc) type 3
    m_assaultMovingGroundEnt: valve.EHANDLE, // +0x5c size: 0x4 (0x1 * 0x4) type 13
    m_assaultAngles: m.Vector3, // +0x60 size: 0xc (0x1 * 0xc) type 3
    m_cachedAssaultPosWorldspace: m.Vector3, // +0x6c size: 0xc (0x1 * 0xc) type 3
    m_assaultScriptedAnimRefPos: m.Vector3, // +0x78 size: 0xc (0x1 * 0xc) type 3
    m_assaultScriptedAnimRefAngles: m.Vector3, // +0x84 size: 0xc (0x1 * 0xc) type 3
    m_assaultScriptedAnimSequence: i32, // +0x90 size: 0x4 (0x1 * 0x4) type 5
    gap_94: [4]abi.undefined,
    m_assaultScriptedAnimCallback: [8]abi.undefined, // +0x98 size: 0x8 (0x1 * 0x8) type 11
    m_flFightRadius: f32, // +0xa0 size: 0x4 (0x1 * 0x4) type 1
    m_flGoalRadius: f32, // +0xa4 size: 0x4 (0x1 * 0x4) type 1
    m_flGoalHeight: f32, // +0xa8 size: 0x4 (0x1 * 0x4) type 1
    m_flArrivalTolerance: f32, // +0xac size: 0x4 (0x1 * 0x4) type 1
    m_bFaceAssaultPointAngles: bool, // +0xb0 size: 0x1 (0x1 * 0x1) type 6
    m_bFinalDestination: bool, // +0xb1 size: 0x1 (0x1 * 0x1) type 6
    m_bHitAssaultPoint: bool, // +0xb2 size: 0x1 (0x1 * 0x1) type 6
    m_bAssaultActive: bool, // +0xb3 size: 0x1 (0x1 * 0x1) type 6
    m_bIsHaltingAssault: bool, // +0xb4 size: 0x1 (0x1 * 0x1) type 6
    m_bDiverting: bool, // +0xb5 size: 0x1 (0x1 * 0x1) type 6
    gap_b6: [2]abi.undefined,
    m_flTimeDeferScheduleSelection: valve.time, // +0xb8 size: 0x4 (0x1 * 0x4) type 16
    gap_bc: [4]abi.undefined,
    m_OnAssaultClear: [40]abi.undefined, // +0xc0 size: 0x28 (0x1 * 0x28) type 11

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xe8);
        try std.testing.expect(@offsetOf(@This(), "m_assaultGroundRelativePos") == 0x50);
        try std.testing.expect(@offsetOf(@This(), "m_assaultMovingGroundEnt") == 0x5c);
        try std.testing.expect(@offsetOf(@This(), "m_assaultAngles") == 0x60);
        try std.testing.expect(@offsetOf(@This(), "m_cachedAssaultPosWorldspace") == 0x6c);
        try std.testing.expect(@offsetOf(@This(), "m_assaultScriptedAnimRefPos") == 0x78);
        try std.testing.expect(@offsetOf(@This(), "m_assaultScriptedAnimRefAngles") == 0x84);
        try std.testing.expect(@offsetOf(@This(), "m_assaultScriptedAnimSequence") == 0x90);
        try std.testing.expect(@offsetOf(@This(), "m_assaultScriptedAnimCallback") == 0x98);
        try std.testing.expect(@offsetOf(@This(), "m_flFightRadius") == 0xa0);
        try std.testing.expect(@offsetOf(@This(), "m_flGoalRadius") == 0xa4);
        try std.testing.expect(@offsetOf(@This(), "m_flGoalHeight") == 0xa8);
        try std.testing.expect(@offsetOf(@This(), "m_flArrivalTolerance") == 0xac);
        try std.testing.expect(@offsetOf(@This(), "m_bFaceAssaultPointAngles") == 0xb0);
        try std.testing.expect(@offsetOf(@This(), "m_bFinalDestination") == 0xb1);
        try std.testing.expect(@offsetOf(@This(), "m_bHitAssaultPoint") == 0xb2);
        try std.testing.expect(@offsetOf(@This(), "m_bAssaultActive") == 0xb3);
        try std.testing.expect(@offsetOf(@This(), "m_bIsHaltingAssault") == 0xb4);
        try std.testing.expect(@offsetOf(@This(), "m_bDiverting") == 0xb5);
        try std.testing.expect(@offsetOf(@This(), "m_flTimeDeferScheduleSelection") == 0xb8);
        try std.testing.expect(@offsetOf(@This(), "m_OnAssaultClear") == 0xc0);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
