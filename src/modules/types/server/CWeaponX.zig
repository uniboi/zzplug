pub const CWeaponX = extern struct {
    vtable: *anyopaque,
    CBaseCombatWeapon: abi.Inherit(server.CBaseCombatWeapon),

    m_weapState: i32, // +0xfc0 size: 0x4 (0x1 * 0x4) type 5
    m_allowedToUse: bool, // +0xfc4 size: 0x1 (0x1 * 0x1) type 6
    m_discarded: bool, // +0xfc5 size: 0x1 (0x1 * 0x1) type 6
    gap_fc6: [2]abi.undefined,
    m_forcedADS: i32, // +0xfc8 size: 0x4 (0x1 * 0x4) type 5
    m_forceRelease: i32, // +0xfcc size: 0x4 (0x1 * 0x4) type 5
    m_forceReleaseFromServer: bool, // +0xfd0 size: 0x1 (0x1 * 0x1) type 6
    gap_fd1: [3]abi.undefined,
    m_customActivity: i32, // +0xfd4 size: 0x4 (0x1 * 0x4) type 5
    m_customActivitySequence: i32, // +0xfd8 size: 0x4 (0x1 * 0x4) type 5
    m_customActivityOwner: valve.EHANDLE, // +0xfdc size: 0x4 (0x1 * 0x4) type 13
    m_customActivityEndTime: valve.time, // +0xfe0 size: 0x4 (0x1 * 0x4) type 16
    gap_fe4: [4]abi.undefined,
    m_playerData: server.WeaponPlayerData, // +0xfe8 size: 0xa8 (0x1 * 0xa8) type 10
    m_smartAmmoEnable: bool, // +0x1090 size: 0x1 (0x1 * 0x1) type 6
    gap_1091: [7]abi.undefined,
    m_smartAmmo: server.SmartAmmo_WeaponData, // +0x1098 size: 0x1f0 (0x1 * 0x1f0) type 10
    m_needsReloadCheck: bool, // +0x1288 size: 0x1 (0x1 * 0x1) type 6
    m_needsCooldown: bool, // +0x1289 size: 0x1 (0x1 * 0x1) type 6
    m_needsEmptyCycleCheck: bool, // +0x128a size: 0x1 (0x1 * 0x1) type 6
    gap_128b: [1]abi.undefined,
    m_skinOverride: i32, // +0x128c size: 0x4 (0x1 * 0x4) type 5
    m_skinOverrideIsValid: bool, // +0x1290 size: 0x1 (0x1 * 0x1) type 6
    gap_1291: [3]abi.undefined,
    m_chargeStartTime: valve.time, // +0x1294 size: 0x4 (0x1 * 0x4) type 16
    m_chargeEndTime: valve.time, // +0x1298 size: 0x4 (0x1 * 0x4) type 16
    m_lastChargeFrac: f32, // +0x129c size: 0x4 (0x1 * 0x4) type 1
    m_lastRegenTime: valve.time, // +0x12a0 size: 0x4 (0x1 * 0x4) type 16
    m_stockPileWasDraining: bool, // +0x12a4 size: 0x1 (0x1 * 0x1) type 6
    gap_12a5: [3]abi.undefined,
    m_lastChargeLevel: i32, // +0x12a8 size: 0x4 (0x1 * 0x4) type 5
    m_chargeEnergyDepleteStepCounter: i32, // +0x12ac size: 0x4 (0x1 * 0x4) type 5
    m_burstFireCount: i32, // +0x12b0 size: 0x4 (0x1 * 0x4) type 5
    m_burstFireIndex: i32, // +0x12b4 size: 0x4 (0x1 * 0x4) type 5
    m_shotCount: i32, // +0x12b8 size: 0x4 (0x1 * 0x4) type 5
    m_sustainedDischargeEndTime: valve.time, // +0x12bc size: 0x4 (0x1 * 0x4) type 16
    m_modBitfieldFromPlayer: i32, // +0x12c0 size: 0x4 (0x1 * 0x4) type 5
    m_modBitfieldInternal: i32, // +0x12c4 size: 0x4 (0x1 * 0x4) type 5
    m_modBitfieldCurrent: i32, // +0x12c8 size: 0x4 (0x1 * 0x4) type 5
    m_curSharedEnergyCost: i32, // +0x12cc size: 0x4 (0x1 * 0x4) type 5
    m_scriptActivated: bool, // +0x12d0 size: 0x1 (0x1 * 0x1) type 6
    m_isLoadoutPickup: bool, // +0x12d1 size: 0x1 (0x1 * 0x1) type 6
    gap_12d2: [2]abi.undefined,
    m_utilityEnt: valve.EHANDLE, // +0x12d4 size: 0x4 (0x1 * 0x4) type 13
    m_weaponNameIndex: i32, // +0x12d8 size: 0x4 (0x1 * 0x4) type 5
    m_animModelIndexPredictingClientOnly: i32, // +0x12dc size: 0x4 (0x1 * 0x4) type 5
    m_animSequencePredictingClientOnly: i32, // +0x12e0 size: 0x4 (0x1 * 0x4) type 5
    gap_12e4: [4]abi.undefined,
    m_weaponScriptCB_: [296]abi.undefined, // +0x12e8 size: 0x128 (0x1 * 0x128) type 11
    m_modVars: [3232]abi.undefined, // +0x1410 size: 0xca0 (0x1 * 0xca0) type 0
    m_tracerAttachment: [2]i32, // +0x20b0 size: 0x8 (0x2 * 0x4) type 5
    m_damageSourceIdentifier: i32, // +0x20b8 size: 0x4 (0x1 * 0x4) type 5
    m_activityModifierSymbolForNameIsSet: bool, // +0x20bc size: 0x1 (0x1 * 0x1) type 6
    gap_20bd: [1]abi.undefined,
    m_activityModifierSymbolForName: [2]abi.undefined, // +0x20be size: 0x2 (0x1 * 0x2) type 11
    m_hasAltAnim_adsIn: [3]bool, // +0x20c0 size: 0x3 (0x3 * 0x1) type 6
    m_hasAltAnim_adsOut: [3]bool, // +0x20c3 size: 0x3 (0x3 * 0x1) type 6
    m_hasAltAnim_idle: [3]bool, // +0x20c6 size: 0x3 (0x3 * 0x1) type 6
    m_hasAltAnim_attack: [3]bool, // +0x20c9 size: 0x3 (0x3 * 0x1) type 6
    m_hasAltAnim_oneHandedAdsIn: [3]bool, // +0x20cc size: 0x3 (0x3 * 0x1) type 6
    m_hasAltAnim_oneHandedAdsOut: [3]bool, // +0x20cf size: 0x3 (0x3 * 0x1) type 6
    m_hasAltAnim_oneHandedIdle: [3]bool, // +0x20d2 size: 0x3 (0x3 * 0x1) type 6
    m_hasAltAnim_oneHandedAttack: [3]bool, // +0x20d5 size: 0x3 (0x3 * 0x1) type 6
    m_loopSoundActive_1p: bool, // +0x20d8 size: 0x1 (0x1 * 0x1) type 6
    m_loopSoundActive_3p: bool, // +0x20d9 size: 0x1 (0x1 * 0x1) type 6
    m_loopSoundActive_3pAsNPC: bool, // +0x20da size: 0x1 (0x1 * 0x1) type 6
    gap_20db: [1]abi.undefined,
    m_loopSoundLastAttackClockTime: f32, // +0x20dc size: 0x4 (0x1 * 0x4) type 1
    m_loopSoundLastAttackClockTimeWithFireDelay: f32, // +0x20e0 size: 0x4 (0x1 * 0x4) type 1
    m_loopSoundCurrentParity: i32, // +0x20e4 size: 0x4 (0x1 * 0x4) type 5
    m_loopSoundActiveParity_1p: i32, // +0x20e8 size: 0x4 (0x1 * 0x4) type 5
    m_attackKickScale: f32, // +0x20ec size: 0x4 (0x1 * 0x4) type 1
    m_attackKickRollScale: f32, // +0x20f0 size: 0x4 (0x1 * 0x4) type 1
    m_prevViewModelWpnStr: i16, // +0x20f4 size: 0x2 (0x1 * 0x2) type 5
    m_prevWorldModelWpnStr: i16, // +0x20f6 size: 0x2 (0x1 * 0x2) type 5
    m_prevHolsterModelWpnStr: i16, // +0x20f8 size: 0x2 (0x1 * 0x2) type 5
    gap_20fa: [2]abi.undefined,
    newProjectiles: [8]valve.EHANDLE, // +0x20fc size: 0x20 (0x8 * 0x4) type 13
    newProjectileCount: i32, // +0x211c size: 0x4 (0x1 * 0x4) type 5
    m_smartAmmoNextWeapon: *server.CBaseEntity, // +0x2120 size: 0x8 (0x1 * 0x8) type 12
    m_smartAmmoPrevWeapon: *server.CBaseEntity, // +0x2128 size: 0x8 (0x1 * 0x8) type 12
    m_npcUseCheckTime: f32, // +0x2130 size: 0x4 (0x1 * 0x4) type 1
    m_npcUseCheckDist: f32, // +0x2134 size: 0x4 (0x1 * 0x4) type 1
    m_sustainedDischargeNextPulseTime: f32, // +0x2138 size: 0x4 (0x1 * 0x4) type 1

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x2140);
        try std.testing.expect(@offsetOf(@This(), "m_weapState") == 0xfc0);
        try std.testing.expect(@offsetOf(@This(), "m_allowedToUse") == 0xfc4);
        try std.testing.expect(@offsetOf(@This(), "m_discarded") == 0xfc5);
        try std.testing.expect(@offsetOf(@This(), "m_forcedADS") == 0xfc8);
        try std.testing.expect(@offsetOf(@This(), "m_forceRelease") == 0xfcc);
        try std.testing.expect(@offsetOf(@This(), "m_forceReleaseFromServer") == 0xfd0);
        try std.testing.expect(@offsetOf(@This(), "m_customActivity") == 0xfd4);
        try std.testing.expect(@offsetOf(@This(), "m_customActivitySequence") == 0xfd8);
        try std.testing.expect(@offsetOf(@This(), "m_customActivityOwner") == 0xfdc);
        try std.testing.expect(@offsetOf(@This(), "m_customActivityEndTime") == 0xfe0);
        try std.testing.expect(@offsetOf(@This(), "m_playerData") == 0xfe8);
        try std.testing.expect(@offsetOf(@This(), "m_smartAmmoEnable") == 0x1090);
        try std.testing.expect(@offsetOf(@This(), "m_smartAmmo") == 0x1098);
        try std.testing.expect(@offsetOf(@This(), "m_needsReloadCheck") == 0x1288);
        try std.testing.expect(@offsetOf(@This(), "m_needsCooldown") == 0x1289);
        try std.testing.expect(@offsetOf(@This(), "m_needsEmptyCycleCheck") == 0x128a);
        try std.testing.expect(@offsetOf(@This(), "m_skinOverride") == 0x128c);
        try std.testing.expect(@offsetOf(@This(), "m_skinOverrideIsValid") == 0x1290);
        try std.testing.expect(@offsetOf(@This(), "m_chargeStartTime") == 0x1294);
        try std.testing.expect(@offsetOf(@This(), "m_chargeEndTime") == 0x1298);
        try std.testing.expect(@offsetOf(@This(), "m_lastChargeFrac") == 0x129c);
        try std.testing.expect(@offsetOf(@This(), "m_lastRegenTime") == 0x12a0);
        try std.testing.expect(@offsetOf(@This(), "m_stockPileWasDraining") == 0x12a4);
        try std.testing.expect(@offsetOf(@This(), "m_lastChargeLevel") == 0x12a8);
        try std.testing.expect(@offsetOf(@This(), "m_chargeEnergyDepleteStepCounter") == 0x12ac);
        try std.testing.expect(@offsetOf(@This(), "m_burstFireCount") == 0x12b0);
        try std.testing.expect(@offsetOf(@This(), "m_burstFireIndex") == 0x12b4);
        try std.testing.expect(@offsetOf(@This(), "m_shotCount") == 0x12b8);
        try std.testing.expect(@offsetOf(@This(), "m_sustainedDischargeEndTime") == 0x12bc);
        try std.testing.expect(@offsetOf(@This(), "m_modBitfieldFromPlayer") == 0x12c0);
        try std.testing.expect(@offsetOf(@This(), "m_modBitfieldInternal") == 0x12c4);
        try std.testing.expect(@offsetOf(@This(), "m_modBitfieldCurrent") == 0x12c8);
        try std.testing.expect(@offsetOf(@This(), "m_curSharedEnergyCost") == 0x12cc);
        try std.testing.expect(@offsetOf(@This(), "m_scriptActivated") == 0x12d0);
        try std.testing.expect(@offsetOf(@This(), "m_isLoadoutPickup") == 0x12d1);
        try std.testing.expect(@offsetOf(@This(), "m_utilityEnt") == 0x12d4);
        try std.testing.expect(@offsetOf(@This(), "m_weaponNameIndex") == 0x12d8);
        try std.testing.expect(@offsetOf(@This(), "m_animModelIndexPredictingClientOnly") == 0x12dc);
        try std.testing.expect(@offsetOf(@This(), "m_animSequencePredictingClientOnly") == 0x12e0);
        try std.testing.expect(@offsetOf(@This(), "m_weaponScriptCB_") == 0x12e8);
        try std.testing.expect(@offsetOf(@This(), "m_modVars") == 0x1410);
        try std.testing.expect(@offsetOf(@This(), "m_tracerAttachment") == 0x20b0);
        try std.testing.expect(@offsetOf(@This(), "m_damageSourceIdentifier") == 0x20b8);
        try std.testing.expect(@offsetOf(@This(), "m_activityModifierSymbolForNameIsSet") == 0x20bc);
        try std.testing.expect(@offsetOf(@This(), "m_activityModifierSymbolForName") == 0x20be);
        try std.testing.expect(@offsetOf(@This(), "m_hasAltAnim_adsIn") == 0x20c0);
        try std.testing.expect(@offsetOf(@This(), "m_hasAltAnim_adsOut") == 0x20c3);
        try std.testing.expect(@offsetOf(@This(), "m_hasAltAnim_idle") == 0x20c6);
        try std.testing.expect(@offsetOf(@This(), "m_hasAltAnim_attack") == 0x20c9);
        try std.testing.expect(@offsetOf(@This(), "m_hasAltAnim_oneHandedAdsIn") == 0x20cc);
        try std.testing.expect(@offsetOf(@This(), "m_hasAltAnim_oneHandedAdsOut") == 0x20cf);
        try std.testing.expect(@offsetOf(@This(), "m_hasAltAnim_oneHandedIdle") == 0x20d2);
        try std.testing.expect(@offsetOf(@This(), "m_hasAltAnim_oneHandedAttack") == 0x20d5);
        try std.testing.expect(@offsetOf(@This(), "m_loopSoundActive_1p") == 0x20d8);
        try std.testing.expect(@offsetOf(@This(), "m_loopSoundActive_3p") == 0x20d9);
        try std.testing.expect(@offsetOf(@This(), "m_loopSoundActive_3pAsNPC") == 0x20da);
        try std.testing.expect(@offsetOf(@This(), "m_loopSoundLastAttackClockTime") == 0x20dc);
        try std.testing.expect(@offsetOf(@This(), "m_loopSoundLastAttackClockTimeWithFireDelay") == 0x20e0);
        try std.testing.expect(@offsetOf(@This(), "m_loopSoundCurrentParity") == 0x20e4);
        try std.testing.expect(@offsetOf(@This(), "m_loopSoundActiveParity_1p") == 0x20e8);
        try std.testing.expect(@offsetOf(@This(), "m_attackKickScale") == 0x20ec);
        try std.testing.expect(@offsetOf(@This(), "m_attackKickRollScale") == 0x20f0);
        try std.testing.expect(@offsetOf(@This(), "m_prevViewModelWpnStr") == 0x20f4);
        try std.testing.expect(@offsetOf(@This(), "m_prevWorldModelWpnStr") == 0x20f6);
        try std.testing.expect(@offsetOf(@This(), "m_prevHolsterModelWpnStr") == 0x20f8);
        try std.testing.expect(@offsetOf(@This(), "newProjectiles") == 0x20fc);
        try std.testing.expect(@offsetOf(@This(), "newProjectileCount") == 0x211c);
        try std.testing.expect(@offsetOf(@This(), "m_smartAmmoNextWeapon") == 0x2120);
        try std.testing.expect(@offsetOf(@This(), "m_smartAmmoPrevWeapon") == 0x2128);
        try std.testing.expect(@offsetOf(@This(), "m_npcUseCheckTime") == 0x2130);
        try std.testing.expect(@offsetOf(@This(), "m_npcUseCheckDist") == 0x2134);
        try std.testing.expect(@offsetOf(@This(), "m_sustainedDischargeNextPulseTime") == 0x2138);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
