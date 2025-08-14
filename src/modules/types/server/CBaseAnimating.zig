pub const CBaseAnimating = extern struct {
    vtable: *anyopaque,
    CBaseEntity: abi.Inherit(server.CBaseEntity),

    m_bCanUseFastPathFromServer: bool, // +0x9e0 size: 0x1 (0x1 * 0x1) type 6
    gap_9e1: [3]abi.undefined,
    m_flGroundSpeed: f32, // +0x9e4 size: 0x4 (0x1 * 0x4) type 1
    m_flLastEventCheck: valve.time, // +0x9e8 size: 0x4 (0x1 * 0x4) type 16
    m_nForceBone: i32, // +0x9ec size: 0x4 (0x1 * 0x4) type 5
    m_vecForce: m.Vector3, // +0x9f0 size: 0xc (0x1 * 0xc) type 3
    m_nSkin: i32, // +0x9fc size: 0x4 (0x1 * 0x4) type 5
    m_nBody: i32, // +0xa00 size: 0x4 (0x1 * 0x4) type 5
    m_camoIndex: i32, // +0xa04 size: 0x4 (0x1 * 0x4) type 5
    m_decalIndex: i32, // +0xa08 size: 0x4 (0x1 * 0x4) type 5
    m_nHitboxSet: i32, // +0xa0c size: 0x4 (0x1 * 0x4) type 5
    m_flModelScale: f32, // +0xa10 size: 0x4 (0x1 * 0x4) type 1
    m_nRagdollImpactFXTableId: i32, // +0xa14 size: 0x4 (0x1 * 0x4) type 5
    m_flSkyScaleStartTime: f32, // +0xa18 size: 0x4 (0x1 * 0x4) type 1
    m_flSkyScaleEndTime: f32, // +0xa1c size: 0x4 (0x1 * 0x4) type 1
    m_flSkyScaleStartValue: f32, // +0xa20 size: 0x4 (0x1 * 0x4) type 1
    m_flSkyScaleEndValue: f32, // +0xa24 size: 0x4 (0x1 * 0x4) type 1
    m_SequenceTransitioner: [376]abi.undefined, // +0xa28 size: 0x178 (0x1 * 0x178) type 0
    m_flIKGroundContactTime: valve.time, // +0xba0 size: 0x4 (0x1 * 0x4) type 16
    m_flIKGroundMinHeight: f32, // +0xba4 size: 0x4 (0x1 * 0x4) type 1
    m_flIKGroundMaxHeight: f32, // +0xba8 size: 0x4 (0x1 * 0x4) type 1
    m_flEstIkFloor: f32, // +0xbac size: 0x4 (0x1 * 0x4) type 1
    m_flEstIkOffset: f32, // +0xbb0 size: 0x4 (0x1 * 0x4) type 1
    gap_bb4: [4]abi.undefined,
    m_pIk: [8]abi.undefined, // +0xbb8 size: 0x8 (0x1 * 0x8) type 11
    m_ikPrevSequence: i32, // +0xbc0 size: 0x4 (0x1 * 0x4) type 5
    m_bSequenceFinished: bool, // +0xbc4 size: 0x1 (0x1 * 0x1) type 6
    m_bSequenceLooped: bool, // +0xbc5 size: 0x1 (0x1 * 0x1) type 6
    m_bSequenceLoops: bool, // +0xbc6 size: 0x1 (0x1 * 0x1) type 6
    gap_bc7: [1]abi.undefined,
    m_numSequenceLoops: i32, // +0xbc8 size: 0x4 (0x1 * 0x4) type 5
    m_continueAnimatingAfterRagdoll: bool, // +0xbcc size: 0x1 (0x1 * 0x1) type 6
    m_useLockedAnimDeltaYaw: bool, // +0xbcd size: 0x1 (0x1 * 0x1) type 6
    gap_bce: [2]abi.undefined,
    m_lockedAnimDeltaYaw: f32, // +0xbd0 size: 0x4 (0x1 * 0x4) type 1
    m_threadedBoneSetup: bool, // +0xbd4 size: 0x1 (0x1 * 0x1) type 6
    m_settingUpBones: bool, // +0xbd5 size: 0x1 (0x1 * 0x1) type 6
    gap_bd6: [2]abi.undefined,
    m_flDissolveStartTime: valve.time, // +0xbd8 size: 0x4 (0x1 * 0x4) type 16
    m_baseAnimatingActivity: i32, // +0xbdc size: 0x4 (0x1 * 0x4) type 5
    m_flPoseParameter: [11]f32, // +0xbe0 size: 0x2c (0xb * 0x4) type 1
    m_poseParameterOverTimeActive: bool, // +0xc0c size: 0x1 (0x1 * 0x1) type 6
    gap_c0d: [3]abi.undefined,
    m_poseParameterGoalValue: [11]f32, // +0xc10 size: 0x2c (0xb * 0x4) type 1
    m_poseParameterEndTime: [11]valve.time, // +0xc3c size: 0x2c (0xb * 0x4) type 16
    m_lastTimeSetPoseParametersSameAs: f32, // +0xc68 size: 0x4 (0x1 * 0x4) type 1
    m_bClientSideAnimation: bool, // +0xc6c size: 0x1 (0x1 * 0x1) type 6
    m_bReallyClientSideAnimation: bool, // +0xc6d size: 0x1 (0x1 * 0x1) type 6
    gap_c6e: [2]abi.undefined,
    m_nNewSequenceParity: i32, // +0xc70 size: 0x4 (0x1 * 0x4) type 5
    m_nResetEventsParity: i32, // +0xc74 size: 0x4 (0x1 * 0x4) type 5
    m_boneCacheHandle: *anyopaque, // +0xc78 size: 0x8 (0x1 * 0x8) type 31
    m_fBoneCacheFlags: i16, // +0xc80 size: 0x2 (0x1 * 0x2) type 7
    gap_c82: [2]abi.undefined,
    m_animNetworkFlags: i32, // +0xc84 size: 0x4 (0x1 * 0x4) type 5
    m_animActive: bool, // +0xc88 size: 0x1 (0x1 * 0x1) type 6
    m_animCollisionEnabled: bool, // +0xc89 size: 0x1 (0x1 * 0x1) type 6
    m_animInitialCorrection: bool, // +0xc8a size: 0x1 (0x1 * 0x1) type 6
    m_animWaitingForCleanup: bool, // +0xc8b size: 0x1 (0x1 * 0x1) type 6
    m_animWaitingForCleanupTime: i32, // +0xc8c size: 0x4 (0x1 * 0x4) type 5
    m_recordedAnim: *anyopaque, // +0xc90 size: 0x8 (0x1 * 0x8) type 31
    m_recordedAnimIndex: i32, // +0xc98 size: 0x4 (0x1 * 0x4) type 5
    m_recordedAnimCachedFrameIndex: i32, // +0xc9c size: 0x4 (0x1 * 0x4) type 5
    m_recordedAnimPlaybackRate: f32, // +0xca0 size: 0x4 (0x1 * 0x4) type 1
    m_recordedAnimPlaybackTime: f32, // +0xca4 size: 0x4 (0x1 * 0x4) type 1
    m_recordedAnimTransform: valve.Matrix3x4, // +0xca8 size: 0x30 (0x1 * 0x30) type 24
    m_recordedAnimPlaybackEnt: valve.EHANDLE, // +0xcd8 size: 0x4 (0x1 * 0x4) type 13
    m_recordedAnimBlendTime: f32, // +0xcdc size: 0x4 (0x1 * 0x4) type 1
    m_recordedAnimBlendOffset: m.Vector3, // +0xce0 size: 0xc (0x1 * 0xc) type 3
    m_recordedAnimBlendAngles: m.Vector3, // +0xcec size: 0xc (0x1 * 0xc) type 3
    m_animRelativeData: server.AnimRelativeData, // +0xcf8 size: 0x80 (0x1 * 0x80) type 10
    m_syncingWithEntity: valve.EHANDLE, // +0xd78 size: 0x4 (0x1 * 0x4) type 13
    gap_d7c: [4]abi.undefined,
    m_predictedAnimEventData: server.PredictedAnimEventData, // +0xd80 size: 0x60 (0x1 * 0x60) type 10
    m_animRefEntityAttachmentIndex: i32, // +0xde0 size: 0x4 (0x1 * 0x4) type 5
    m_fireAttachmentSmartAmmoIndex: i32, // +0xde4 size: 0x4 (0x1 * 0x4) type 5
    m_fireAttachmentChestFocusIndex: i32, // +0xde8 size: 0x4 (0x1 * 0x4) type 5
    m_fireAttachmentModelIndex: i32, // +0xdec size: 0x4 (0x1 * 0x4) type 5
    m_keyHitboxes: [160]abi.undefined, // +0xdf0 size: 0xa0 (0x1 * 0xa0) type 0
    m_pStudioHdr: *anyopaque, // +0xe90 size: 0x8 (0x1 * 0x8) type 31
    m_animSequence: i32, // +0xe98 size: 0x4 (0x1 * 0x4) type 5
    m_animCycle: f32, // +0xe9c size: 0x4 (0x1 * 0x4) type 1
    m_animModelIndex: i32, // +0xea0 size: 0x4 (0x1 * 0x4) type 5
    m_animStartTime: f32, // +0xea4 size: 0x4 (0x1 * 0x4) type 1
    m_animStartCycle: f32, // +0xea8 size: 0x4 (0x1 * 0x4) type 1
    m_animPlaybackRate: f32, // +0xeac size: 0x4 (0x1 * 0x4) type 1
    m_animFrozen: bool, // +0xeb0 size: 0x1 (0x1 * 0x1) type 6

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xeb8);
        try std.testing.expect(@offsetOf(@This(), "m_bCanUseFastPathFromServer") == 0x9e0);
        try std.testing.expect(@offsetOf(@This(), "m_flGroundSpeed") == 0x9e4);
        try std.testing.expect(@offsetOf(@This(), "m_flLastEventCheck") == 0x9e8);
        try std.testing.expect(@offsetOf(@This(), "m_nForceBone") == 0x9ec);
        try std.testing.expect(@offsetOf(@This(), "m_vecForce") == 0x9f0);
        try std.testing.expect(@offsetOf(@This(), "m_nSkin") == 0x9fc);
        try std.testing.expect(@offsetOf(@This(), "m_nBody") == 0xa00);
        try std.testing.expect(@offsetOf(@This(), "m_camoIndex") == 0xa04);
        try std.testing.expect(@offsetOf(@This(), "m_decalIndex") == 0xa08);
        try std.testing.expect(@offsetOf(@This(), "m_nHitboxSet") == 0xa0c);
        try std.testing.expect(@offsetOf(@This(), "m_flModelScale") == 0xa10);
        try std.testing.expect(@offsetOf(@This(), "m_nRagdollImpactFXTableId") == 0xa14);
        try std.testing.expect(@offsetOf(@This(), "m_flSkyScaleStartTime") == 0xa18);
        try std.testing.expect(@offsetOf(@This(), "m_flSkyScaleEndTime") == 0xa1c);
        try std.testing.expect(@offsetOf(@This(), "m_flSkyScaleStartValue") == 0xa20);
        try std.testing.expect(@offsetOf(@This(), "m_flSkyScaleEndValue") == 0xa24);
        try std.testing.expect(@offsetOf(@This(), "m_SequenceTransitioner") == 0xa28);
        try std.testing.expect(@offsetOf(@This(), "m_flIKGroundContactTime") == 0xba0);
        try std.testing.expect(@offsetOf(@This(), "m_flIKGroundMinHeight") == 0xba4);
        try std.testing.expect(@offsetOf(@This(), "m_flIKGroundMaxHeight") == 0xba8);
        try std.testing.expect(@offsetOf(@This(), "m_flEstIkFloor") == 0xbac);
        try std.testing.expect(@offsetOf(@This(), "m_flEstIkOffset") == 0xbb0);
        try std.testing.expect(@offsetOf(@This(), "m_pIk") == 0xbb8);
        try std.testing.expect(@offsetOf(@This(), "m_ikPrevSequence") == 0xbc0);
        try std.testing.expect(@offsetOf(@This(), "m_bSequenceFinished") == 0xbc4);
        try std.testing.expect(@offsetOf(@This(), "m_bSequenceLooped") == 0xbc5);
        try std.testing.expect(@offsetOf(@This(), "m_bSequenceLoops") == 0xbc6);
        try std.testing.expect(@offsetOf(@This(), "m_numSequenceLoops") == 0xbc8);
        try std.testing.expect(@offsetOf(@This(), "m_continueAnimatingAfterRagdoll") == 0xbcc);
        try std.testing.expect(@offsetOf(@This(), "m_useLockedAnimDeltaYaw") == 0xbcd);
        try std.testing.expect(@offsetOf(@This(), "m_lockedAnimDeltaYaw") == 0xbd0);
        try std.testing.expect(@offsetOf(@This(), "m_threadedBoneSetup") == 0xbd4);
        try std.testing.expect(@offsetOf(@This(), "m_settingUpBones") == 0xbd5);
        try std.testing.expect(@offsetOf(@This(), "m_flDissolveStartTime") == 0xbd8);
        try std.testing.expect(@offsetOf(@This(), "m_baseAnimatingActivity") == 0xbdc);
        try std.testing.expect(@offsetOf(@This(), "m_flPoseParameter") == 0xbe0);
        try std.testing.expect(@offsetOf(@This(), "m_poseParameterOverTimeActive") == 0xc0c);
        try std.testing.expect(@offsetOf(@This(), "m_poseParameterGoalValue") == 0xc10);
        try std.testing.expect(@offsetOf(@This(), "m_poseParameterEndTime") == 0xc3c);
        try std.testing.expect(@offsetOf(@This(), "m_lastTimeSetPoseParametersSameAs") == 0xc68);
        try std.testing.expect(@offsetOf(@This(), "m_bClientSideAnimation") == 0xc6c);
        try std.testing.expect(@offsetOf(@This(), "m_bReallyClientSideAnimation") == 0xc6d);
        try std.testing.expect(@offsetOf(@This(), "m_nNewSequenceParity") == 0xc70);
        try std.testing.expect(@offsetOf(@This(), "m_nResetEventsParity") == 0xc74);
        try std.testing.expect(@offsetOf(@This(), "m_boneCacheHandle") == 0xc78);
        try std.testing.expect(@offsetOf(@This(), "m_fBoneCacheFlags") == 0xc80);
        try std.testing.expect(@offsetOf(@This(), "m_animNetworkFlags") == 0xc84);
        try std.testing.expect(@offsetOf(@This(), "m_animActive") == 0xc88);
        try std.testing.expect(@offsetOf(@This(), "m_animCollisionEnabled") == 0xc89);
        try std.testing.expect(@offsetOf(@This(), "m_animInitialCorrection") == 0xc8a);
        try std.testing.expect(@offsetOf(@This(), "m_animWaitingForCleanup") == 0xc8b);
        try std.testing.expect(@offsetOf(@This(), "m_animWaitingForCleanupTime") == 0xc8c);
        try std.testing.expect(@offsetOf(@This(), "m_recordedAnim") == 0xc90);
        try std.testing.expect(@offsetOf(@This(), "m_recordedAnimIndex") == 0xc98);
        try std.testing.expect(@offsetOf(@This(), "m_recordedAnimCachedFrameIndex") == 0xc9c);
        try std.testing.expect(@offsetOf(@This(), "m_recordedAnimPlaybackRate") == 0xca0);
        try std.testing.expect(@offsetOf(@This(), "m_recordedAnimPlaybackTime") == 0xca4);
        try std.testing.expect(@offsetOf(@This(), "m_recordedAnimTransform") == 0xca8);
        try std.testing.expect(@offsetOf(@This(), "m_recordedAnimPlaybackEnt") == 0xcd8);
        try std.testing.expect(@offsetOf(@This(), "m_recordedAnimBlendTime") == 0xcdc);
        try std.testing.expect(@offsetOf(@This(), "m_recordedAnimBlendOffset") == 0xce0);
        try std.testing.expect(@offsetOf(@This(), "m_recordedAnimBlendAngles") == 0xcec);
        try std.testing.expect(@offsetOf(@This(), "m_animRelativeData") == 0xcf8);
        try std.testing.expect(@offsetOf(@This(), "m_syncingWithEntity") == 0xd78);
        try std.testing.expect(@offsetOf(@This(), "m_predictedAnimEventData") == 0xd80);
        try std.testing.expect(@offsetOf(@This(), "m_animRefEntityAttachmentIndex") == 0xde0);
        try std.testing.expect(@offsetOf(@This(), "m_fireAttachmentSmartAmmoIndex") == 0xde4);
        try std.testing.expect(@offsetOf(@This(), "m_fireAttachmentChestFocusIndex") == 0xde8);
        try std.testing.expect(@offsetOf(@This(), "m_fireAttachmentModelIndex") == 0xdec);
        try std.testing.expect(@offsetOf(@This(), "m_keyHitboxes") == 0xdf0);
        try std.testing.expect(@offsetOf(@This(), "m_pStudioHdr") == 0xe90);
        try std.testing.expect(@offsetOf(@This(), "m_animSequence") == 0xe98);
        try std.testing.expect(@offsetOf(@This(), "m_animCycle") == 0xe9c);
        try std.testing.expect(@offsetOf(@This(), "m_animModelIndex") == 0xea0);
        try std.testing.expect(@offsetOf(@This(), "m_animStartTime") == 0xea4);
        try std.testing.expect(@offsetOf(@This(), "m_animStartCycle") == 0xea8);
        try std.testing.expect(@offsetOf(@This(), "m_animPlaybackRate") == 0xeac);
        try std.testing.expect(@offsetOf(@This(), "m_animFrozen") == 0xeb0);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
