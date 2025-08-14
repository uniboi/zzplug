pub const CProjectile = extern struct {
    vtable: *anyopaque,
    CBaseAnimating: abi.Inherit(server.CBaseAnimating),

    m_weaponDataIsSet: bool, // +0xeb8 size: 0x1 (0x1 * 0x1) type 6
    m_forceAdjustToGunBarrelDisabled: bool, // +0xeb9 size: 0x1 (0x1 * 0x1) type 6
    gap_eba: [2]abi.undefined,
    m_weaponClassIndex: i32, // +0xebc size: 0x4 (0x1 * 0x4) type 5
    m_destructionDistance: f32, // +0xec0 size: 0x4 (0x1 * 0x4) type 1
    m_passThroughDepthTotal: i32, // +0xec4 size: 0x4 (0x1 * 0x4) type 5
    m_modBitfield: i32, // +0xec8 size: 0x4 (0x1 * 0x4) type 5
    m_overrideMods: i32, // +0xecc size: 0x4 (0x1 * 0x4) type 5
    m_projectileTrailIndex: i32, // +0xed0 size: 0x4 (0x1 * 0x4) type 5
    m_impactEffectTable: i32, // +0xed4 size: 0x4 (0x1 * 0x4) type 5
    m_reducedEffects: bool, // +0xed8 size: 0x1 (0x1 * 0x1) type 6
    gap_ed9: [3]abi.undefined,
    m_projectileCreationTimeServer: f32, // +0xedc size: 0x4 (0x1 * 0x4) type 1
    m_wpnData: *anyopaque, // +0xee0 size: 0x8 (0x1 * 0x8) type 31
    m_hWeaponFileInfo: i16, // +0xee8 size: 0x2 (0x1 * 0x2) type 7
    gap_eea: [2]abi.undefined,
    m_weaponChargeLevel: i32, // +0xeec size: 0x4 (0x1 * 0x4) type 5
    m_modVars: [3232]abi.undefined, // +0xef0 size: 0xca0 (0x1 * 0xca0) type 0
    m_modVarsAreValid: bool, // +0x1b90 size: 0x1 (0x1 * 0x1) type 6
    gap_1b91: [3]abi.undefined,
    m_launchOrigin: m.Vector3, // +0x1b94 size: 0xc (0x1 * 0xc) type 3
    m_scriptCB: [40]abi.undefined, // +0x1ba0 size: 0x28 (0x1 * 0x28) type 0
    m_hasPlayedTrailEffect: bool, // +0x1bc8 size: 0x1 (0x1 * 0x1) type 6
    gap_1bc9: [3]abi.undefined,
    m_projectileLifetimeEndTick: valve.tick, // +0x1bcc size: 0x4 (0x1 * 0x4) type 17
    m_projectileCreationTime: f32, // +0x1bd0 size: 0x4 (0x1 * 0x4) type 1
    m_isVortexRefired: bool, // +0x1bd4 size: 0x1 (0x1 * 0x1) type 6
    m_damageAliveOnly: bool, // +0x1bd5 size: 0x1 (0x1 * 0x1) type 6
    m_usesPositionFunction: bool, // +0x1bd6 size: 0x1 (0x1 * 0x1) type 6
    gap_1bd7: [1]abi.undefined,
    m_lastCollisionNormal: m.Vector3, // +0x1bd8 size: 0xc (0x1 * 0xc) type 3
    m_bounceIndex: i32, // +0x1be4 size: 0x4 (0x1 * 0x4) type 5
    m_randomInt: i32, // +0x1be8 size: 0x4 (0x1 * 0x4) type 5
    m_thrownByAI: bool, // +0x1bec size: 0x1 (0x1 * 0x1) type 6
    m_takeAllDamage: bool, // +0x1bed size: 0x1 (0x1 * 0x1) type 6
    m_pendingLagCompensation: bool, // +0x1bee size: 0x1 (0x1 * 0x1) type 6
    gap_1bef: [1]abi.undefined,
    m_lagCompSpawnTime: f32, // +0x1bf0 size: 0x4 (0x1 * 0x4) type 1
    m_perPolyRadius: [2]f32, // +0x1bf4 size: 0x8 (0x2 * 0x4) type 1
    m_posBeforePhysicsSimulate: m.Vector3, // +0x1bfc size: 0xc (0x1 * 0xc) type 3
    m_hasIgnited: bool, // +0x1c08 size: 0x1 (0x1 * 0x1) type 6
    m_inLagCompensation: bool, // +0x1c09 size: 0x1 (0x1 * 0x1) type 6
    gap_1c0a: [6]abi.undefined,
    m_passEntities: [26]valve.EHANDLE, // +0x1c10 size: 0x68 (0x1 * 0x68) type 13
    m_impactDamageOverride: f32, // +0x1c78 size: 0x4 (0x1 * 0x4) type 1
    m_scriptDamageInfo: server.ScriptOriginatedDamageInfo, // +0x1c7c size: 0xc (0x1 * 0xc) type 10
    m_touchScriptDamageType: i32, // +0x1c88 size: 0x4 (0x1 * 0x4) type 5
    m_passThroughCount: i32, // +0x1c8c size: 0x4 (0x1 * 0x4) type 5
    m_damageForce: f32, // +0x1c90 size: 0x4 (0x1 * 0x4) type 1
    m_damageForceForExplosions: f32, // +0x1c94 size: 0x4 (0x1 * 0x4) type 1
    m_attackerType: i32, // +0x1c98 size: 0x4 (0x1 * 0x4) type 5

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x1ca0);
        try std.testing.expect(@offsetOf(@This(), "m_weaponDataIsSet") == 0xeb8);
        try std.testing.expect(@offsetOf(@This(), "m_forceAdjustToGunBarrelDisabled") == 0xeb9);
        try std.testing.expect(@offsetOf(@This(), "m_weaponClassIndex") == 0xebc);
        try std.testing.expect(@offsetOf(@This(), "m_destructionDistance") == 0xec0);
        try std.testing.expect(@offsetOf(@This(), "m_passThroughDepthTotal") == 0xec4);
        try std.testing.expect(@offsetOf(@This(), "m_modBitfield") == 0xec8);
        try std.testing.expect(@offsetOf(@This(), "m_overrideMods") == 0xecc);
        try std.testing.expect(@offsetOf(@This(), "m_projectileTrailIndex") == 0xed0);
        try std.testing.expect(@offsetOf(@This(), "m_impactEffectTable") == 0xed4);
        try std.testing.expect(@offsetOf(@This(), "m_reducedEffects") == 0xed8);
        try std.testing.expect(@offsetOf(@This(), "m_projectileCreationTimeServer") == 0xedc);
        try std.testing.expect(@offsetOf(@This(), "m_wpnData") == 0xee0);
        try std.testing.expect(@offsetOf(@This(), "m_hWeaponFileInfo") == 0xee8);
        try std.testing.expect(@offsetOf(@This(), "m_weaponChargeLevel") == 0xeec);
        try std.testing.expect(@offsetOf(@This(), "m_modVars") == 0xef0);
        try std.testing.expect(@offsetOf(@This(), "m_modVarsAreValid") == 0x1b90);
        try std.testing.expect(@offsetOf(@This(), "m_launchOrigin") == 0x1b94);
        try std.testing.expect(@offsetOf(@This(), "m_scriptCB") == 0x1ba0);
        try std.testing.expect(@offsetOf(@This(), "m_hasPlayedTrailEffect") == 0x1bc8);
        try std.testing.expect(@offsetOf(@This(), "m_projectileLifetimeEndTick") == 0x1bcc);
        try std.testing.expect(@offsetOf(@This(), "m_projectileCreationTime") == 0x1bd0);
        try std.testing.expect(@offsetOf(@This(), "m_isVortexRefired") == 0x1bd4);
        try std.testing.expect(@offsetOf(@This(), "m_damageAliveOnly") == 0x1bd5);
        try std.testing.expect(@offsetOf(@This(), "m_usesPositionFunction") == 0x1bd6);
        try std.testing.expect(@offsetOf(@This(), "m_lastCollisionNormal") == 0x1bd8);
        try std.testing.expect(@offsetOf(@This(), "m_bounceIndex") == 0x1be4);
        try std.testing.expect(@offsetOf(@This(), "m_randomInt") == 0x1be8);
        try std.testing.expect(@offsetOf(@This(), "m_thrownByAI") == 0x1bec);
        try std.testing.expect(@offsetOf(@This(), "m_takeAllDamage") == 0x1bed);
        try std.testing.expect(@offsetOf(@This(), "m_pendingLagCompensation") == 0x1bee);
        try std.testing.expect(@offsetOf(@This(), "m_lagCompSpawnTime") == 0x1bf0);
        try std.testing.expect(@offsetOf(@This(), "m_perPolyRadius") == 0x1bf4);
        try std.testing.expect(@offsetOf(@This(), "m_posBeforePhysicsSimulate") == 0x1bfc);
        try std.testing.expect(@offsetOf(@This(), "m_hasIgnited") == 0x1c08);
        try std.testing.expect(@offsetOf(@This(), "m_inLagCompensation") == 0x1c09);
        try std.testing.expect(@offsetOf(@This(), "m_passEntities") == 0x1c10);
        try std.testing.expect(@offsetOf(@This(), "m_impactDamageOverride") == 0x1c78);
        try std.testing.expect(@offsetOf(@This(), "m_scriptDamageInfo") == 0x1c7c);
        try std.testing.expect(@offsetOf(@This(), "m_touchScriptDamageType") == 0x1c88);
        try std.testing.expect(@offsetOf(@This(), "m_passThroughCount") == 0x1c8c);
        try std.testing.expect(@offsetOf(@This(), "m_damageForce") == 0x1c90);
        try std.testing.expect(@offsetOf(@This(), "m_damageForceForExplosions") == 0x1c94);
        try std.testing.expect(@offsetOf(@This(), "m_attackerType") == 0x1c98);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
