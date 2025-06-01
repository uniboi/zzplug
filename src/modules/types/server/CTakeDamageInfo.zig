pub const CTakeDamageInfo = extern struct {
    m_vecDamageForce: m.Vector3, // +0x0 size: 0xc (0x1 * 0xc) type 3
    m_vecDamagePosition: m.Vector3, // +0xc size: 0xc (0x1 * 0xc) type 15
    m_vecReportedPosition: m.Vector3, // +0x18 size: 0xc (0x1 * 0xc) type 15
    m_hInflictor: valve.EHANDLE, // +0x24 size: 0x4 (0x1 * 0x4) type 13
    m_hAttacker: valve.EHANDLE, // +0x28 size: 0x4 (0x1 * 0x4) type 13
    m_hWeapon: valve.EHANDLE, // +0x2c size: 0x4 (0x1 * 0x4) type 13
    m_hWeaponFileInfo: i16, // +0x30 size: 0x2 (0x1 * 0x2) type 7
    m_forceKill: bool, // +0x32 size: 0x1 (0x1 * 0x1) type 6
    gap_33: [1]abi.undefined,
    m_flDamage: f32, // +0x34 size: 0x4 (0x1 * 0x4) type 1
    m_damageCriticalScale: f32, // +0x38 size: 0x4 (0x1 * 0x4) type 1
    m_flMaxDamage: f32, // +0x3c size: 0x4 (0x1 * 0x4) type 1
    m_flHeavyArmorDamageScale: f32, // +0x40 size: 0x4 (0x1 * 0x4) type 1
    m_bitsDamageType: i32, // +0x44 size: 0x4 (0x1 * 0x4) type 5
    m_flRadius: f32, // +0x48 size: 0x4 (0x1 * 0x4) type 1
    m_hitGroup: i32, // +0x4c size: 0x4 (0x1 * 0x4) type 5
    m_hitBox: i32, // +0x50 size: 0x4 (0x1 * 0x4) type 5
    m_scriptDamageInfo: server.ScriptOriginatedDamageInfo, // +0x54 size: 0xc (0x1 * 0xc) type 10
    m_deathPackage: i32, // +0x60 size: 0x4 (0x1 * 0x4) type 5
    m_distanceFromAttackOrigin: f32, // +0x64 size: 0x4 (0x1 * 0x4) type 1
    m_distanceFromExplosionCenter: f32, // +0x68 size: 0x4 (0x1 * 0x4) type 1
    m_doDeathForce: bool, // +0x6c size: 0x1 (0x1 * 0x1) type 6
    gap_6d: [3]abi.undefined,
    m_damageFlags: i32, // +0x70 size: 0x4 (0x1 * 0x4) type 5
    m_flinchDirection: i32, // +0x74 size: 0x4 (0x1 * 0x4) type 5

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x78);
        try std.testing.expect(@offsetOf(@This(), "m_vecDamageForce") == 0x0);
        try std.testing.expect(@offsetOf(@This(), "m_vecDamagePosition") == 0xc);
        try std.testing.expect(@offsetOf(@This(), "m_vecReportedPosition") == 0x18);
        try std.testing.expect(@offsetOf(@This(), "m_hInflictor") == 0x24);
        try std.testing.expect(@offsetOf(@This(), "m_hAttacker") == 0x28);
        try std.testing.expect(@offsetOf(@This(), "m_hWeapon") == 0x2c);
        try std.testing.expect(@offsetOf(@This(), "m_hWeaponFileInfo") == 0x30);
        try std.testing.expect(@offsetOf(@This(), "m_forceKill") == 0x32);
        try std.testing.expect(@offsetOf(@This(), "m_flDamage") == 0x34);
        try std.testing.expect(@offsetOf(@This(), "m_damageCriticalScale") == 0x38);
        try std.testing.expect(@offsetOf(@This(), "m_flMaxDamage") == 0x3c);
        try std.testing.expect(@offsetOf(@This(), "m_flHeavyArmorDamageScale") == 0x40);
        try std.testing.expect(@offsetOf(@This(), "m_bitsDamageType") == 0x44);
        try std.testing.expect(@offsetOf(@This(), "m_flRadius") == 0x48);
        try std.testing.expect(@offsetOf(@This(), "m_hitGroup") == 0x4c);
        try std.testing.expect(@offsetOf(@This(), "m_hitBox") == 0x50);
        try std.testing.expect(@offsetOf(@This(), "m_scriptDamageInfo") == 0x54);
        try std.testing.expect(@offsetOf(@This(), "m_deathPackage") == 0x60);
        try std.testing.expect(@offsetOf(@This(), "m_distanceFromAttackOrigin") == 0x64);
        try std.testing.expect(@offsetOf(@This(), "m_distanceFromExplosionCenter") == 0x68);
        try std.testing.expect(@offsetOf(@This(), "m_doDeathForce") == 0x6c);
        try std.testing.expect(@offsetOf(@This(), "m_damageFlags") == 0x70);
        try std.testing.expect(@offsetOf(@This(), "m_flinchDirection") == 0x74);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
