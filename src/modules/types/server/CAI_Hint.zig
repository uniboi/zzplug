pub const CAI_Hint = extern struct {
    vtable: *anyopaque,
    CBaseEntity: abi.cpp.Inherit(server.CBaseEntity),

    m_NodeData: server.HintNodeData, // +0x9e0 size: 0x50 (0x1 * 0x50) type 10
    m_hintMovingGroundEnt: valve.EHANDLE, // +0xa30 size: 0x4 (0x1 * 0x4) type 13
    m_hintGroundEnt: valve.EHANDLE, // +0xa34 size: 0x4 (0x1 * 0x4) type 13
    m_hHintOwner: valve.EHANDLE, // +0xa38 size: 0x4 (0x1 * 0x4) type 13
    m_flNextUseTime: valve.time, // +0xa3c size: 0x4 (0x1 * 0x4) type 16
    m_nodeFOV: f32, // +0xa40 size: 0x4 (0x1 * 0x4) type 1
    m_nodeFOVcos: f32, // +0xa44 size: 0x4 (0x1 * 0x4) type 1
    m_vecForward: m.Vector3, // +0xa48 size: 0xc (0x1 * 0xc) type 3
    m_npcIdealYawAlign: f32, // +0xa54 size: 0x4 (0x1 * 0x4) type 1
    m_advanceFromCoverScalar: f32, // +0xa58 size: 0x4 (0x1 * 0x4) type 1
    m_hintDisabled: bool, // +0xa5c size: 0x1 (0x1 * 0x1) type 6
    gap_a5d: [1]abi.undefined,
    ainData: i16, // +0xa5e size: 0x2 (0x1 * 0x2) type 7
    polyAttachedTo: i32, // +0xa60 size: 0x4 (0x1 * 0x4) type 5
    gap_a64: [4]abi.undefined,
    hintOnSamePoly_next: *server.CBaseEntity, // +0xa68 size: 0x8 (0x1 * 0x8) type 12
    hintOnSamePoly_prev: *server.CBaseEntity, // +0xa70 size: 0x8 (0x1 * 0x8) type 12

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xa78);
        try std.testing.expect(@offsetOf(@This(), "m_NodeData") == 0x9e0);
        try std.testing.expect(@offsetOf(@This(), "m_hintMovingGroundEnt") == 0xa30);
        try std.testing.expect(@offsetOf(@This(), "m_hintGroundEnt") == 0xa34);
        try std.testing.expect(@offsetOf(@This(), "m_hHintOwner") == 0xa38);
        try std.testing.expect(@offsetOf(@This(), "m_flNextUseTime") == 0xa3c);
        try std.testing.expect(@offsetOf(@This(), "m_nodeFOV") == 0xa40);
        try std.testing.expect(@offsetOf(@This(), "m_nodeFOVcos") == 0xa44);
        try std.testing.expect(@offsetOf(@This(), "m_vecForward") == 0xa48);
        try std.testing.expect(@offsetOf(@This(), "m_npcIdealYawAlign") == 0xa54);
        try std.testing.expect(@offsetOf(@This(), "m_advanceFromCoverScalar") == 0xa58);
        try std.testing.expect(@offsetOf(@This(), "m_hintDisabled") == 0xa5c);
        try std.testing.expect(@offsetOf(@This(), "ainData") == 0xa5e);
        try std.testing.expect(@offsetOf(@This(), "polyAttachedTo") == 0xa60);
        try std.testing.expect(@offsetOf(@This(), "hintOnSamePoly_next") == 0xa68);
        try std.testing.expect(@offsetOf(@This(), "hintOnSamePoly_prev") == 0xa70);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
