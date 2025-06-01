pub const WeaponPlayerData = extern struct {
    vtable: *anyopaque,
    m_spread: f32, // +0x8 size: 0x4 (0x1 * 0x4) type 1
    m_spreadStartTime: valve.time, // +0xc size: 0x4 (0x1 * 0x4) type 16
    m_spreadStartFracHip: f32, // +0x10 size: 0x4 (0x1 * 0x4) type 1
    m_spreadStartFracADS: f32, // +0x14 size: 0x4 (0x1 * 0x4) type 1
    m_kickSpreadHipfire: f32, // +0x18 size: 0x4 (0x1 * 0x4) type 1
    m_kickSpreadADS: f32, // +0x1c size: 0x4 (0x1 * 0x4) type 1
    m_kickTime: valve.time, // +0x20 size: 0x4 (0x1 * 0x4) type 16
    m_kickScaleBase: f32, // +0x24 size: 0x4 (0x1 * 0x4) type 1
    m_semiAutoTriggerHoldTime: f32, // +0x28 size: 0x4 (0x1 * 0x4) type 1
    m_semiAutoTriggerDown: bool, // +0x2c size: 0x1 (0x1 * 0x1) type 6
    m_pendingTriggerPull: bool, // +0x2d size: 0x1 (0x1 * 0x1) type 6
    m_semiAutoNeedsRechamber: bool, // +0x2e size: 0x1 (0x1 * 0x1) type 6
    m_pendingReloadAttempt: bool, // +0x2f size: 0x1 (0x1 * 0x1) type 6
    m_offhandHybridNormalMode: bool, // +0x30 size: 0x1 (0x1 * 0x1) type 6
    m_pendingoffhandHybridToss: bool, // +0x31 size: 0x1 (0x1 * 0x1) type 6
    m_fastHolster: bool, // +0x32 size: 0x1 (0x1 * 0x1) type 6
    m_didFirstDeploy: bool, // +0x33 size: 0x1 (0x1 * 0x1) type 6
    m_shouldCatch: bool, // +0x34 size: 0x1 (0x1 * 0x1) type 6
    m_clipModelIsHidden: bool, // +0x35 size: 0x1 (0x1 * 0x1) type 6
    m_customActivityPlayRaiseOnComplete: bool, // +0x36 size: 0x1 (0x1 * 0x1) type 6
    m_segmentedReloadEndSeqRequired: bool, // +0x37 size: 0x1 (0x1 * 0x1) type 6
    m_segmentedReloadStartedEmpty: bool, // +0x38 size: 0x1 (0x1 * 0x1) type 6
    m_segmentedReloadStartedOneHanded: bool, // +0x39 size: 0x1 (0x1 * 0x1) type 6
    m_segmentedReloadCanRestartLoop: bool, // +0x3a size: 0x1 (0x1 * 0x1) type 6
    m_segmentedReloadLoopFireLocked: bool, // +0x3b size: 0x1 (0x1 * 0x1) type 6
    m_customActivityAttachedModelIndex: i32, // +0x3c size: 0x4 (0x1 * 0x4) type 5
    m_customActivityAttachedModelAttachmentIndex: i32, // +0x40 size: 0x4 (0x1 * 0x4) type 5
    m_fireRateLerp_startTime: valve.time, // +0x44 size: 0x4 (0x1 * 0x4) type 16
    m_fireRateLerp_startFraction: f32, // +0x48 size: 0x4 (0x1 * 0x4) type 1
    m_fireRateLerp_stopTime: valve.time, // +0x4c size: 0x4 (0x1 * 0x4) type 16
    m_fireRateLerp_stopFraction: f32, // +0x50 size: 0x4 (0x1 * 0x4) type 1
    m_chargeAnimIndex: i32, // +0x54 size: 0x4 (0x1 * 0x4) type 5
    m_chargeAnimIndexOld: i32, // +0x58 size: 0x4 (0x1 * 0x4) type 5
    m_proScreen_owner: valve.EHANDLE, // +0x5c size: 0x4 (0x1 * 0x4) type 13
    m_proScreen_int0: i32, // +0x60 size: 0x4 (0x1 * 0x4) type 5
    m_proScreen_int1: i32, // +0x64 size: 0x4 (0x1 * 0x4) type 5
    m_proScreen_int2: i32, // +0x68 size: 0x4 (0x1 * 0x4) type 5
    m_proScreen_float0: f32, // +0x6c size: 0x4 (0x1 * 0x4) type 1
    m_proScreen_float1: f32, // +0x70 size: 0x4 (0x1 * 0x4) type 1
    m_proScreen_float2: f32, // +0x74 size: 0x4 (0x1 * 0x4) type 1
    m_reloadMilestone: i32, // +0x78 size: 0x4 (0x1 * 0x4) type 5
    m_fullReloadStartTime: valve.time, // +0x7c size: 0x4 (0x1 * 0x4) type 16
    m_scriptTime0: valve.time, // +0x80 size: 0x4 (0x1 * 0x4) type 16
    m_scriptFlags0: i32, // +0x84 size: 0x4 (0x1 * 0x4) type 5
    m_curZoomFOV: f32, // +0x88 size: 0x4 (0x1 * 0x4) type 1
    m_targetZoomFOV: f32, // +0x8c size: 0x4 (0x1 * 0x4) type 1
    m_zoomFOVLerpTime: f32, // +0x90 size: 0x4 (0x1 * 0x4) type 1
    m_zoomFOVLerpEndTime: valve.time, // +0x94 size: 0x4 (0x1 * 0x4) type 16
    m_latestDryfireTime: valve.time, // +0x98 size: 0x4 (0x1 * 0x4) type 16
    m_lastRequestedAttackTime: valve.time, // +0x9c size: 0x4 (0x1 * 0x4) type 16
    m_currentAltFireAnimIndex: i32, // +0xa0 size: 0x4 (0x1 * 0x4) type 5

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xa8);
        try std.testing.expect(@offsetOf(@This(), "m_spread") == 0x8);
        try std.testing.expect(@offsetOf(@This(), "m_spreadStartTime") == 0xc);
        try std.testing.expect(@offsetOf(@This(), "m_spreadStartFracHip") == 0x10);
        try std.testing.expect(@offsetOf(@This(), "m_spreadStartFracADS") == 0x14);
        try std.testing.expect(@offsetOf(@This(), "m_kickSpreadHipfire") == 0x18);
        try std.testing.expect(@offsetOf(@This(), "m_kickSpreadADS") == 0x1c);
        try std.testing.expect(@offsetOf(@This(), "m_kickTime") == 0x20);
        try std.testing.expect(@offsetOf(@This(), "m_kickScaleBase") == 0x24);
        try std.testing.expect(@offsetOf(@This(), "m_semiAutoTriggerHoldTime") == 0x28);
        try std.testing.expect(@offsetOf(@This(), "m_semiAutoTriggerDown") == 0x2c);
        try std.testing.expect(@offsetOf(@This(), "m_pendingTriggerPull") == 0x2d);
        try std.testing.expect(@offsetOf(@This(), "m_semiAutoNeedsRechamber") == 0x2e);
        try std.testing.expect(@offsetOf(@This(), "m_pendingReloadAttempt") == 0x2f);
        try std.testing.expect(@offsetOf(@This(), "m_offhandHybridNormalMode") == 0x30);
        try std.testing.expect(@offsetOf(@This(), "m_pendingoffhandHybridToss") == 0x31);
        try std.testing.expect(@offsetOf(@This(), "m_fastHolster") == 0x32);
        try std.testing.expect(@offsetOf(@This(), "m_didFirstDeploy") == 0x33);
        try std.testing.expect(@offsetOf(@This(), "m_shouldCatch") == 0x34);
        try std.testing.expect(@offsetOf(@This(), "m_clipModelIsHidden") == 0x35);
        try std.testing.expect(@offsetOf(@This(), "m_customActivityPlayRaiseOnComplete") == 0x36);
        try std.testing.expect(@offsetOf(@This(), "m_segmentedReloadEndSeqRequired") == 0x37);
        try std.testing.expect(@offsetOf(@This(), "m_segmentedReloadStartedEmpty") == 0x38);
        try std.testing.expect(@offsetOf(@This(), "m_segmentedReloadStartedOneHanded") == 0x39);
        try std.testing.expect(@offsetOf(@This(), "m_segmentedReloadCanRestartLoop") == 0x3a);
        try std.testing.expect(@offsetOf(@This(), "m_segmentedReloadLoopFireLocked") == 0x3b);
        try std.testing.expect(@offsetOf(@This(), "m_customActivityAttachedModelIndex") == 0x3c);
        try std.testing.expect(@offsetOf(@This(), "m_customActivityAttachedModelAttachmentIndex") == 0x40);
        try std.testing.expect(@offsetOf(@This(), "m_fireRateLerp_startTime") == 0x44);
        try std.testing.expect(@offsetOf(@This(), "m_fireRateLerp_startFraction") == 0x48);
        try std.testing.expect(@offsetOf(@This(), "m_fireRateLerp_stopTime") == 0x4c);
        try std.testing.expect(@offsetOf(@This(), "m_fireRateLerp_stopFraction") == 0x50);
        try std.testing.expect(@offsetOf(@This(), "m_chargeAnimIndex") == 0x54);
        try std.testing.expect(@offsetOf(@This(), "m_chargeAnimIndexOld") == 0x58);
        try std.testing.expect(@offsetOf(@This(), "m_proScreen_owner") == 0x5c);
        try std.testing.expect(@offsetOf(@This(), "m_proScreen_int0") == 0x60);
        try std.testing.expect(@offsetOf(@This(), "m_proScreen_int1") == 0x64);
        try std.testing.expect(@offsetOf(@This(), "m_proScreen_int2") == 0x68);
        try std.testing.expect(@offsetOf(@This(), "m_proScreen_float0") == 0x6c);
        try std.testing.expect(@offsetOf(@This(), "m_proScreen_float1") == 0x70);
        try std.testing.expect(@offsetOf(@This(), "m_proScreen_float2") == 0x74);
        try std.testing.expect(@offsetOf(@This(), "m_reloadMilestone") == 0x78);
        try std.testing.expect(@offsetOf(@This(), "m_fullReloadStartTime") == 0x7c);
        try std.testing.expect(@offsetOf(@This(), "m_scriptTime0") == 0x80);
        try std.testing.expect(@offsetOf(@This(), "m_scriptFlags0") == 0x84);
        try std.testing.expect(@offsetOf(@This(), "m_curZoomFOV") == 0x88);
        try std.testing.expect(@offsetOf(@This(), "m_targetZoomFOV") == 0x8c);
        try std.testing.expect(@offsetOf(@This(), "m_zoomFOVLerpTime") == 0x90);
        try std.testing.expect(@offsetOf(@This(), "m_zoomFOVLerpEndTime") == 0x94);
        try std.testing.expect(@offsetOf(@This(), "m_latestDryfireTime") == 0x98);
        try std.testing.expect(@offsetOf(@This(), "m_lastRequestedAttackTime") == 0x9c);
        try std.testing.expect(@offsetOf(@This(), "m_currentAltFireAnimIndex") == 0xa0);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");