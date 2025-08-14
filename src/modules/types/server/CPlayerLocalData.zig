pub const CPlayerLocalData = extern struct {
    vtable: *anyopaque,
    m_iHideHUD: i32, // +0x8 size: 0x4 (0x1 * 0x4) type 5
    m_vecOverViewpoint: m.Vector3, // +0xc size: 0xc (0x1 * 0xc) type 3
    m_duckToggleOn: bool, // +0x18 size: 0x1 (0x1 * 0x1) type 6
    gap_19: [3]abi.undefined,
    m_forceStance: i32, // +0x1c size: 0x4 (0x1 * 0x4) type 5
    m_nDuckTransitionTimeMsecs: i32, // +0x20 size: 0x4 (0x1 * 0x4) type 5
    m_superJumpsUsed: i32, // +0x24 size: 0x4 (0x1 * 0x4) type 5
    m_jumpedOffRodeo: bool, // +0x28 size: 0x1 (0x1 * 0x1) type 6
    gap_29: [3]abi.undefined,
    m_flSuitPower: f32, // +0x2c size: 0x4 (0x1 * 0x4) type 1
    m_flSuitJumpPower: f32, // +0x30 size: 0x4 (0x1 * 0x4) type 1
    m_flSuitGrapplePower: f32, // +0x34 size: 0x4 (0x1 * 0x4) type 1
    m_nStepside: i32, // +0x38 size: 0x4 (0x1 * 0x4) type 5
    m_flFallVelocity: f32, // +0x3c size: 0x4 (0x1 * 0x4) type 1
    m_nOldButtons: i32, // +0x40 size: 0x4 (0x1 * 0x4) type 5
    m_oldForwardMove: f32, // +0x44 size: 0x4 (0x1 * 0x4) type 1
    m_pOldSkyCamera: *server.CBaseEntity, // +0x48 size: 0x8 (0x1 * 0x8) type 12
    m_accelScale: f32, // +0x50 size: 0x4 (0x1 * 0x4) type 1
    m_powerRegenRateScale: f32, // +0x54 size: 0x4 (0x1 * 0x4) type 1
    m_dodgePowerDelayScale: f32, // +0x58 size: 0x4 (0x1 * 0x4) type 1
    m_bDrawViewmodel: bool, // +0x5c size: 0x1 (0x1 * 0x1) type 6
    gap_5d: [3]abi.undefined,
    m_flStepSize: f32, // +0x60 size: 0x4 (0x1 * 0x4) type 1
    m_bAllowAutoMovement: bool, // +0x64 size: 0x1 (0x1 * 0x1) type 6
    gap_65: [3]abi.undefined,
    m_airSlowMoFrac: f32, // +0x68 size: 0x4 (0x1 * 0x4) type 1
    predictableFlags: i32, // +0x6c size: 0x4 (0x1 * 0x4) type 5
    m_bitsActiveDevices: i32, // +0x70 size: 0x4 (0x1 * 0x4) type 5
    m_hSkyCamera: valve.EHANDLE, // +0x74 size: 0x4 (0x1 * 0x4) type 13
    m_skybox3d: server.sky3dparams_t, // +0x78 size: 0x68 (0x1 * 0x68) type 10
    m_PlayerFog: server.fogplayerparams_t, // +0xe0 size: 0x170 (0x1 * 0x170) type 10
    m_fog: server.fogparams_t, // +0x250 size: 0x50 (0x1 * 0x50) type 10
    m_audio: server.audioparams_t, // +0x2a0 size: 0x78 (0x1 * 0x78) type 10
    m_animNearZ: f32, // +0x318 size: 0x4 (0x1 * 0x4) type 1
    m_airMoveBlockPlanes: [2]m.Vector3, // +0x31c size: 0x18 (0x2 * 0xc) type 3
    m_airMoveBlockPlaneTime: f32, // +0x334 size: 0x4 (0x1 * 0x4) type 1
    m_airMoveBlockPlaneCount: i32, // +0x338 size: 0x4 (0x1 * 0x4) type 5
    m_queuedMeleePressTime: valve.time, // +0x33c size: 0x4 (0x1 * 0x4) type 16
    m_queuedGrappleMeleeTime: valve.time, // +0x340 size: 0x4 (0x1 * 0x4) type 16
    m_queuedMeleeAttackAnimEvent: bool, // +0x344 size: 0x1 (0x1 * 0x1) type 6
    m_disableMeleeUntilRelease: bool, // +0x345 size: 0x1 (0x1 * 0x1) type 6
    gap_346: [2]abi.undefined,
    m_meleePressTime: valve.time, // +0x348 size: 0x4 (0x1 * 0x4) type 16
    m_meleeDisabledCounter: i32, // +0x34c size: 0x4 (0x1 * 0x4) type 5
    lastAttacker: valve.EHANDLE, // +0x350 size: 0x4 (0x1 * 0x4) type 13
    attackedCount: i32, // +0x354 size: 0x4 (0x1 * 0x4) type 5
    m_trackedChildProjectileCount: i32, // +0x358 size: 0x4 (0x1 * 0x4) type 5
    m_oneHandedWeaponUsage: bool, // +0x35c size: 0x1 (0x1 * 0x1) type 6
    m_prevOneHandedWeaponUsage: bool, // +0x35d size: 0x1 (0x1 * 0x1) type 6
    gap_35e: [2]abi.undefined,
    m_flCockpitEntryTime: valve.time, // +0x360 size: 0x4 (0x1 * 0x4) type 16
    m_ejectStartTime: valve.time, // +0x364 size: 0x4 (0x1 * 0x4) type 16
    m_disembarkStartTime: valve.time, // +0x368 size: 0x4 (0x1 * 0x4) type 16
    m_hotDropImpactTime: valve.time, // +0x36c size: 0x4 (0x1 * 0x4) type 16
    m_outOfBoundsDeadTime: valve.time, // +0x370 size: 0x4 (0x1 * 0x4) type 16
    m_objectiveIndex: i32, // +0x374 size: 0x4 (0x1 * 0x4) type 5
    m_objectiveEntity: valve.EHANDLE, // +0x378 size: 0x4 (0x1 * 0x4) type 13
    m_objectiveEndTime: valve.time, // +0x37c size: 0x4 (0x1 * 0x4) type 16
    m_cinematicEventFlags: i32, // +0x380 size: 0x4 (0x1 * 0x4) type 5
    m_forcedDialogueOnly: bool, // +0x384 size: 0x1 (0x1 * 0x1) type 6
    gap_385: [3]abi.undefined,
    m_titanBuildTime: valve.time, // +0x388 size: 0x4 (0x1 * 0x4) type 16
    m_titanBubbleShieldTime: valve.time, // +0x38c size: 0x4 (0x1 * 0x4) type 16
    m_titanEmbarkEnabled: bool, // +0x390 size: 0x1 (0x1 * 0x1) type 6
    m_titanDisembarkEnabled: bool, // +0x391 size: 0x1 (0x1 * 0x1) type 6
    gap_392: [2]abi.undefined,
    m_voicePackIndex: i32, // +0x394 size: 0x4 (0x1 * 0x4) type 5
    m_playerAnimUpdateTime: f32, // +0x398 size: 0x4 (0x1 * 0x4) type 1
    m_playerAnimLastAimTurnTime: f32, // +0x39c size: 0x4 (0x1 * 0x4) type 1
    m_playerAnimCurrentFeetYaw: f32, // +0x3a0 size: 0x4 (0x1 * 0x4) type 1
    m_playerAnimEstimateYaw: f32, // +0x3a4 size: 0x4 (0x1 * 0x4) type 1
    m_playerAnimGoalFeetYaw: f32, // +0x3a8 size: 0x4 (0x1 * 0x4) type 1
    m_playerAnimJumping: bool, // +0x3ac size: 0x1 (0x1 * 0x1) type 6
    gap_3ad: [3]abi.undefined,
    m_playerAnimJumpStartTime: f32, // +0x3b0 size: 0x4 (0x1 * 0x4) type 1
    m_playerAnimFirstJumpFrame: bool, // +0x3b4 size: 0x1 (0x1 * 0x1) type 6
    m_playerAnimDodging: bool, // +0x3b5 size: 0x1 (0x1 * 0x1) type 6
    gap_3b6: [2]abi.undefined,
    m_playerLandStartTime: f32, // +0x3b8 size: 0x4 (0x1 * 0x4) type 1
    m_playerAnimJumpActivity: i32, // +0x3bc size: 0x4 (0x1 * 0x4) type 5
    m_playerAnimLastWallRunNormal: m.Vector3, // +0x3c0 size: 0xc (0x1 * 0xc) type 3
    m_playerAnimLanding: bool, // +0x3cc size: 0x1 (0x1 * 0x1) type 6
    m_playerAnimShouldLand: bool, // +0x3cd size: 0x1 (0x1 * 0x1) type 6
    gap_3ce: [2]abi.undefined,
    m_playerAnimLandStartTime: f32, // +0x3d0 size: 0x4 (0x1 * 0x4) type 1
    m_playerAnimInAirWalk: bool, // +0x3d4 size: 0x1 (0x1 * 0x1) type 6
    gap_3d5: [3]abi.undefined,
    m_playerAnimPrevFrameSequenceMotionYaw: f32, // +0x3d8 size: 0x4 (0x1 * 0x4) type 1
    m_playerAnimMovementPlaybackRate: f32, // +0x3dc size: 0x4 (0x1 * 0x4) type 1
    m_fake_playerAnimUpdateTime: f32, // +0x3e0 size: 0x4 (0x1 * 0x4) type 1
    m_fake_playerAnimLastAimTurnTime: f32, // +0x3e4 size: 0x4 (0x1 * 0x4) type 1
    m_fake_playerAnimCurrentFeetYaw: f32, // +0x3e8 size: 0x4 (0x1 * 0x4) type 1
    m_fake_playerAnimEstimateYaw: f32, // +0x3ec size: 0x4 (0x1 * 0x4) type 1
    m_fake_playerAnimGoalFeetYaw: f32, // +0x3f0 size: 0x4 (0x1 * 0x4) type 1
    m_fake_playerAnimJumping: bool, // +0x3f4 size: 0x1 (0x1 * 0x1) type 6
    gap_3f5: [3]abi.undefined,
    m_fake_playerAnimJumpStartTime: f32, // +0x3f8 size: 0x4 (0x1 * 0x4) type 1
    m_fake_playerAnimFirstJumpFrame: bool, // +0x3fc size: 0x1 (0x1 * 0x1) type 6
    m_fake_playerAnimDodging: bool, // +0x3fd size: 0x1 (0x1 * 0x1) type 6
    gap_3fe: [2]abi.undefined,
    m_fake_playerLandStartTime: f32, // +0x400 size: 0x4 (0x1 * 0x4) type 1
    m_fake_playerAnimJumpActivity: i32, // +0x404 size: 0x4 (0x1 * 0x4) type 5
    m_fake_playerAnimLastWallRunNormal: m.Vector3, // +0x408 size: 0xc (0x1 * 0xc) type 3
    m_fake_playerAnimLanding: bool, // +0x414 size: 0x1 (0x1 * 0x1) type 6
    m_fake_playerAnimShouldLand: bool, // +0x415 size: 0x1 (0x1 * 0x1) type 6
    gap_416: [2]abi.undefined,
    m_fake_playerAnimLandStartTime: f32, // +0x418 size: 0x4 (0x1 * 0x4) type 1
    m_fake_playerAnimInAirWalk: bool, // +0x41c size: 0x1 (0x1 * 0x1) type 6
    gap_41d: [3]abi.undefined,
    m_fake_playerAnimPrevFrameSequenceMotionYaw: f32, // +0x420 size: 0x4 (0x1 * 0x4) type 1
    m_fake_playerAnimMovementPlaybackRate: f32, // +0x424 size: 0x4 (0x1 * 0x4) type 1

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x428);
        try std.testing.expect(@offsetOf(@This(), "m_iHideHUD") == 0x8);
        try std.testing.expect(@offsetOf(@This(), "m_vecOverViewpoint") == 0xc);
        try std.testing.expect(@offsetOf(@This(), "m_duckToggleOn") == 0x18);
        try std.testing.expect(@offsetOf(@This(), "m_forceStance") == 0x1c);
        try std.testing.expect(@offsetOf(@This(), "m_nDuckTransitionTimeMsecs") == 0x20);
        try std.testing.expect(@offsetOf(@This(), "m_superJumpsUsed") == 0x24);
        try std.testing.expect(@offsetOf(@This(), "m_jumpedOffRodeo") == 0x28);
        try std.testing.expect(@offsetOf(@This(), "m_flSuitPower") == 0x2c);
        try std.testing.expect(@offsetOf(@This(), "m_flSuitJumpPower") == 0x30);
        try std.testing.expect(@offsetOf(@This(), "m_flSuitGrapplePower") == 0x34);
        try std.testing.expect(@offsetOf(@This(), "m_nStepside") == 0x38);
        try std.testing.expect(@offsetOf(@This(), "m_flFallVelocity") == 0x3c);
        try std.testing.expect(@offsetOf(@This(), "m_nOldButtons") == 0x40);
        try std.testing.expect(@offsetOf(@This(), "m_oldForwardMove") == 0x44);
        try std.testing.expect(@offsetOf(@This(), "m_pOldSkyCamera") == 0x48);
        try std.testing.expect(@offsetOf(@This(), "m_accelScale") == 0x50);
        try std.testing.expect(@offsetOf(@This(), "m_powerRegenRateScale") == 0x54);
        try std.testing.expect(@offsetOf(@This(), "m_dodgePowerDelayScale") == 0x58);
        try std.testing.expect(@offsetOf(@This(), "m_bDrawViewmodel") == 0x5c);
        try std.testing.expect(@offsetOf(@This(), "m_flStepSize") == 0x60);
        try std.testing.expect(@offsetOf(@This(), "m_bAllowAutoMovement") == 0x64);
        try std.testing.expect(@offsetOf(@This(), "m_airSlowMoFrac") == 0x68);
        try std.testing.expect(@offsetOf(@This(), "predictableFlags") == 0x6c);
        try std.testing.expect(@offsetOf(@This(), "m_bitsActiveDevices") == 0x70);
        try std.testing.expect(@offsetOf(@This(), "m_hSkyCamera") == 0x74);
        try std.testing.expect(@offsetOf(@This(), "m_skybox3d") == 0x78);
        try std.testing.expect(@offsetOf(@This(), "m_PlayerFog") == 0xe0);
        try std.testing.expect(@offsetOf(@This(), "m_fog") == 0x250);
        try std.testing.expect(@offsetOf(@This(), "m_audio") == 0x2a0);
        try std.testing.expect(@offsetOf(@This(), "m_animNearZ") == 0x318);
        try std.testing.expect(@offsetOf(@This(), "m_airMoveBlockPlanes") == 0x31c);
        try std.testing.expect(@offsetOf(@This(), "m_airMoveBlockPlaneTime") == 0x334);
        try std.testing.expect(@offsetOf(@This(), "m_airMoveBlockPlaneCount") == 0x338);
        try std.testing.expect(@offsetOf(@This(), "m_queuedMeleePressTime") == 0x33c);
        try std.testing.expect(@offsetOf(@This(), "m_queuedGrappleMeleeTime") == 0x340);
        try std.testing.expect(@offsetOf(@This(), "m_queuedMeleeAttackAnimEvent") == 0x344);
        try std.testing.expect(@offsetOf(@This(), "m_disableMeleeUntilRelease") == 0x345);
        try std.testing.expect(@offsetOf(@This(), "m_meleePressTime") == 0x348);
        try std.testing.expect(@offsetOf(@This(), "m_meleeDisabledCounter") == 0x34c);
        try std.testing.expect(@offsetOf(@This(), "lastAttacker") == 0x350);
        try std.testing.expect(@offsetOf(@This(), "attackedCount") == 0x354);
        try std.testing.expect(@offsetOf(@This(), "m_trackedChildProjectileCount") == 0x358);
        try std.testing.expect(@offsetOf(@This(), "m_oneHandedWeaponUsage") == 0x35c);
        try std.testing.expect(@offsetOf(@This(), "m_prevOneHandedWeaponUsage") == 0x35d);
        try std.testing.expect(@offsetOf(@This(), "m_flCockpitEntryTime") == 0x360);
        try std.testing.expect(@offsetOf(@This(), "m_ejectStartTime") == 0x364);
        try std.testing.expect(@offsetOf(@This(), "m_disembarkStartTime") == 0x368);
        try std.testing.expect(@offsetOf(@This(), "m_hotDropImpactTime") == 0x36c);
        try std.testing.expect(@offsetOf(@This(), "m_outOfBoundsDeadTime") == 0x370);
        try std.testing.expect(@offsetOf(@This(), "m_objectiveIndex") == 0x374);
        try std.testing.expect(@offsetOf(@This(), "m_objectiveEntity") == 0x378);
        try std.testing.expect(@offsetOf(@This(), "m_objectiveEndTime") == 0x37c);
        try std.testing.expect(@offsetOf(@This(), "m_cinematicEventFlags") == 0x380);
        try std.testing.expect(@offsetOf(@This(), "m_forcedDialogueOnly") == 0x384);
        try std.testing.expect(@offsetOf(@This(), "m_titanBuildTime") == 0x388);
        try std.testing.expect(@offsetOf(@This(), "m_titanBubbleShieldTime") == 0x38c);
        try std.testing.expect(@offsetOf(@This(), "m_titanEmbarkEnabled") == 0x390);
        try std.testing.expect(@offsetOf(@This(), "m_titanDisembarkEnabled") == 0x391);
        try std.testing.expect(@offsetOf(@This(), "m_voicePackIndex") == 0x394);
        try std.testing.expect(@offsetOf(@This(), "m_playerAnimUpdateTime") == 0x398);
        try std.testing.expect(@offsetOf(@This(), "m_playerAnimLastAimTurnTime") == 0x39c);
        try std.testing.expect(@offsetOf(@This(), "m_playerAnimCurrentFeetYaw") == 0x3a0);
        try std.testing.expect(@offsetOf(@This(), "m_playerAnimEstimateYaw") == 0x3a4);
        try std.testing.expect(@offsetOf(@This(), "m_playerAnimGoalFeetYaw") == 0x3a8);
        try std.testing.expect(@offsetOf(@This(), "m_playerAnimJumping") == 0x3ac);
        try std.testing.expect(@offsetOf(@This(), "m_playerAnimJumpStartTime") == 0x3b0);
        try std.testing.expect(@offsetOf(@This(), "m_playerAnimFirstJumpFrame") == 0x3b4);
        try std.testing.expect(@offsetOf(@This(), "m_playerAnimDodging") == 0x3b5);
        try std.testing.expect(@offsetOf(@This(), "m_playerLandStartTime") == 0x3b8);
        try std.testing.expect(@offsetOf(@This(), "m_playerAnimJumpActivity") == 0x3bc);
        try std.testing.expect(@offsetOf(@This(), "m_playerAnimLastWallRunNormal") == 0x3c0);
        try std.testing.expect(@offsetOf(@This(), "m_playerAnimLanding") == 0x3cc);
        try std.testing.expect(@offsetOf(@This(), "m_playerAnimShouldLand") == 0x3cd);
        try std.testing.expect(@offsetOf(@This(), "m_playerAnimLandStartTime") == 0x3d0);
        try std.testing.expect(@offsetOf(@This(), "m_playerAnimInAirWalk") == 0x3d4);
        try std.testing.expect(@offsetOf(@This(), "m_playerAnimPrevFrameSequenceMotionYaw") == 0x3d8);
        try std.testing.expect(@offsetOf(@This(), "m_playerAnimMovementPlaybackRate") == 0x3dc);
        try std.testing.expect(@offsetOf(@This(), "m_fake_playerAnimUpdateTime") == 0x3e0);
        try std.testing.expect(@offsetOf(@This(), "m_fake_playerAnimLastAimTurnTime") == 0x3e4);
        try std.testing.expect(@offsetOf(@This(), "m_fake_playerAnimCurrentFeetYaw") == 0x3e8);
        try std.testing.expect(@offsetOf(@This(), "m_fake_playerAnimEstimateYaw") == 0x3ec);
        try std.testing.expect(@offsetOf(@This(), "m_fake_playerAnimGoalFeetYaw") == 0x3f0);
        try std.testing.expect(@offsetOf(@This(), "m_fake_playerAnimJumping") == 0x3f4);
        try std.testing.expect(@offsetOf(@This(), "m_fake_playerAnimJumpStartTime") == 0x3f8);
        try std.testing.expect(@offsetOf(@This(), "m_fake_playerAnimFirstJumpFrame") == 0x3fc);
        try std.testing.expect(@offsetOf(@This(), "m_fake_playerAnimDodging") == 0x3fd);
        try std.testing.expect(@offsetOf(@This(), "m_fake_playerLandStartTime") == 0x400);
        try std.testing.expect(@offsetOf(@This(), "m_fake_playerAnimJumpActivity") == 0x404);
        try std.testing.expect(@offsetOf(@This(), "m_fake_playerAnimLastWallRunNormal") == 0x408);
        try std.testing.expect(@offsetOf(@This(), "m_fake_playerAnimLanding") == 0x414);
        try std.testing.expect(@offsetOf(@This(), "m_fake_playerAnimShouldLand") == 0x415);
        try std.testing.expect(@offsetOf(@This(), "m_fake_playerAnimLandStartTime") == 0x418);
        try std.testing.expect(@offsetOf(@This(), "m_fake_playerAnimInAirWalk") == 0x41c);
        try std.testing.expect(@offsetOf(@This(), "m_fake_playerAnimPrevFrameSequenceMotionYaw") == 0x420);
        try std.testing.expect(@offsetOf(@This(), "m_fake_playerAnimMovementPlaybackRate") == 0x424);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
