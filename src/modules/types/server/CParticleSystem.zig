pub const CParticleSystem = extern struct {
    vtable: *anyopaque,
    CBaseEntity: abi.Inherit(server.CBaseEntity),

    m_bClientSide: bool, // +0x9e0 size: 0x1 (0x1 * 0x1) type 6
    m_bDoNotCreateFXOnRestore: bool, // +0x9e1 size: 0x1 (0x1 * 0x1) type 6
    m_bStartActive: bool, // +0x9e2 size: 0x1 (0x1 * 0x1) type 6
    gap_9e3: [5]abi.undefined,
    m_iszEffectName: [*:0]u8, // +0x9e8 size: 0x8 (0x1 * 0x8) type 2
    m_bActive: bool, // +0x9f0 size: 0x1 (0x1 * 0x1) type 6
    m_bForceRenderAlways: bool, // +0x9f1 size: 0x1 (0x1 * 0x1) type 6
    gap_9f2: [2]abi.undefined,
    m_nStopType: i32, // +0x9f4 size: 0x4 (0x1 * 0x4) type 5
    m_iEffectIndex: i32, // +0x9f8 size: 0x4 (0x1 * 0x4) type 5
    m_flStartTime: valve.time, // +0x9fc size: 0x4 (0x1 * 0x4) type 16
    m_bInSkybox: bool, // +0xa00 size: 0x1 (0x1 * 0x1) type 6
    m_killForReplay: bool, // +0xa01 size: 0x1 (0x1 * 0x1) type 6
    gap_a02: [6]abi.undefined,
    m_iszControlPointNames_0_: [*:0]u8, // +0xa08 size: 0x8 (0x1 * 0x8) type 2
    m_iszControlPointNames_1_: [*:0]u8, // +0xa10 size: 0x8 (0x1 * 0x8) type 2
    m_iszControlPointNames_2_: [*:0]u8, // +0xa18 size: 0x8 (0x1 * 0x8) type 2
    m_iszControlPointNames_3_: [*:0]u8, // +0xa20 size: 0x8 (0x1 * 0x8) type 2
    m_iszControlPointNames_4_: [*:0]u8, // +0xa28 size: 0x8 (0x1 * 0x8) type 2
    m_vServerControlPoints: [5]m.Vector3, // +0xa30 size: 0x3c (0x5 * 0xc) type 3
    m_hControlPointEnts: [5]valve.EHANDLE, // +0xa6c size: 0x14 (0x5 * 0x4) type 13
    m_controlPointAttachTypes: [5]i32, // +0xa80 size: 0x14 (0x5 * 0x4) type 5
    m_parentAttachType: i32, // +0xa94 size: 0x4 (0x1 * 0x4) type 5
    m_controlPoint1AttachmentIndex: i32, // +0xa98 size: 0x4 (0x1 * 0x4) type 5

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xaa0);
        try std.testing.expect(@offsetOf(@This(), "m_bClientSide") == 0x9e0);
        try std.testing.expect(@offsetOf(@This(), "m_bDoNotCreateFXOnRestore") == 0x9e1);
        try std.testing.expect(@offsetOf(@This(), "m_bStartActive") == 0x9e2);
        try std.testing.expect(@offsetOf(@This(), "m_iszEffectName") == 0x9e8);
        try std.testing.expect(@offsetOf(@This(), "m_bActive") == 0x9f0);
        try std.testing.expect(@offsetOf(@This(), "m_bForceRenderAlways") == 0x9f1);
        try std.testing.expect(@offsetOf(@This(), "m_nStopType") == 0x9f4);
        try std.testing.expect(@offsetOf(@This(), "m_iEffectIndex") == 0x9f8);
        try std.testing.expect(@offsetOf(@This(), "m_flStartTime") == 0x9fc);
        try std.testing.expect(@offsetOf(@This(), "m_bInSkybox") == 0xa00);
        try std.testing.expect(@offsetOf(@This(), "m_killForReplay") == 0xa01);
        try std.testing.expect(@offsetOf(@This(), "m_iszControlPointNames_0_") == 0xa08);
        try std.testing.expect(@offsetOf(@This(), "m_iszControlPointNames_1_") == 0xa10);
        try std.testing.expect(@offsetOf(@This(), "m_iszControlPointNames_2_") == 0xa18);
        try std.testing.expect(@offsetOf(@This(), "m_iszControlPointNames_3_") == 0xa20);
        try std.testing.expect(@offsetOf(@This(), "m_iszControlPointNames_4_") == 0xa28);
        try std.testing.expect(@offsetOf(@This(), "m_vServerControlPoints") == 0xa30);
        try std.testing.expect(@offsetOf(@This(), "m_hControlPointEnts") == 0xa6c);
        try std.testing.expect(@offsetOf(@This(), "m_controlPointAttachTypes") == 0xa80);
        try std.testing.expect(@offsetOf(@This(), "m_parentAttachType") == 0xa94);
        try std.testing.expect(@offsetOf(@This(), "m_controlPoint1AttachmentIndex") == 0xa98);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
