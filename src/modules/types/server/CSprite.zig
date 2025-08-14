pub const CSprite = extern struct {
    vtable: *anyopaque,
    CBaseEntity: abi.cpp.Inherit(server.CBaseEntity),

    m_hAttachedToEntity: valve.EHANDLE, // +0x9e0 size: 0x4 (0x1 * 0x4) type 13
    m_nAttachment: i32, // +0x9e4 size: 0x4 (0x1 * 0x4) type 5
    m_flSpriteFramerate: f32, // +0x9e8 size: 0x4 (0x1 * 0x4) type 1
    m_flFrame: f32, // +0x9ec size: 0x4 (0x1 * 0x4) type 1
    m_flDieTime: valve.time, // +0x9f0 size: 0x4 (0x1 * 0x4) type 16
    m_clrRenderFriendly: valve.Color32, // +0x9f4 size: 0x4 (0x1 * 0x4) type 9
    m_nBrightness: i32, // +0x9f8 size: 0x4 (0x1 * 0x4) type 5
    m_flBrightnessDuration: f32, // +0x9fc size: 0x4 (0x1 * 0x4) type 1
    m_flSpriteScale: f32, // +0xa00 size: 0x4 (0x1 * 0x4) type 1
    m_flScaleDuration: f32, // +0xa04 size: 0x4 (0x1 * 0x4) type 1
    m_bWorldSpaceScale: bool, // +0xa08 size: 0x1 (0x1 * 0x1) type 6
    gap_a09: [3]abi.undefined,
    m_flGlowProxySize: f32, // +0xa0c size: 0x4 (0x1 * 0x4) type 1
    m_flHDRColorScale: f32, // +0xa10 size: 0x4 (0x1 * 0x4) type 1
    m_flLastTime: valve.time, // +0xa14 size: 0x4 (0x1 * 0x4) type 16
    m_flMaxFrame: f32, // +0xa18 size: 0x4 (0x1 * 0x4) type 1
    m_flStartScale: f32, // +0xa1c size: 0x4 (0x1 * 0x4) type 1
    m_flDestScale: f32, // +0xa20 size: 0x4 (0x1 * 0x4) type 1
    m_flScaleTimeStart: valve.time, // +0xa24 size: 0x4 (0x1 * 0x4) type 16
    m_nStartBrightness: i32, // +0xa28 size: 0x4 (0x1 * 0x4) type 5
    m_nDestBrightness: i32, // +0xa2c size: 0x4 (0x1 * 0x4) type 5
    m_flBrightnessTimeStart: valve.time, // +0xa30 size: 0x4 (0x1 * 0x4) type 16

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xa38);
        try std.testing.expect(@offsetOf(@This(), "m_hAttachedToEntity") == 0x9e0);
        try std.testing.expect(@offsetOf(@This(), "m_nAttachment") == 0x9e4);
        try std.testing.expect(@offsetOf(@This(), "m_flSpriteFramerate") == 0x9e8);
        try std.testing.expect(@offsetOf(@This(), "m_flFrame") == 0x9ec);
        try std.testing.expect(@offsetOf(@This(), "m_flDieTime") == 0x9f0);
        try std.testing.expect(@offsetOf(@This(), "m_clrRenderFriendly") == 0x9f4);
        try std.testing.expect(@offsetOf(@This(), "m_nBrightness") == 0x9f8);
        try std.testing.expect(@offsetOf(@This(), "m_flBrightnessDuration") == 0x9fc);
        try std.testing.expect(@offsetOf(@This(), "m_flSpriteScale") == 0xa00);
        try std.testing.expect(@offsetOf(@This(), "m_flScaleDuration") == 0xa04);
        try std.testing.expect(@offsetOf(@This(), "m_bWorldSpaceScale") == 0xa08);
        try std.testing.expect(@offsetOf(@This(), "m_flGlowProxySize") == 0xa0c);
        try std.testing.expect(@offsetOf(@This(), "m_flHDRColorScale") == 0xa10);
        try std.testing.expect(@offsetOf(@This(), "m_flLastTime") == 0xa14);
        try std.testing.expect(@offsetOf(@This(), "m_flMaxFrame") == 0xa18);
        try std.testing.expect(@offsetOf(@This(), "m_flStartScale") == 0xa1c);
        try std.testing.expect(@offsetOf(@This(), "m_flDestScale") == 0xa20);
        try std.testing.expect(@offsetOf(@This(), "m_flScaleTimeStart") == 0xa24);
        try std.testing.expect(@offsetOf(@This(), "m_nStartBrightness") == 0xa28);
        try std.testing.expect(@offsetOf(@This(), "m_nDestBrightness") == 0xa2c);
        try std.testing.expect(@offsetOf(@This(), "m_flBrightnessTimeStart") == 0xa30);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
