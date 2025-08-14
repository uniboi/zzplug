pub const CBreakableProp = extern struct {
    vtable: *anyopaque,
    CBaseAnimating: abi.cpp.Inherit(server.CBaseAnimating),

    IBreakableWithPropData: *anyopaque, // +0xeb8 size: 0x8 (0x0 * 0x8) type 0
    m_OnBreak: [40]abi.undefined, // +0xec0 size: 0x28 (0x1 * 0x28) type 11
    m_OnHealthChanged: [40]abi.undefined, // +0xee8 size: 0x28 (0x1 * 0x28) type 11
    m_OnDamaged: [40]abi.undefined, // +0xf10 size: 0x28 (0x1 * 0x28) type 11
    m_impactEnergyScale: f32, // +0xf38 size: 0x4 (0x1 * 0x4) type 1
    m_iMinHealthDmg: i32, // +0xf3c size: 0x4 (0x1 * 0x4) type 5
    m_iPhysicsMode: i32, // +0xf40 size: 0x4 (0x1 * 0x4) type 5
    m_createTick: i32, // +0xf44 size: 0x4 (0x1 * 0x4) type 5
    m_flPressureDelay: f32, // +0xf48 size: 0x4 (0x1 * 0x4) type 1
    m_hBreaker: valve.EHANDLE, // +0xf4c size: 0x4 (0x1 * 0x4) type 13
    m_PerformanceMode: i32, // +0xf50 size: 0x4 (0x1 * 0x4) type 5
    m_flDmgModBullet: f32, // +0xf54 size: 0x4 (0x1 * 0x4) type 1
    m_flDmgModClub: f32, // +0xf58 size: 0x4 (0x1 * 0x4) type 1
    m_flDmgModExplosive: f32, // +0xf5c size: 0x4 (0x1 * 0x4) type 1
    m_flDmgModFire: f32, // +0xf60 size: 0x4 (0x1 * 0x4) type 1
    gap_f64: [4]abi.undefined,
    m_iszPhysicsDamageTableName: [*:0]u8, // +0xf68 size: 0x8 (0x1 * 0x8) type 2
    m_iszBreakableModel: [*:0]u8, // +0xf70 size: 0x8 (0x1 * 0x8) type 2
    m_iBreakableSkin: i32, // +0xf78 size: 0x4 (0x1 * 0x4) type 5
    m_iBreakableCount: i32, // +0xf7c size: 0x4 (0x1 * 0x4) type 5
    m_iMaxBreakableSize: i32, // +0xf80 size: 0x4 (0x1 * 0x4) type 5
    gap_f84: [4]abi.undefined,
    m_iszBasePropData: [*:0]u8, // +0xf88 size: 0x8 (0x1 * 0x8) type 2
    m_iInteractions: i32, // +0xf90 size: 0x4 (0x1 * 0x4) type 5
    m_explodeDamage: f32, // +0xf94 size: 0x4 (0x1 * 0x4) type 1
    m_explodeRadius: f32, // +0xf98 size: 0x4 (0x1 * 0x4) type 1
    m_scriptDamageInfo: server.ScriptOriginatedDamageInfo, // +0xf9c size: 0xc (0x1 * 0xc) type 10
    m_iNumBreakableChunks: i32, // +0xfa8 size: 0x4 (0x1 * 0x4) type 5
    m_bBlockLOSSetByPropData: bool, // +0xfac size: 0x1 (0x1 * 0x1) type 6
    m_bIsWalkableSetByPropData: bool, // +0xfad size: 0x1 (0x1 * 0x1) type 6
    m_bOriginalBlockLOS: bool, // +0xfae size: 0x1 (0x1 * 0x1) type 6
    gap_faf: [1]abi.undefined,
    m_mpBreakMode: i32, // +0xfb0 size: 0x4 (0x1 * 0x4) type 5
    m_hLastAttacker: valve.EHANDLE, // +0xfb4 size: 0x4 (0x1 * 0x4) type 13
    m_hFlareEnt: valve.EHANDLE, // +0xfb8 size: 0x4 (0x1 * 0x4) type 13

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xfc0);
        try std.testing.expect(@offsetOf(@This(), "IBreakableWithPropData") == 0xeb8);
        try std.testing.expect(@offsetOf(@This(), "m_OnBreak") == 0xec0);
        try std.testing.expect(@offsetOf(@This(), "m_OnHealthChanged") == 0xee8);
        try std.testing.expect(@offsetOf(@This(), "m_OnDamaged") == 0xf10);
        try std.testing.expect(@offsetOf(@This(), "m_impactEnergyScale") == 0xf38);
        try std.testing.expect(@offsetOf(@This(), "m_iMinHealthDmg") == 0xf3c);
        try std.testing.expect(@offsetOf(@This(), "m_iPhysicsMode") == 0xf40);
        try std.testing.expect(@offsetOf(@This(), "m_createTick") == 0xf44);
        try std.testing.expect(@offsetOf(@This(), "m_flPressureDelay") == 0xf48);
        try std.testing.expect(@offsetOf(@This(), "m_hBreaker") == 0xf4c);
        try std.testing.expect(@offsetOf(@This(), "m_PerformanceMode") == 0xf50);
        try std.testing.expect(@offsetOf(@This(), "m_flDmgModBullet") == 0xf54);
        try std.testing.expect(@offsetOf(@This(), "m_flDmgModClub") == 0xf58);
        try std.testing.expect(@offsetOf(@This(), "m_flDmgModExplosive") == 0xf5c);
        try std.testing.expect(@offsetOf(@This(), "m_flDmgModFire") == 0xf60);
        try std.testing.expect(@offsetOf(@This(), "m_iszPhysicsDamageTableName") == 0xf68);
        try std.testing.expect(@offsetOf(@This(), "m_iszBreakableModel") == 0xf70);
        try std.testing.expect(@offsetOf(@This(), "m_iBreakableSkin") == 0xf78);
        try std.testing.expect(@offsetOf(@This(), "m_iBreakableCount") == 0xf7c);
        try std.testing.expect(@offsetOf(@This(), "m_iMaxBreakableSize") == 0xf80);
        try std.testing.expect(@offsetOf(@This(), "m_iszBasePropData") == 0xf88);
        try std.testing.expect(@offsetOf(@This(), "m_iInteractions") == 0xf90);
        try std.testing.expect(@offsetOf(@This(), "m_explodeDamage") == 0xf94);
        try std.testing.expect(@offsetOf(@This(), "m_explodeRadius") == 0xf98);
        try std.testing.expect(@offsetOf(@This(), "m_scriptDamageInfo") == 0xf9c);
        try std.testing.expect(@offsetOf(@This(), "m_iNumBreakableChunks") == 0xfa8);
        try std.testing.expect(@offsetOf(@This(), "m_bBlockLOSSetByPropData") == 0xfac);
        try std.testing.expect(@offsetOf(@This(), "m_bIsWalkableSetByPropData") == 0xfad);
        try std.testing.expect(@offsetOf(@This(), "m_bOriginalBlockLOS") == 0xfae);
        try std.testing.expect(@offsetOf(@This(), "m_mpBreakMode") == 0xfb0);
        try std.testing.expect(@offsetOf(@This(), "m_hLastAttacker") == 0xfb4);
        try std.testing.expect(@offsetOf(@This(), "m_hFlareEnt") == 0xfb8);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
