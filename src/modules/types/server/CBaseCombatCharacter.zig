pub const CBaseCombatCharacter = extern struct {
    vtable: *anyopaque,
    CBaseAnimatingOverlay: abi.Inherit(server.CBaseAnimatingOverlay),

    m_bPreventWeaponPickup: bool, // +0x1210 size: 0x1 (0x1 * 0x1) type 6
    gap_1211: [3]abi.undefined,
    m_phaseShiftTimeStart: valve.time, // +0x1214 size: 0x4 (0x1 * 0x4) type 16
    m_phaseShiftTimeEnd: valve.time, // +0x1218 size: 0x4 (0x1 * 0x4) type 16
    m_flNextAttack: valve.time, // +0x121c size: 0x4 (0x1 * 0x4) type 16
    m_lastFiredTime: valve.time, // +0x1220 size: 0x4 (0x1 * 0x4) type 16
    m_raiseFromMeleeEndTime: f32, // +0x1224 size: 0x4 (0x1 * 0x4) type 1
    m_sharedEnergyCount: i32, // +0x1228 size: 0x4 (0x1 * 0x4) type 5
    m_sharedEnergyTotal: i32, // +0x122c size: 0x4 (0x1 * 0x4) type 5
    m_lastSharedEnergyRegenTime: f32, // +0x1230 size: 0x4 (0x1 * 0x4) type 1
    m_sharedEnergyRegenRate: f32, // +0x1234 size: 0x4 (0x1 * 0x4) type 1
    m_sharedEnergyRegenDelay: f32, // +0x1238 size: 0x4 (0x1 * 0x4) type 1
    m_lastSharedEnergyTakeTime: f32, // +0x123c size: 0x4 (0x1 * 0x4) type 1
    m_eHull: i32, // +0x1240 size: 0x4 (0x1 * 0x4) type 5
    m_fieldOfViewCos: f32, // +0x1244 size: 0x4 (0x1 * 0x4) type 1
    m_HackedGunPos: m.Vector3, // +0x1248 size: 0xc (0x1 * 0xc) type 3
    m_impactEnergyScale: f32, // +0x1254 size: 0x4 (0x1 * 0x4) type 1
    m_weaponDropInfo: server.WeaponDropInfo, // +0x1258 size: 0x20 (0x1 * 0x20) type 10
    m_physicsMass: f32, // +0x1278 size: 0x4 (0x1 * 0x4) type 1
    m_flDamageAccumulator: f32, // +0x127c size: 0x4 (0x1 * 0x4) type 1
    m_prevHealth: i32, // +0x1280 size: 0x4 (0x1 * 0x4) type 5
    m_healthChangeRate: f32, // +0x1284 size: 0x4 (0x1 * 0x4) type 1
    m_healthChangeAmount: f32, // +0x1288 size: 0x4 (0x1 * 0x4) type 1
    m_healthChangeStartTime: f32, // +0x128c size: 0x4 (0x1 * 0x4) type 1
    m_lastHealthChangeTime: f32, // +0x1290 size: 0x4 (0x1 * 0x4) type 1
    m_lastHitGroup: i32, // +0x1294 size: 0x4 (0x1 * 0x4) type 5
    m_lastDamageDir: m.Vector3, // +0x1298 size: 0xc (0x1 * 0xc) type 3
    m_lastDamageForce: m.Vector3, // +0x12a4 size: 0xc (0x1 * 0xc) type 3
    m_deathPackage: i32, // +0x12b0 size: 0x4 (0x1 * 0x4) type 5
    m_deathDirection2DInverse: m.Vector3, // +0x12b4 size: 0xc (0x1 * 0xc) type 3
    m_CurrentWeaponProficiency: i32, // +0x12c0 size: 0x4 (0x1 * 0x4) type 5
    m_flEnemyAccurcyMultiplier: f32, // +0x12c4 size: 0x4 (0x1 * 0x4) type 1
    m_npcPriorityOverride: i32, // +0x12c8 size: 0x4 (0x1 * 0x4) type 5
    m_healthPerSegment: i32, // +0x12cc size: 0x4 (0x1 * 0x4) type 5
    m_hTriggerFogList: [32]abi.undefined, // +0x12d0 size: 0x20 (0x1 * 0x20) type 11
    m_hLastFogTrigger: valve.EHANDLE, // +0x12f0 size: 0x4 (0x1 * 0x4) type 13
    gap_12f4: [4]abi.undefined,
    m_inventory: server.WeaponInventory, // +0x12f8 size: 0x38 (0x1 * 0x38) type 10
    m_selectedWeapon: valve.EHANDLE, // +0x1330 size: 0x4 (0x1 * 0x4) type 13
    m_latestPrimaryWeapon: valve.EHANDLE, // +0x1334 size: 0x4 (0x1 * 0x4) type 13
    m_latestNonOffhandWeapon: valve.EHANDLE, // +0x1338 size: 0x4 (0x1 * 0x4) type 13
    m_lastCycleSlot: i32, // +0x133c size: 0x4 (0x1 * 0x4) type 5
    m_removeWeaponOnSelectSwitch: valve.EHANDLE, // +0x1340 size: 0x4 (0x1 * 0x4) type 13
    m_weaponGettingSwitchedOut: valve.EHANDLE, // +0x1344 size: 0x4 (0x1 * 0x4) type 13
    m_showNewWeapon3p: bool, // +0x1348 size: 0x1 (0x1 * 0x1) type 6
    gap_1349: [3]abi.undefined,
    m_weaponPermission: i32, // +0x134c size: 0x4 (0x1 * 0x4) type 5
    m_weaponDisabled: bool, // +0x1350 size: 0x1 (0x1 * 0x1) type 6
    m_hudInfo_visibilityTestAlwaysPasses: bool, // +0x1351 size: 0x1 (0x1 * 0x1) type 6
    gap_1352: [2]abi.undefined,
    m_selectedOffhand: valve.EHANDLE, // +0x1354 size: 0x4 (0x1 * 0x4) type 13
    m_selectedOffhandPendingHybridAction: i32, // +0x1358 size: 0x4 (0x1 * 0x4) type 5
    m_doOffhandAnim: bool, // +0x135c size: 0x1 (0x1 * 0x1) type 6
    m_wantInventoryChangedScriptCall: bool, // +0x135d size: 0x1 (0x1 * 0x1) type 6
    m_doInventoryChangedScriptCall: bool, // +0x135e size: 0x1 (0x1 * 0x1) type 6
    gap_135f: [1]abi.undefined,
    m_cloakReactEndTime: f32, // +0x1360 size: 0x4 (0x1 * 0x4) type 1
    gap_1364: [4]abi.undefined,
    m_tethers: [2]server.CTether, // +0x1368 size: 0x28 (0x2 * 0x14) type 10
    m_titanSoul: valve.EHANDLE, // +0x13b8 size: 0x4 (0x1 * 0x4) type 13
    m_lastFootstepDamagePos: m.Vector3, // +0x13bc size: 0xc (0x1 * 0xc) type 3
    m_muzzleAttachment: [2]i32, // +0x13c8 size: 0x8 (0x2 * 0x4) type 5
    m_prevNearestNode: i32, // +0x13d0 size: 0x4 (0x1 * 0x4) type 5
    m_nearestNode: i32, // +0x13d4 size: 0x4 (0x1 * 0x4) type 5
    m_nearestNodeCheckTime: valve.time, // +0x13d8 size: 0x4 (0x1 * 0x4) type 16
    m_nearestNodeCheckPos: m.Vector3, // +0x13dc size: 0xc (0x1 * 0xc) type 3
    m_nearestPolyRef: [4]i32, // +0x13e8 size: 0x10 (0x4 * 0x4) type 5
    m_nearestPolyCheckPos: [4]m.Vector3, // +0x13f8 size: 0x30 (0x4 * 0xc) type 3
    m_meleeExecutionUnstuckPosition: m.Vector3, // +0x1428 size: 0xc (0x1 * 0xc) type 3
    m_meleeExecutionEntityBlocker: valve.EHANDLE, // +0x1434 size: 0x4 (0x1 * 0x4) type 13
    m_contextAction: i32, // +0x1438 size: 0x4 (0x1 * 0x4) type 5
    m_targetInfoIconName: [64]u8, // +0x143c size: 0x40 (0x40 * 0x1) type 8
    m_rodeoRiders: [5]valve.EHANDLE, // +0x147c size: 0x14 (0x5 * 0x4) type 13
    m_numRodeoSlots: i32, // +0x1490 size: 0x4 (0x1 * 0x4) type 5

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x1498);
        try std.testing.expect(@offsetOf(@This(), "m_bPreventWeaponPickup") == 0x1210);
        try std.testing.expect(@offsetOf(@This(), "m_phaseShiftTimeStart") == 0x1214);
        try std.testing.expect(@offsetOf(@This(), "m_phaseShiftTimeEnd") == 0x1218);
        try std.testing.expect(@offsetOf(@This(), "m_flNextAttack") == 0x121c);
        try std.testing.expect(@offsetOf(@This(), "m_lastFiredTime") == 0x1220);
        try std.testing.expect(@offsetOf(@This(), "m_raiseFromMeleeEndTime") == 0x1224);
        try std.testing.expect(@offsetOf(@This(), "m_sharedEnergyCount") == 0x1228);
        try std.testing.expect(@offsetOf(@This(), "m_sharedEnergyTotal") == 0x122c);
        try std.testing.expect(@offsetOf(@This(), "m_lastSharedEnergyRegenTime") == 0x1230);
        try std.testing.expect(@offsetOf(@This(), "m_sharedEnergyRegenRate") == 0x1234);
        try std.testing.expect(@offsetOf(@This(), "m_sharedEnergyRegenDelay") == 0x1238);
        try std.testing.expect(@offsetOf(@This(), "m_lastSharedEnergyTakeTime") == 0x123c);
        try std.testing.expect(@offsetOf(@This(), "m_eHull") == 0x1240);
        try std.testing.expect(@offsetOf(@This(), "m_fieldOfViewCos") == 0x1244);
        try std.testing.expect(@offsetOf(@This(), "m_HackedGunPos") == 0x1248);
        try std.testing.expect(@offsetOf(@This(), "m_impactEnergyScale") == 0x1254);
        try std.testing.expect(@offsetOf(@This(), "m_weaponDropInfo") == 0x1258);
        try std.testing.expect(@offsetOf(@This(), "m_physicsMass") == 0x1278);
        try std.testing.expect(@offsetOf(@This(), "m_flDamageAccumulator") == 0x127c);
        try std.testing.expect(@offsetOf(@This(), "m_prevHealth") == 0x1280);
        try std.testing.expect(@offsetOf(@This(), "m_healthChangeRate") == 0x1284);
        try std.testing.expect(@offsetOf(@This(), "m_healthChangeAmount") == 0x1288);
        try std.testing.expect(@offsetOf(@This(), "m_healthChangeStartTime") == 0x128c);
        try std.testing.expect(@offsetOf(@This(), "m_lastHealthChangeTime") == 0x1290);
        try std.testing.expect(@offsetOf(@This(), "m_lastHitGroup") == 0x1294);
        try std.testing.expect(@offsetOf(@This(), "m_lastDamageDir") == 0x1298);
        try std.testing.expect(@offsetOf(@This(), "m_lastDamageForce") == 0x12a4);
        try std.testing.expect(@offsetOf(@This(), "m_deathPackage") == 0x12b0);
        try std.testing.expect(@offsetOf(@This(), "m_deathDirection2DInverse") == 0x12b4);
        try std.testing.expect(@offsetOf(@This(), "m_CurrentWeaponProficiency") == 0x12c0);
        try std.testing.expect(@offsetOf(@This(), "m_flEnemyAccurcyMultiplier") == 0x12c4);
        try std.testing.expect(@offsetOf(@This(), "m_npcPriorityOverride") == 0x12c8);
        try std.testing.expect(@offsetOf(@This(), "m_healthPerSegment") == 0x12cc);
        try std.testing.expect(@offsetOf(@This(), "m_hTriggerFogList") == 0x12d0);
        try std.testing.expect(@offsetOf(@This(), "m_hLastFogTrigger") == 0x12f0);
        try std.testing.expect(@offsetOf(@This(), "m_inventory") == 0x12f8);
        try std.testing.expect(@offsetOf(@This(), "m_selectedWeapon") == 0x1330);
        try std.testing.expect(@offsetOf(@This(), "m_latestPrimaryWeapon") == 0x1334);
        try std.testing.expect(@offsetOf(@This(), "m_latestNonOffhandWeapon") == 0x1338);
        try std.testing.expect(@offsetOf(@This(), "m_lastCycleSlot") == 0x133c);
        try std.testing.expect(@offsetOf(@This(), "m_removeWeaponOnSelectSwitch") == 0x1340);
        try std.testing.expect(@offsetOf(@This(), "m_weaponGettingSwitchedOut") == 0x1344);
        try std.testing.expect(@offsetOf(@This(), "m_showNewWeapon3p") == 0x1348);
        try std.testing.expect(@offsetOf(@This(), "m_weaponPermission") == 0x134c);
        try std.testing.expect(@offsetOf(@This(), "m_weaponDisabled") == 0x1350);
        try std.testing.expect(@offsetOf(@This(), "m_hudInfo_visibilityTestAlwaysPasses") == 0x1351);
        try std.testing.expect(@offsetOf(@This(), "m_selectedOffhand") == 0x1354);
        try std.testing.expect(@offsetOf(@This(), "m_selectedOffhandPendingHybridAction") == 0x1358);
        try std.testing.expect(@offsetOf(@This(), "m_doOffhandAnim") == 0x135c);
        try std.testing.expect(@offsetOf(@This(), "m_wantInventoryChangedScriptCall") == 0x135d);
        try std.testing.expect(@offsetOf(@This(), "m_doInventoryChangedScriptCall") == 0x135e);
        try std.testing.expect(@offsetOf(@This(), "m_cloakReactEndTime") == 0x1360);
        try std.testing.expect(@offsetOf(@This(), "m_tethers") == 0x1368);
        try std.testing.expect(@offsetOf(@This(), "m_titanSoul") == 0x13b8);
        try std.testing.expect(@offsetOf(@This(), "m_lastFootstepDamagePos") == 0x13bc);
        try std.testing.expect(@offsetOf(@This(), "m_muzzleAttachment") == 0x13c8);
        try std.testing.expect(@offsetOf(@This(), "m_prevNearestNode") == 0x13d0);
        try std.testing.expect(@offsetOf(@This(), "m_nearestNode") == 0x13d4);
        try std.testing.expect(@offsetOf(@This(), "m_nearestNodeCheckTime") == 0x13d8);
        try std.testing.expect(@offsetOf(@This(), "m_nearestNodeCheckPos") == 0x13dc);
        try std.testing.expect(@offsetOf(@This(), "m_nearestPolyRef") == 0x13e8);
        try std.testing.expect(@offsetOf(@This(), "m_nearestPolyCheckPos") == 0x13f8);
        try std.testing.expect(@offsetOf(@This(), "m_meleeExecutionUnstuckPosition") == 0x1428);
        try std.testing.expect(@offsetOf(@This(), "m_meleeExecutionEntityBlocker") == 0x1434);
        try std.testing.expect(@offsetOf(@This(), "m_contextAction") == 0x1438);
        try std.testing.expect(@offsetOf(@This(), "m_targetInfoIconName") == 0x143c);
        try std.testing.expect(@offsetOf(@This(), "m_rodeoRiders") == 0x147c);
        try std.testing.expect(@offsetOf(@This(), "m_numRodeoSlots") == 0x1490);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
