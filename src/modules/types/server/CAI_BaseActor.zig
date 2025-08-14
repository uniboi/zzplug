pub const CAI_BaseActor = extern struct {
    vtable: *anyopaque,
    CAI_BaseActorBase: abi.Inherit(server.CAI_BaseActorBase),

    m_flAccumYawDelta: f32, // +0x20b8 size: 0x4 (0x1 * 0x4) type 1
    m_flAccumYawScale: f32, // +0x20bc size: 0x4 (0x1 * 0x4) type 1
    m_fLatchedPositions: i32, // +0x20c0 size: 0x4 (0x1 * 0x4) type 5
    m_latchedEyeOrigin: m.Vector3, // +0x20c4 size: 0xc (0x1 * 0xc) type 3
    m_latchedEyeDirection: m.Vector3, // +0x20d0 size: 0xc (0x1 * 0xc) type 3
    m_latchedHeadDirection: m.Vector3, // +0x20dc size: 0xc (0x1 * 0xc) type 3
    m_latchedEyeDirMutex: [40]abi.undefined, // +0x20e8 size: 0x28 (0x1 * 0x28) type 0
    m_goalHeadDirection: m.Vector3, // +0x2110 size: 0xc (0x1 * 0xc) type 3
    m_goalHeadInfluence: f32, // +0x211c size: 0x4 (0x1 * 0x4) type 1
    m_goalSpineYaw: f32, // +0x2120 size: 0x4 (0x1 * 0x4) type 1
    m_goalBodyYaw: f32, // +0x2124 size: 0x4 (0x1 * 0x4) type 1
    m_goalHeadCorrection: m.Vector3, // +0x2128 size: 0xc (0x1 * 0xc) type 3
    m_hLookTarget: valve.EHANDLE, // +0x2134 size: 0x4 (0x1 * 0x4) type 13
    m_lookQueue: [32]abi.undefined, // +0x2138 size: 0x20 (0x1 * 0x20) type 11
    m_randomLookQueue: [32]abi.undefined, // +0x2158 size: 0x20 (0x1 * 0x20) type 11
    m_flNextRandomLookTime: valve.time, // +0x2178 size: 0x4 (0x1 * 0x4) type 16
    gap_217c: [4]abi.undefined,
    m_onNewLookTarget: [40]abi.undefined, // +0x2180 size: 0x28 (0x1 * 0x28) type 11
    m_hAimTarget: valve.EHANDLE, // +0x21a8 size: 0x4 (0x1 * 0x4) type 13
    m_hAimTargetHint: valve.EHANDLE, // +0x21ac size: 0x4 (0x1 * 0x4) type 13
    m_viewTarget: m.Vector3, // +0x21b0 size: 0xc (0x1 * 0xc) type 15
    m_viewTargetActive: bool, // +0x21bc size: 0x1 (0x1 * 0x1) type 6
    gap_21bd: [3]abi.undefined,
    m_attachHeadFocus: i32, // +0x21c0 size: 0x4 (0x1 * 0x4) type 5
    m_attachChest: i32, // +0x21c4 size: 0x4 (0x1 * 0x4) type 5
    m_attachForward: i32, // +0x21c8 size: 0x4 (0x1 * 0x4) type 5
    m_ParameterBodyYaw: i32, // +0x21cc size: 0x4 (0x1 * 0x4) type 5
    m_ParameterSpineYaw: i32, // +0x21d0 size: 0x4 (0x1 * 0x4) type 5
    m_ParameterNeckTrans: i32, // +0x21d4 size: 0x4 (0x1 * 0x4) type 5
    m_ParameterHeadYaw: i32, // +0x21d8 size: 0x4 (0x1 * 0x4) type 5
    m_ParameterHeadPitch: i32, // +0x21dc size: 0x4 (0x1 * 0x4) type 5
    m_ParameterHeadRoll: i32, // +0x21e0 size: 0x4 (0x1 * 0x4) type 5
    m_ParameterGestureHeight: i32, // +0x21e4 size: 0x4 (0x1 * 0x4) type 5
    m_ParameterGestureWidth: i32, // +0x21e8 size: 0x4 (0x1 * 0x4) type 5

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x21f0);
        try std.testing.expect(@offsetOf(@This(), "m_flAccumYawDelta") == 0x20b8);
        try std.testing.expect(@offsetOf(@This(), "m_flAccumYawScale") == 0x20bc);
        try std.testing.expect(@offsetOf(@This(), "m_fLatchedPositions") == 0x20c0);
        try std.testing.expect(@offsetOf(@This(), "m_latchedEyeOrigin") == 0x20c4);
        try std.testing.expect(@offsetOf(@This(), "m_latchedEyeDirection") == 0x20d0);
        try std.testing.expect(@offsetOf(@This(), "m_latchedHeadDirection") == 0x20dc);
        try std.testing.expect(@offsetOf(@This(), "m_latchedEyeDirMutex") == 0x20e8);
        try std.testing.expect(@offsetOf(@This(), "m_goalHeadDirection") == 0x2110);
        try std.testing.expect(@offsetOf(@This(), "m_goalHeadInfluence") == 0x211c);
        try std.testing.expect(@offsetOf(@This(), "m_goalSpineYaw") == 0x2120);
        try std.testing.expect(@offsetOf(@This(), "m_goalBodyYaw") == 0x2124);
        try std.testing.expect(@offsetOf(@This(), "m_goalHeadCorrection") == 0x2128);
        try std.testing.expect(@offsetOf(@This(), "m_hLookTarget") == 0x2134);
        try std.testing.expect(@offsetOf(@This(), "m_lookQueue") == 0x2138);
        try std.testing.expect(@offsetOf(@This(), "m_randomLookQueue") == 0x2158);
        try std.testing.expect(@offsetOf(@This(), "m_flNextRandomLookTime") == 0x2178);
        try std.testing.expect(@offsetOf(@This(), "m_onNewLookTarget") == 0x2180);
        try std.testing.expect(@offsetOf(@This(), "m_hAimTarget") == 0x21a8);
        try std.testing.expect(@offsetOf(@This(), "m_hAimTargetHint") == 0x21ac);
        try std.testing.expect(@offsetOf(@This(), "m_viewTarget") == 0x21b0);
        try std.testing.expect(@offsetOf(@This(), "m_viewTargetActive") == 0x21bc);
        try std.testing.expect(@offsetOf(@This(), "m_attachHeadFocus") == 0x21c0);
        try std.testing.expect(@offsetOf(@This(), "m_attachChest") == 0x21c4);
        try std.testing.expect(@offsetOf(@This(), "m_attachForward") == 0x21c8);
        try std.testing.expect(@offsetOf(@This(), "m_ParameterBodyYaw") == 0x21cc);
        try std.testing.expect(@offsetOf(@This(), "m_ParameterSpineYaw") == 0x21d0);
        try std.testing.expect(@offsetOf(@This(), "m_ParameterNeckTrans") == 0x21d4);
        try std.testing.expect(@offsetOf(@This(), "m_ParameterHeadYaw") == 0x21d8);
        try std.testing.expect(@offsetOf(@This(), "m_ParameterHeadPitch") == 0x21dc);
        try std.testing.expect(@offsetOf(@This(), "m_ParameterHeadRoll") == 0x21e0);
        try std.testing.expect(@offsetOf(@This(), "m_ParameterGestureHeight") == 0x21e4);
        try std.testing.expect(@offsetOf(@This(), "m_ParameterGestureWidth") == 0x21e8);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
