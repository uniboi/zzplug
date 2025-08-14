pub const CBreakable = extern struct {
    vtable: *anyopaque,
    CBaseEntity: abi.cpp.Inherit(server.CBaseEntity),

    IBreakableWithPropData: *anyopaque, // +0x9e0 size: 0x8 (0x0 * 0x8) type 0
    m_Material: i32, // +0x9e8 size: 0x4 (0x1 * 0x4) type 5
    m_hBreaker: valve.EHANDLE, // +0x9ec size: 0x4 (0x1 * 0x4) type 13
    m_Explosion: i32, // +0x9f0 size: 0x4 (0x1 * 0x4) type 5
    m_GibDir: m.Vector3, // +0x9f4 size: 0xc (0x1 * 0xc) type 3
    m_damageDir: m.Vector3, // +0xa00 size: 0xc (0x1 * 0xc) type 3
    gap_a0c: [4]abi.undefined,
    m_iszGibModel: [*:0]u8, // +0xa10 size: 0x8 (0x1 * 0x8) type 2
    m_iszSpawnObject: [*:0]u8, // +0xa18 size: 0x8 (0x1 * 0x8) type 2
    m_ExplosionMagnitude: i32, // +0xa20 size: 0x4 (0x1 * 0x4) type 5
    m_flPressureDelay: f32, // +0xa24 size: 0x4 (0x1 * 0x4) type 1
    m_iMinHealthDmg: i32, // +0xa28 size: 0x4 (0x1 * 0x4) type 5
    m_bTookPhysicsDamage: bool, // +0xa2c size: 0x1 (0x1 * 0x1) type 6
    gap_a2d: [3]abi.undefined,
    m_iszPropData: [*:0]u8, // +0xa30 size: 0x8 (0x1 * 0x8) type 2
    m_iszModelName: [*:0]u8, // +0xa38 size: 0x8 (0x1 * 0x8) type 2
    m_impactEnergyScale: f32, // +0xa40 size: 0x4 (0x1 * 0x4) type 1
    gap_a44: [4]abi.undefined,
    m_OnBreak: [40]abi.undefined, // +0xa48 size: 0x28 (0x1 * 0x28) type 11
    m_OnHealthChanged: [40]abi.undefined, // +0xa70 size: 0x28 (0x1 * 0x28) type 11
    m_flDmgModBullet: f32, // +0xa98 size: 0x4 (0x1 * 0x4) type 1
    m_flDmgModClub: f32, // +0xa9c size: 0x4 (0x1 * 0x4) type 1
    m_flDmgModExplosive: f32, // +0xaa0 size: 0x4 (0x1 * 0x4) type 1
    m_flDmgModFire: f32, // +0xaa4 size: 0x4 (0x1 * 0x4) type 1
    m_iszPhysicsDamageTableName: [*:0]u8, // +0xaa8 size: 0x8 (0x1 * 0x8) type 2
    m_iszBreakableModel: [*:0]u8, // +0xab0 size: 0x8 (0x1 * 0x8) type 2
    m_iBreakableSkin: i32, // +0xab8 size: 0x4 (0x1 * 0x4) type 5
    m_iBreakableCount: i32, // +0xabc size: 0x4 (0x1 * 0x4) type 5
    m_iMaxBreakableSize: i32, // +0xac0 size: 0x4 (0x1 * 0x4) type 5
    gap_ac4: [4]abi.undefined,
    m_iszBasePropData: [*:0]u8, // +0xac8 size: 0x8 (0x1 * 0x8) type 2
    m_iInteractions: i32, // +0xad0 size: 0x4 (0x1 * 0x4) type 5
    m_PerformanceMode: i32, // +0xad4 size: 0x4 (0x1 * 0x4) type 5
    m_explodeRadius: f32, // +0xad8 size: 0x4 (0x1 * 0x4) type 1

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xae0);
        try std.testing.expect(@offsetOf(@This(), "IBreakableWithPropData") == 0x9e0);
        try std.testing.expect(@offsetOf(@This(), "m_Material") == 0x9e8);
        try std.testing.expect(@offsetOf(@This(), "m_hBreaker") == 0x9ec);
        try std.testing.expect(@offsetOf(@This(), "m_Explosion") == 0x9f0);
        try std.testing.expect(@offsetOf(@This(), "m_GibDir") == 0x9f4);
        try std.testing.expect(@offsetOf(@This(), "m_damageDir") == 0xa00);
        try std.testing.expect(@offsetOf(@This(), "m_iszGibModel") == 0xa10);
        try std.testing.expect(@offsetOf(@This(), "m_iszSpawnObject") == 0xa18);
        try std.testing.expect(@offsetOf(@This(), "m_ExplosionMagnitude") == 0xa20);
        try std.testing.expect(@offsetOf(@This(), "m_flPressureDelay") == 0xa24);
        try std.testing.expect(@offsetOf(@This(), "m_iMinHealthDmg") == 0xa28);
        try std.testing.expect(@offsetOf(@This(), "m_bTookPhysicsDamage") == 0xa2c);
        try std.testing.expect(@offsetOf(@This(), "m_iszPropData") == 0xa30);
        try std.testing.expect(@offsetOf(@This(), "m_iszModelName") == 0xa38);
        try std.testing.expect(@offsetOf(@This(), "m_impactEnergyScale") == 0xa40);
        try std.testing.expect(@offsetOf(@This(), "m_OnBreak") == 0xa48);
        try std.testing.expect(@offsetOf(@This(), "m_OnHealthChanged") == 0xa70);
        try std.testing.expect(@offsetOf(@This(), "m_flDmgModBullet") == 0xa98);
        try std.testing.expect(@offsetOf(@This(), "m_flDmgModClub") == 0xa9c);
        try std.testing.expect(@offsetOf(@This(), "m_flDmgModExplosive") == 0xaa0);
        try std.testing.expect(@offsetOf(@This(), "m_flDmgModFire") == 0xaa4);
        try std.testing.expect(@offsetOf(@This(), "m_iszPhysicsDamageTableName") == 0xaa8);
        try std.testing.expect(@offsetOf(@This(), "m_iszBreakableModel") == 0xab0);
        try std.testing.expect(@offsetOf(@This(), "m_iBreakableSkin") == 0xab8);
        try std.testing.expect(@offsetOf(@This(), "m_iBreakableCount") == 0xabc);
        try std.testing.expect(@offsetOf(@This(), "m_iMaxBreakableSize") == 0xac0);
        try std.testing.expect(@offsetOf(@This(), "m_iszBasePropData") == 0xac8);
        try std.testing.expect(@offsetOf(@This(), "m_iInteractions") == 0xad0);
        try std.testing.expect(@offsetOf(@This(), "m_PerformanceMode") == 0xad4);
        try std.testing.expect(@offsetOf(@This(), "m_explodeRadius") == 0xad8);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
