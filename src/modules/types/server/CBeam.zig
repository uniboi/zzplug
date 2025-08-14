pub const CBeam = extern struct {
    vtable: *anyopaque,
    CBaseEntity: abi.cpp.Inherit(server.CBaseEntity),

    m_flFrameRate: f32, // +0x9e0 size: 0x4 (0x1 * 0x4) type 1
    m_flHDRColorScale: f32, // +0x9e4 size: 0x4 (0x1 * 0x4) type 1
    m_clrRenderFriendly: valve.Color32, // +0x9e8 size: 0x4 (0x1 * 0x4) type 9
    m_flFireTime: valve.time, // +0x9ec size: 0x4 (0x1 * 0x4) type 16
    m_flDamage: f32, // +0x9f0 size: 0x4 (0x1 * 0x4) type 1
    m_nNumBeamEnts: i32, // +0x9f4 size: 0x4 (0x1 * 0x4) type 5
    m_nHaloIndex: valve.ModelIndex, // +0x9f8 size: 0x4 (0x1 * 0x4) type 26
    m_nBeamType: i32, // +0x9fc size: 0x4 (0x1 * 0x4) type 5
    m_nBeamFlags: i32, // +0xa00 size: 0x4 (0x1 * 0x4) type 5
    m_hAttachEntity: [10]valve.EHANDLE, // +0xa04 size: 0x28 (0xa * 0x4) type 13
    m_nAttachIndex: [10]i32, // +0xa2c size: 0x28 (0xa * 0x4) type 5
    m_fWidth: f32, // +0xa54 size: 0x4 (0x1 * 0x4) type 1
    m_fEndWidth: f32, // +0xa58 size: 0x4 (0x1 * 0x4) type 1
    m_fFadeLength: f32, // +0xa5c size: 0x4 (0x1 * 0x4) type 1
    m_fHaloScale: f32, // +0xa60 size: 0x4 (0x1 * 0x4) type 1
    m_fAmplitude: f32, // +0xa64 size: 0x4 (0x1 * 0x4) type 1
    m_fStartFrame: f32, // +0xa68 size: 0x4 (0x1 * 0x4) type 1
    m_fSpeed: f32, // +0xa6c size: 0x4 (0x1 * 0x4) type 1
    m_flFrame: f32, // +0xa70 size: 0x4 (0x1 * 0x4) type 1
    m_nClipStyle: i32, // +0xa74 size: 0x4 (0x1 * 0x4) type 5
    m_vecEndPos: m.Vector3, // +0xa78 size: 0xc (0x1 * 0xc) type 15
    m_hEndEntity: valve.EHANDLE, // +0xa84 size: 0x4 (0x1 * 0x4) type 13

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xa88);
        try std.testing.expect(@offsetOf(@This(), "m_flFrameRate") == 0x9e0);
        try std.testing.expect(@offsetOf(@This(), "m_flHDRColorScale") == 0x9e4);
        try std.testing.expect(@offsetOf(@This(), "m_clrRenderFriendly") == 0x9e8);
        try std.testing.expect(@offsetOf(@This(), "m_flFireTime") == 0x9ec);
        try std.testing.expect(@offsetOf(@This(), "m_flDamage") == 0x9f0);
        try std.testing.expect(@offsetOf(@This(), "m_nNumBeamEnts") == 0x9f4);
        try std.testing.expect(@offsetOf(@This(), "m_nHaloIndex") == 0x9f8);
        try std.testing.expect(@offsetOf(@This(), "m_nBeamType") == 0x9fc);
        try std.testing.expect(@offsetOf(@This(), "m_nBeamFlags") == 0xa00);
        try std.testing.expect(@offsetOf(@This(), "m_hAttachEntity") == 0xa04);
        try std.testing.expect(@offsetOf(@This(), "m_nAttachIndex") == 0xa2c);
        try std.testing.expect(@offsetOf(@This(), "m_fWidth") == 0xa54);
        try std.testing.expect(@offsetOf(@This(), "m_fEndWidth") == 0xa58);
        try std.testing.expect(@offsetOf(@This(), "m_fFadeLength") == 0xa5c);
        try std.testing.expect(@offsetOf(@This(), "m_fHaloScale") == 0xa60);
        try std.testing.expect(@offsetOf(@This(), "m_fAmplitude") == 0xa64);
        try std.testing.expect(@offsetOf(@This(), "m_fStartFrame") == 0xa68);
        try std.testing.expect(@offsetOf(@This(), "m_fSpeed") == 0xa6c);
        try std.testing.expect(@offsetOf(@This(), "m_flFrame") == 0xa70);
        try std.testing.expect(@offsetOf(@This(), "m_nClipStyle") == 0xa74);
        try std.testing.expect(@offsetOf(@This(), "m_vecEndPos") == 0xa78);
        try std.testing.expect(@offsetOf(@This(), "m_hEndEntity") == 0xa84);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
