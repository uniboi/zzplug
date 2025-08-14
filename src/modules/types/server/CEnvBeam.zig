pub const CEnvBeam = extern struct {
    vtable: *anyopaque,
    CBeam: abi.Inherit(server.CBeam),

    m_active: i32, // +0xa88 size: 0x4 (0x1 * 0x4) type 5
    m_spriteTexture: i32, // +0xa8c size: 0x4 (0x1 * 0x4) type 5
    m_iszStartEntity: [*:0]u8, // +0xa90 size: 0x8 (0x1 * 0x8) type 2
    m_iszEndEntity: [*:0]u8, // +0xa98 size: 0x8 (0x1 * 0x8) type 2
    m_life: f32, // +0xaa0 size: 0x4 (0x1 * 0x4) type 1
    m_boltWidth: f32, // +0xaa4 size: 0x4 (0x1 * 0x4) type 1
    m_noiseAmplitude: f32, // +0xaa8 size: 0x4 (0x1 * 0x4) type 1
    m_speed: i32, // +0xaac size: 0x4 (0x1 * 0x4) type 5
    m_restrike: f32, // +0xab0 size: 0x4 (0x1 * 0x4) type 1
    gap_ab4: [4]abi.undefined,
    m_iszSpriteName: [*:0]u8, // +0xab8 size: 0x8 (0x1 * 0x8) type 2
    m_frameStart: i32, // +0xac0 size: 0x4 (0x1 * 0x4) type 5
    m_vEndPointWorld: m.Vector3, // +0xac4 size: 0xc (0x1 * 0xc) type 3
    m_vEndPointRelative: m.Vector3, // +0xad0 size: 0xc (0x1 * 0xc) type 3
    m_radius: f32, // +0xadc size: 0x4 (0x1 * 0x4) type 1
    m_TouchType: i32, // +0xae0 size: 0x4 (0x1 * 0x4) type 5
    gap_ae4: [4]abi.undefined,
    m_OnTouchedByEntity: [40]abi.undefined, // +0xae8 size: 0x28 (0x1 * 0x28) type 11

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xb10);
        try std.testing.expect(@offsetOf(@This(), "m_active") == 0xa88);
        try std.testing.expect(@offsetOf(@This(), "m_spriteTexture") == 0xa8c);
        try std.testing.expect(@offsetOf(@This(), "m_iszStartEntity") == 0xa90);
        try std.testing.expect(@offsetOf(@This(), "m_iszEndEntity") == 0xa98);
        try std.testing.expect(@offsetOf(@This(), "m_life") == 0xaa0);
        try std.testing.expect(@offsetOf(@This(), "m_boltWidth") == 0xaa4);
        try std.testing.expect(@offsetOf(@This(), "m_noiseAmplitude") == 0xaa8);
        try std.testing.expect(@offsetOf(@This(), "m_speed") == 0xaac);
        try std.testing.expect(@offsetOf(@This(), "m_restrike") == 0xab0);
        try std.testing.expect(@offsetOf(@This(), "m_iszSpriteName") == 0xab8);
        try std.testing.expect(@offsetOf(@This(), "m_frameStart") == 0xac0);
        try std.testing.expect(@offsetOf(@This(), "m_vEndPointWorld") == 0xac4);
        try std.testing.expect(@offsetOf(@This(), "m_vEndPointRelative") == 0xad0);
        try std.testing.expect(@offsetOf(@This(), "m_radius") == 0xadc);
        try std.testing.expect(@offsetOf(@This(), "m_TouchType") == 0xae0);
        try std.testing.expect(@offsetOf(@This(), "m_OnTouchedByEntity") == 0xae8);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
