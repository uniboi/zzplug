pub const CEnvExplosion = extern struct {
    vtable: *anyopaque,
    CBaseEntity: abi.cpp.Inherit(server.CBaseEntity),

    m_iMagnitude: i32, // +0x9e0 size: 0x4 (0x1 * 0x4) type 5
    m_iMagnitudeHeavyArmor: i32, // +0x9e4 size: 0x4 (0x1 * 0x4) type 5
    m_iRadiusOverride: i32, // +0x9e8 size: 0x4 (0x1 * 0x4) type 5
    m_iInnerRadius: i32, // +0x9ec size: 0x4 (0x1 * 0x4) type 5
    m_spriteScale: i32, // +0x9f0 size: 0x4 (0x1 * 0x4) type 5
    m_flDamageForce: f32, // +0x9f4 size: 0x4 (0x1 * 0x4) type 1
    m_iszFireballSprite: [*:0]u8, // +0x9f8 size: 0x8 (0x1 * 0x8) type 2
    m_sFireballSprite: i16, // +0xa00 size: 0x2 (0x1 * 0x2) type 7
    gap_a02: [2]abi.undefined,
    m_hInflictor: valve.EHANDLE, // +0xa04 size: 0x4 (0x1 * 0x4) type 13
    m_iCustomDamageType: i32, // +0xa08 size: 0x4 (0x1 * 0x4) type 5
    m_scriptDamageInfo: server.ScriptOriginatedDamageInfo, // +0xa0c size: 0xc (0x1 * 0xc) type 10
    m_impactEffectTableIndex: i32, // +0xa18 size: 0x4 (0x1 * 0x4) type 5
    m_surfaceProp: i32, // +0xa1c size: 0x4 (0x1 * 0x4) type 5
    m_hWeaponFileInfo: [2]abi.undefined, // +0xa20 size: 0x2 (0x1 * 0x2) type 0
    gap_a22: [2]abi.undefined,
    m_iClassIgnore: i32, // +0xa24 size: 0x4 (0x1 * 0x4) type 5
    m_ignoreEnts: [24]abi.undefined, // +0xa28 size: 0x18 (0x1 * 0x18) type 11
    m_projectileLaunchOrigin: m.Vector3, // +0xa40 size: 0xc (0x1 * 0xc) type 3
    m_criticalHitScale: f32, // +0xa4c size: 0x4 (0x1 * 0x4) type 1

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xa50);
        try std.testing.expect(@offsetOf(@This(), "m_iMagnitude") == 0x9e0);
        try std.testing.expect(@offsetOf(@This(), "m_iMagnitudeHeavyArmor") == 0x9e4);
        try std.testing.expect(@offsetOf(@This(), "m_iRadiusOverride") == 0x9e8);
        try std.testing.expect(@offsetOf(@This(), "m_iInnerRadius") == 0x9ec);
        try std.testing.expect(@offsetOf(@This(), "m_spriteScale") == 0x9f0);
        try std.testing.expect(@offsetOf(@This(), "m_flDamageForce") == 0x9f4);
        try std.testing.expect(@offsetOf(@This(), "m_iszFireballSprite") == 0x9f8);
        try std.testing.expect(@offsetOf(@This(), "m_sFireballSprite") == 0xa00);
        try std.testing.expect(@offsetOf(@This(), "m_hInflictor") == 0xa04);
        try std.testing.expect(@offsetOf(@This(), "m_iCustomDamageType") == 0xa08);
        try std.testing.expect(@offsetOf(@This(), "m_scriptDamageInfo") == 0xa0c);
        try std.testing.expect(@offsetOf(@This(), "m_impactEffectTableIndex") == 0xa18);
        try std.testing.expect(@offsetOf(@This(), "m_surfaceProp") == 0xa1c);
        try std.testing.expect(@offsetOf(@This(), "m_hWeaponFileInfo") == 0xa20);
        try std.testing.expect(@offsetOf(@This(), "m_iClassIgnore") == 0xa24);
        try std.testing.expect(@offsetOf(@This(), "m_ignoreEnts") == 0xa28);
        try std.testing.expect(@offsetOf(@This(), "m_projectileLaunchOrigin") == 0xa40);
        try std.testing.expect(@offsetOf(@This(), "m_criticalHitScale") == 0xa4c);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
