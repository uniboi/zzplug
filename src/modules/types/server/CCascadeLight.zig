pub const CCascadeLight = extern struct {
    vtable: *anyopaque,
    CBaseEntity: abi.Inherit(server.CBaseEntity),

    m_shadowDirection: m.Vector3, // +0x9e0 size: 0xc (0x1 * 0xc) type 3
    m_envLightShadowDirection: m.Vector3, // +0x9ec size: 0xc (0x1 * 0xc) type 3
    m_bEnabled: bool, // +0x9f8 size: 0x1 (0x1 * 0x1) type 6
    m_bStartDisabled: bool, // +0x9f9 size: 0x1 (0x1 * 0x1) type 6
    m_bEnableShadows: bool, // +0x9fa size: 0x1 (0x1 * 0x1) type 6
    m_LightColor: valve.Color32, // +0x9fb size: 0x4 (0x1 * 0x4) type 9
    m_cloudMaskName: [260]u8, // +0x9ff size: 0x104 (0x104 * 0x1) type 8
    gap_b03: [1]abi.undefined,
    m_cloudOffset: m.Vector3, // +0xb04 size: 0xc (0x1 * 0xc) type 3
    m_cloudScale: f32, // +0xb10 size: 0x4 (0x1 * 0x4) type 1

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xb18);
        try std.testing.expect(@offsetOf(@This(), "m_shadowDirection") == 0x9e0);
        try std.testing.expect(@offsetOf(@This(), "m_envLightShadowDirection") == 0x9ec);
        try std.testing.expect(@offsetOf(@This(), "m_bEnabled") == 0x9f8);
        try std.testing.expect(@offsetOf(@This(), "m_bStartDisabled") == 0x9f9);
        try std.testing.expect(@offsetOf(@This(), "m_bEnableShadows") == 0x9fa);
        try std.testing.expect(@offsetOf(@This(), "m_LightColor") == 0x9fb);
        try std.testing.expect(@offsetOf(@This(), "m_cloudMaskName") == 0x9ff);
        try std.testing.expect(@offsetOf(@This(), "m_cloudOffset") == 0xb04);
        try std.testing.expect(@offsetOf(@This(), "m_cloudScale") == 0xb10);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
