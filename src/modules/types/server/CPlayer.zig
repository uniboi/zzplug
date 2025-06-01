pub const CPlayer = extern struct {
    vtable: *anyopaque,
    CBaseCombatCharacter: abi.Inherit(server.CBaseCombatCharacter),

    m_szNetname: [256]u8, // +0x1498 size: 0x100 (0x100 * 0x1) type 8
    m_bZooming: bool, // +0x1598 size: 0x1 (0x1 * 0x1) type 6
    m_zoomToggleOn: bool, // +0x1599 size: 0x1 (0x1 * 0x1) type 6
    gap_159a: [2]abi.undefined,
    m_zoomBaseFrac: f32, // +0x159c size: 0x4 (0x1 * 0x4) type 1
    m_zoomBaseTime: f32, // +0x15a0 size: 0x4 (0x1 * 0x4) type 1
    m_zoomFullStartTime: f32, // +0x15a4 size: 0x4 (0x1 * 0x4) type 1
    m_physicsSolidMask: i32, // +0x15a8 size: 0x4 (0x1 * 0x4) type 5
    m_StuckLast: i32, // +0x15ac size: 0x4 (0x1 * 0x4) type 5
    m_Local: server.CPlayerLocalData, // +0x15b0 size: 0x428 (0x1 * 0x428) type 10
    m_PlayerFog: server.fogplayerparams_t, // +0x19d8 size: 0x170 (0x1 * 0x170) type 10
    m_hTriggerTonemapList: [32]abi.undefined, // +0x1b48 size: 0x20 (0x1 * 0x20) type 11
    m_hColorCorrectionCtrl: valve.EHANDLE, // +0x1b68 size: 0x4 (0x1 * 0x4) type 13
    gap_1b6c: [4]abi.undefined,
    m_hTriggerSoundscapeList: [32]abi.undefined, // +0x1b70 size: 0x20 (0x1 * 0x20) type 11
    pl: server.CPlayerState, // +0x1b90 size: 0x80 (0x1 * 0x80) type 10
    m_rodeo: server.Rodeo_PlayerData, // +0x1c10 size: 0x80 (0x1 * 0x80) type 10
    m_hasBadReputation: bool, // +0x1c90 size: 0x1 (0x1 * 0x1) type 6
    m_communityName: [64]u8, // +0x1c91 size: 0x40 (0x40 * 0x1) type 8
    m_communityClanTag: [16]u8, // +0x1cd1 size: 0x10 (0x10 * 0x1) type 8
    m_factionName: [16]u8, // +0x1ce1 size: 0x10 (0x10 * 0x1) type 8
    m_hardwareIcon: [16]u8, // +0x1cf1 size: 0x10 (0x10 * 0x1) type 8
    m_happyHourActive: bool, // +0x1d01 size: 0x1 (0x1 * 0x1) type 6
    gap_1d02: [6]abi.undefined,
    m_platformUserId: i64, // +0x1d08 size: 0x8 (0x1 * 0x8) type 29
    m_classModsActive: i32, // +0x1d10 size: 0x4 (0x1 * 0x4) type 5
    m_classModsActiveOld: i32, // +0x1d14 size: 0x4 (0x1 * 0x4) type 5
    m_classModValues: server.ClassModValues, // +0x1d18 size: 0x74 (0x1 * 0x74) type 10
    m_posClassModsActive: [4]i32, // +0x1d8c size: 0x10 (0x4 * 0x4) type 5
    m_posClassModsActiveOld: [4]i32, // +0x1d9c size: 0x10 (0x4 * 0x4) type 5
    m_perPosValues: [4]server.PerPosClassModValues, // +0x1dac size: 0x8 (0x4 * 0x2) type 10
    m_passives: [128]bool, // +0x1dcc size: 0x80 (0x80 * 0x1) type 6
    m_communityId: i32, // +0x1e4c size: 0x4 (0x1 * 0x4) type 5
    m_nButtons: i32, // +0x1e50 size: 0x4 (0x1 * 0x4) type 5
    m_afButtonPressed: i32, // +0x1e54 size: 0x4 (0x1 * 0x4) type 5
    m_afButtonReleased: i32, // +0x1e58 size: 0x4 (0x1 * 0x4) type 5
    m_afButtonLast: i32, // +0x1e5c size: 0x4 (0x1 * 0x4) type 5
    m_afButtonDisabled: i32, // +0x1e60 size: 0x4 (0x1 * 0x4) type 5
    m_afButtonForced: i32, // +0x1e64 size: 0x4 (0x1 * 0x4) type 5
    m_forwardMove: f32, // +0x1e68 size: 0x4 (0x1 * 0x4) type 1
    m_sideMove: f32, // +0x1e6c size: 0x4 (0x1 * 0x4) type 1
    m_prevForwardMove: f32, // +0x1e70 size: 0x4 (0x1 * 0x4) type 1
    m_prevSideMove: f32, // +0x1e74 size: 0x4 (0x1 * 0x4) type 1
    m_bLagCompensation: bool, // +0x1e78 size: 0x1 (0x1 * 0x1) type 6
    m_bPredictWeapons: bool, // +0x1e79 size: 0x1 (0x1 * 0x1) type 6
    m_bPredictionEnabled: bool, // +0x1e7a size: 0x1 (0x1 * 0x1) type 6
    m_wantedToMatchmake: bool, // +0x1e7b size: 0x1 (0x1 * 0x1) type 6
    m_skyCamera: valve.EHANDLE, // +0x1e7c size: 0x4 (0x1 * 0x4) type 13
    m_titanSoulBeingRodeoed: valve.EHANDLE, // +0x1e80 size: 0x4 (0x1 * 0x4) type 13
    m_entitySyncingWithMe: valve.EHANDLE, // +0x1e84 size: 0x4 (0x1 * 0x4) type 13
    m_playerFlags: i32, // +0x1e88 size: 0x4 (0x1 * 0x4) type 5
    m_hasMic: bool, // +0x1e8c size: 0x1 (0x1 * 0x1) type 6
    m_inPartyChat: bool, // +0x1e8d size: 0x1 (0x1 * 0x1) type 6
    gap_1e8e: [2]abi.undefined,
    m_playerMoveSpeedScale: f32, // +0x1e90 size: 0x4 (0x1 * 0x4) type 1
    m_gestureSequences: [4]i32, // +0x1e94 size: 0x10 (0x4 * 0x4) type 5
    m_gestureStartTimes: [4]f32, // +0x1ea4 size: 0x10 (0x4 * 0x4) type 1
    m_gestureBlendInDuration: [4]f32, // +0x1eb4 size: 0x10 (0x4 * 0x4) type 1
    m_gestureBlendOutDuration: [4]f32, // +0x1ec4 size: 0x10 (0x4 * 0x4) type 1
    m_gestureFadeOutStartTime: [4]f32, // +0x1ed4 size: 0x10 (0x4 * 0x4) type 1
    m_gestureFadeOutDuration: [4]f32, // +0x1ee4 size: 0x10 (0x4 * 0x4) type 1
    m_gestureAutoKillBitfield: i32, // +0x1ef4 size: 0x4 (0x1 * 0x4) type 5
    m_bDropEnabled: bool, // +0x1ef8 size: 0x1 (0x1 * 0x1) type 6
    m_bDuckEnabled: bool, // +0x1ef9 size: 0x1 (0x1 * 0x1) type 6
    gap_1efa: [2]abi.undefined,
    m_iRespawnFrames: i32, // +0x1efc size: 0x4 (0x1 * 0x4) type 5
    m_afPhysicsFlags: i32, // +0x1f00 size: 0x4 (0x1 * 0x4) type 5
    m_remoteTurret: valve.EHANDLE, // +0x1f04 size: 0x4 (0x1 * 0x4) type 13
    m_flTimeLastTouchedGround: f32, // +0x1f08 size: 0x4 (0x1 * 0x4) type 1
    m_flTimeLastJumped: f32, // +0x1f0c size: 0x4 (0x1 * 0x4) type 1
    m_flTimeLastLanded: f32, // +0x1f10 size: 0x4 (0x1 * 0x4) type 1
    m_upDirWhenLastTouchedGround: m.Vector3, // +0x1f14 size: 0xc (0x1 * 0xc) type 3
    m_bHasJumpedSinceTouchedGround: bool, // +0x1f20 size: 0x1 (0x1 * 0x1) type 6
    gap_1f21: [3]abi.undefined,
    m_holdToUseTimeLeft: f32, // +0x1f24 size: 0x4 (0x1 * 0x4) type 1
    m_fTimeLastHurt: f32, // +0x1f28 size: 0x4 (0x1 * 0x4) type 1
    m_fLastAimBotCheckTime: f32, // +0x1f2c size: 0x4 (0x1 * 0x4) type 1
    m_accumDamageImpulseVel: m.Vector3, // +0x1f30 size: 0xc (0x1 * 0xc) type 3
    m_accumDamageImpulseTime: valve.time, // +0x1f3c size: 0x4 (0x1 * 0x4) type 16
    m_damageImpulseNoDecelEndTime: valve.time, // +0x1f40 size: 0x4 (0x1 * 0x4) type 16
    m_hDmgEntity: valve.EHANDLE, // +0x1f44 size: 0x4 (0x1 * 0x4) type 13
    m_DmgTake: f32, // +0x1f48 size: 0x4 (0x1 * 0x4) type 1
    m_bitsDamageType: i32, // +0x1f4c size: 0x4 (0x1 * 0x4) type 5
    m_bitsHUDDamage: i32, // +0x1f50 size: 0x4 (0x1 * 0x4) type 5
    m_xpRate: f32, // +0x1f54 size: 0x4 (0x1 * 0x4) type 1
    m_flDeathTime: valve.time, // +0x1f58 size: 0x4 (0x1 * 0x4) type 16
    m_flDeathAnimTime: valve.time, // +0x1f5c size: 0x4 (0x1 * 0x4) type 16
    m_frozen: bool, // +0x1f60 size: 0x1 (0x1 * 0x1) type 6
    m_stressAnimation: bool, // +0x1f61 size: 0x1 (0x1 * 0x1) type 6
    gap_1f62: [2]abi.undefined,
    m_iObserverMode: i32, // +0x1f64 size: 0x4 (0x1 * 0x4) type 5
    m_iObserverLastMode: i32, // +0x1f68 size: 0x4 (0x1 * 0x4) type 5
    m_hObserverTarget: valve.EHANDLE, // +0x1f6c size: 0x4 (0x1 * 0x4) type 13
    m_observerModeStaticPosition: m.Vector3, // +0x1f70 size: 0xc (0x1 * 0xc) type 3
    m_observerModeStaticAngles: m.Vector3, // +0x1f7c size: 0xc (0x1 * 0xc) type 3
    m_isValidChaseObserverTarget: bool, // +0x1f88 size: 0x1 (0x1 * 0x1) type 6
    gap_1f89: [3]abi.undefined,
    m_vphysicsCollisionState: i32, // +0x1f8c size: 0x4 (0x1 * 0x4) type 5
    m_bHasVPhysicsCollision: bool, // +0x1f90 size: 0x1 (0x1 * 0x1) type 6
    gap_1f91: [3]abi.undefined,
    m_fNextSuicideTime: valve.time, // +0x1f94 size: 0x4 (0x1 * 0x4) type 16
    m_iSuicideCustomKillFlags: i32, // +0x1f98 size: 0x4 (0x1 * 0x4) type 5
    m_preNoClipPhysicsFlags: i32, // +0x1f9c size: 0x4 (0x1 * 0x4) type 5
    m_hTonemapController: valve.EHANDLE, // +0x1fa0 size: 0x4 (0x1 * 0x4) type 13
    m_activeBurnCardIndex: i32, // +0x1fa4 size: 0x4 (0x1 * 0x4) type 5
    m_CommandContext: [32]abi.undefined, // +0x1fa8 size: 0x20 (0x1 * 0x20) type 0
    m_pPhysicsController: *anyopaque, // +0x1fc8 size: 0x8 (0x1 * 0x8) type 31
    m_pShadowStand: *anyopaque, // +0x1fd0 size: 0x8 (0x1 * 0x8) type 31
    m_pShadowCrouch: *anyopaque, // +0x1fd8 size: 0x8 (0x1 * 0x8) type 31
    m_oldOrigin: m.Vector3, // +0x1fe0 size: 0xc (0x1 * 0xc) type 3
    m_vecSmoothedVelocity: m.Vector3, // +0x1fec size: 0xc (0x1 * 0xc) type 3
    m_bTouchedPhysObject: bool, // +0x1ff8 size: 0x1 (0x1 * 0x1) type 6
    m_bPhysicsWasFrozen: bool, // +0x1ff9 size: 0x1 (0x1 * 0x1) type 6
    gap_1ffa: [2]abi.undefined,
    m_iTargetVolume: i32, // +0x1ffc size: 0x4 (0x1 * 0x4) type 5
    m_flDuckTime: f32, // +0x2000 size: 0x4 (0x1 * 0x4) type 1
    m_flDuckJumpTime: f32, // +0x2004 size: 0x4 (0x1 * 0x4) type 1
    m_VDU: bool, // +0x2008 size: 0x1 (0x1 * 0x1) type 6
    m_fInitHUD: bool, // +0x2009 size: 0x1 (0x1 * 0x1) type 6
    m_fGameHUDInitialized: bool, // +0x200a size: 0x1 (0x1 * 0x1) type 6
    m_fWeapon: bool, // +0x200b size: 0x1 (0x1 * 0x1) type 6
    m_iUpdateTime: i32, // +0x200c size: 0x4 (0x1 * 0x4) type 5
    m_iConnected: i32, // +0x2010 size: 0x4 (0x1 * 0x4) type 5
    m_iPlayerLocked: i32, // +0x2014 size: 0x4 (0x1 * 0x4) type 5
    m_gameStats: [12]i32, // +0x2018 size: 0x30 (0xc * 0x4) type 5
    m_firstPersonProxy: valve.EHANDLE, // +0x2048 size: 0x4 (0x1 * 0x4) type 13
    m_predictedFirstPersonProxy: valve.EHANDLE, // +0x204c size: 0x4 (0x1 * 0x4) type 13
    m_grappleHook: valve.EHANDLE, // +0x2050 size: 0x4 (0x1 * 0x4) type 13
    m_petTitan: valve.EHANDLE, // +0x2054 size: 0x4 (0x1 * 0x4) type 13
    m_petTitanMode: i32, // +0x2058 size: 0x4 (0x1 * 0x4) type 5
    m_xp: i32, // +0x205c size: 0x4 (0x1 * 0x4) type 5
    m_generation: i32, // +0x2060 size: 0x4 (0x1 * 0x4) type 5
    m_rank: i32, // +0x2064 size: 0x4 (0x1 * 0x4) type 5
    m_serverForceIncreasePlayerListGenerationParity: i32, // +0x2068 size: 0x4 (0x1 * 0x4) type 5
    m_isPlayingRanked: bool, // +0x206c size: 0x1 (0x1 * 0x1) type 6
    gap_206d: [3]abi.undefined,
    m_skill_mu: f32, // +0x2070 size: 0x4 (0x1 * 0x4) type 1
    m_hardpointEntity: valve.EHANDLE, // +0x2074 size: 0x4 (0x1 * 0x4) type 13
    m_nextTitanRespawnAvailable: valve.time, // +0x2078 size: 0x4 (0x1 * 0x4) type 16
    m_activeViewmodelModifiers: [25]bool, // +0x207c size: 0x19 (0x19 * 0x1) type 6
    m_activeViewmodelModifiersChanged: bool, // +0x2095 size: 0x1 (0x1 * 0x1) type 6
    gap_2096: [2]abi.undefined,
    m_hViewModel: valve.EHANDLE, // +0x2098 size: 0x4 (0x1 * 0x4) type 13
    gap_209c: [4]abi.undefined,
    m_LastCmd: [312]abi.undefined, // +0x20a0 size: 0x138 (0x1 * 0x138) type 0
    m_pCurrentCommand: *anyopaque, // +0x21d8 size: 0x8 (0x1 * 0x8) type 31
    m_flStepSoundTime: f32, // +0x21e0 size: 0x4 (0x1 * 0x4) type 1
    m_flStepSoundReduceTime: f32, // +0x21e4 size: 0x4 (0x1 * 0x4) type 1
    m_hThirdPersonEnt: valve.EHANDLE, // +0x21e8 size: 0x4 (0x1 * 0x4) type 13
    gap_21ec: [4]abi.undefined,
    m_thirdPerson: server.ThirdPersonViewData, // +0x21f0 size: 0x60 (0x1 * 0x60) type 10
    m_duckState: i32, // +0x2250 size: 0x4 (0x1 * 0x4) type 5
    m_StandHullMin: m.Vector3, // +0x2254 size: 0xc (0x1 * 0xc) type 3
    m_StandHullMax: m.Vector3, // +0x2260 size: 0xc (0x1 * 0xc) type 3
    m_DuckHullMin: m.Vector3, // +0x226c size: 0xc (0x1 * 0xc) type 3
    m_DuckHullMax: m.Vector3, // +0x2278 size: 0xc (0x1 * 0xc) type 3
    m_upDir: m.Vector3, // +0x2284 size: 0xc (0x1 * 0xc) type 3
    m_upDirPredicted: m.Vector3, // +0x2290 size: 0xc (0x1 * 0xc) type 3
    m_lastWallRunStartPos: m.Vector3, // +0x229c size: 0xc (0x1 * 0xc) type 3
    m_wallRunStartTime: valve.time, // +0x22a8 size: 0x4 (0x1 * 0x4) type 16
    m_wallRunClearTime: valve.time, // +0x22ac size: 0x4 (0x1 * 0x4) type 16
    m_wallRunCount: i32, // +0x22b0 size: 0x4 (0x1 * 0x4) type 5
    m_wallRunWeak: bool, // +0x22b4 size: 0x1 (0x1 * 0x1) type 6
    gap_22b5: [3]abi.undefined,
    m_wallRunPushAwayTime: f32, // +0x22b8 size: 0x4 (0x1 * 0x4) type 1
    m_wallrunFrictionScale: f32, // +0x22bc size: 0x4 (0x1 * 0x4) type 1
    m_groundFrictionScale: f32, // +0x22c0 size: 0x4 (0x1 * 0x4) type 1
    m_wallrunRetryTime: f32, // +0x22c4 size: 0x4 (0x1 * 0x4) type 1
    m_wallrunRetryPos: m.Vector3, // +0x22c8 size: 0xc (0x1 * 0xc) type 3
    m_wallrunRetryNormal: m.Vector3, // +0x22d4 size: 0xc (0x1 * 0xc) type 3
    m_wallHanging: bool, // +0x22e0 size: 0x1 (0x1 * 0x1) type 6
    gap_22e1: [3]abi.undefined,
    m_wallHangStartTime: valve.time, // +0x22e4 size: 0x4 (0x1 * 0x4) type 16
    m_wallHangTime: valve.time, // +0x22e8 size: 0x4 (0x1 * 0x4) type 16
    m_traversalType: i32, // +0x22ec size: 0x4 (0x1 * 0x4) type 5
    m_traversalState: i32, // +0x22f0 size: 0x4 (0x1 * 0x4) type 5
    m_traversalBegin: m.Vector3, // +0x22f4 size: 0xc (0x1 * 0xc) type 3
    m_traversalMid: m.Vector3, // +0x2300 size: 0xc (0x1 * 0xc) type 3
    m_traversalEnd: m.Vector3, // +0x230c size: 0xc (0x1 * 0xc) type 3
    m_traversalMidFrac: f32, // +0x2318 size: 0x4 (0x1 * 0x4) type 1
    m_traversalForwardDir: m.Vector3, // +0x231c size: 0xc (0x1 * 0xc) type 3
    m_traversalRefPos: m.Vector3, // +0x2328 size: 0xc (0x1 * 0xc) type 3
    m_traversalProgress: f32, // +0x2334 size: 0x4 (0x1 * 0x4) type 1
    m_traversalStartTime: valve.time, // +0x2338 size: 0x4 (0x1 * 0x4) type 16
    m_traversalHandAppearTime: valve.time, // +0x233c size: 0x4 (0x1 * 0x4) type 16
    m_traversalReleaseTime: valve.time, // +0x2340 size: 0x4 (0x1 * 0x4) type 16
    m_traversalBlendOutStartTime: valve.time, // +0x2344 size: 0x4 (0x1 * 0x4) type 16
    m_traversalBlendOutStartOffset: m.Vector3, // +0x2348 size: 0xc (0x1 * 0xc) type 3
    m_traversalYawDelta: f32, // +0x2354 size: 0x4 (0x1 * 0x4) type 1
    m_traversalYawPoseParameter: i32, // +0x2358 size: 0x4 (0x1 * 0x4) type 5
    m_wallDangleJumpOffTime: f32, // +0x235c size: 0x4 (0x1 * 0x4) type 1
    m_wallDangleMayHangHere: bool, // +0x2360 size: 0x1 (0x1 * 0x1) type 6
    m_wallDangleForceFallOff: bool, // +0x2361 size: 0x1 (0x1 * 0x1) type 6
    m_wallDangleLastPushedForward: bool, // +0x2362 size: 0x1 (0x1 * 0x1) type 6
    gap_2363: [1]abi.undefined,
    m_wallDangleDisableWeapon: i32, // +0x2364 size: 0x4 (0x1 * 0x4) type 5
    m_wallDangleClimbProgressFloor: f32, // +0x2368 size: 0x4 (0x1 * 0x4) type 1
    m_prevMoveYaw: f32, // +0x236c size: 0x4 (0x1 * 0x4) type 1
    m_sprintTiltVel: f32, // +0x2370 size: 0x4 (0x1 * 0x4) type 1
    m_sprintTiltPoseParameter: i32, // +0x2374 size: 0x4 (0x1 * 0x4) type 5
    m_sprintFracPoseParameter: i32, // +0x2378 size: 0x4 (0x1 * 0x4) type 5
    gap_237c: [4]abi.undefined,
    m_grapple: server.GrappleData, // +0x2380 size: 0x68 (0x1 * 0x68) type 10
    m_grappleActive: bool, // +0x23e8 size: 0x1 (0x1 * 0x1) type 6
    m_grappleNeedWindowCheck: bool, // +0x23e9 size: 0x1 (0x1 * 0x1) type 6
    gap_23ea: [2]abi.undefined,
    m_grappleNextWindowHint: valve.EHANDLE, // +0x23ec size: 0x4 (0x1 * 0x4) type 13
    m_sliding: bool, // +0x23f0 size: 0x1 (0x1 * 0x1) type 6
    m_slideLongJumpAllowed: bool, // +0x23f1 size: 0x1 (0x1 * 0x1) type 6
    gap_23f2: [2]abi.undefined,
    m_lastSlideTime: valve.time, // +0x23f4 size: 0x4 (0x1 * 0x4) type 16
    m_lastSlideBoost: f32, // +0x23f8 size: 0x4 (0x1 * 0x4) type 1
    m_activeZipline: valve.EHANDLE, // +0x23fc size: 0x4 (0x1 * 0x4) type 13
    m_ziplineReverse: bool, // +0x2400 size: 0x1 (0x1 * 0x1) type 6
    gap_2401: [3]abi.undefined,
    m_lastZipline: valve.EHANDLE, // +0x2404 size: 0x4 (0x1 * 0x4) type 13
    m_useLastZiplineCooldown: f32, // +0x2408 size: 0x4 (0x1 * 0x4) type 1
    m_ziplineValid3pWeaponLayerAnim: bool, // +0x240c size: 0x1 (0x1 * 0x1) type 6
    gap_240d: [3]abi.undefined,
    m_ziplineState: i32, // +0x2410 size: 0x4 (0x1 * 0x4) type 5
    gap_2414: [4]abi.undefined,
    m_zipline: server.PlayerZiplineData, // +0x2418 size: 0x50 (0x1 * 0x50) type 10
    m_operator: server.Player_OperatorData, // +0x2468 size: 0x80 (0x1 * 0x80) type 10
    m_viewOffsetEntity: server.Player_ViewOffsetEntityData, // +0x24e8 size: 0x18 (0x1 * 0x18) type 10
    m_animViewEntity: server.Player_AnimViewEntityData, // +0x2500 size: 0x80 (0x1 * 0x80) type 10
    m_highSpeedViewmodelAnims: bool, // +0x2580 size: 0x1 (0x1 * 0x1) type 6
    gap_2581: [3]abi.undefined,
    m_gravityGrenadeStatusEffect: i32, // +0x2584 size: 0x4 (0x1 * 0x4) type 5
    m_onSlopeTime: valve.time, // +0x2588 size: 0x4 (0x1 * 0x4) type 16
    m_lastWallNormal: m.Vector3, // +0x258c size: 0xc (0x1 * 0xc) type 3
    m_dodgingInAir: bool, // +0x2598 size: 0x1 (0x1 * 0x1) type 6
    m_dodging: bool, // +0x2599 size: 0x1 (0x1 * 0x1) type 6
    gap_259a: [2]abi.undefined,
    m_lastDodgeTime: valve.time, // +0x259c size: 0x4 (0x1 * 0x4) type 16
    m_airSpeed: f32, // +0x25a0 size: 0x4 (0x1 * 0x4) type 1
    m_airAcceleration: f32, // +0x25a4 size: 0x4 (0x1 * 0x4) type 1
    m_iSpawnParity: bool, // +0x25a8 size: 0x1 (0x1 * 0x1) type 6
    m_boosting: bool, // +0x25a9 size: 0x1 (0x1 * 0x1) type 6
    m_repeatedBoost: bool, // +0x25aa size: 0x1 (0x1 * 0x1) type 6
    gap_25ab: [1]abi.undefined,
    m_boostMeter: f32, // +0x25ac size: 0x4 (0x1 * 0x4) type 1
    m_jetpack: bool, // +0x25b0 size: 0x1 (0x1 * 0x1) type 6
    m_gliding: bool, // +0x25b1 size: 0x1 (0x1 * 0x1) type 6
    gap_25b2: [2]abi.undefined,
    m_glideMeter: f32, // +0x25b4 size: 0x4 (0x1 * 0x4) type 1
    m_glideRechargeDelayAccumulator: f32, // +0x25b8 size: 0x4 (0x1 * 0x4) type 1
    m_hovering: bool, // +0x25bc size: 0x1 (0x1 * 0x1) type 6
    m_climbing: bool, // +0x25bd size: 0x1 (0x1 * 0x1) type 6
    m_isPerformingBoostAction: bool, // +0x25be size: 0x1 (0x1 * 0x1) type 6
    gap_25bf: [1]abi.undefined,
    m_lastJumpHeight: f32, // +0x25c0 size: 0x4 (0x1 * 0x4) type 1
    m_numPingsUsed: i32, // +0x25c4 size: 0x4 (0x1 * 0x4) type 5
    m_numPingsAvailable: i32, // +0x25c8 size: 0x4 (0x1 * 0x4) type 5
    m_lastPingTime: valve.time, // +0x25cc size: 0x4 (0x1 * 0x4) type 16
    m_pingGroupStartTime: valve.time, // +0x25d0 size: 0x4 (0x1 * 0x4) type 16
    m_pingGroupAccumulator: i32, // +0x25d4 size: 0x4 (0x1 * 0x4) type 5
    m_lastBodySound1p: *anyopaque, // +0x25d8 size: 0x8 (0x1 * 0x8) type 31
    m_lastBodySound3p: *anyopaque, // +0x25e0 size: 0x8 (0x1 * 0x8) type 31
    m_lastFinishSound1p: *anyopaque, // +0x25e8 size: 0x8 (0x1 * 0x8) type 31
    m_lastFinishSound3p: *anyopaque, // +0x25f0 size: 0x8 (0x1 * 0x8) type 31
    m_primedSound1p: *anyopaque, // +0x25f8 size: 0x8 (0x1 * 0x8) type 31
    m_primedSound3p: *anyopaque, // +0x2600 size: 0x8 (0x1 * 0x8) type 31
    m_currentFramePlayer: server.CurrentData_Player, // +0x2608 size: 0x20 (0x1 * 0x20) type 10
    m_currentFrameLocalPlayer: server.CurrentData_LocalPlayer, // +0x2628 size: 0x60 (0x1 * 0x60) type 10
    m_nImpulse: i32, // +0x2688 size: 0x4 (0x1 * 0x4) type 5
    m_flFlashTime: valve.time, // +0x268c size: 0x4 (0x1 * 0x4) type 16
    m_flForwardMove: f32, // +0x2690 size: 0x4 (0x1 * 0x4) type 1
    m_flSideMove: f32, // +0x2694 size: 0x4 (0x1 * 0x4) type 1
    m_nNumCrateHudHints: i32, // +0x2698 size: 0x4 (0x1 * 0x4) type 5
    m_needStuckCheck: bool, // +0x269c size: 0x1 (0x1 * 0x1) type 6
    gap_269d: [3]abi.undefined,
    m_totalFrameTime: valve.time, // +0x26a0 size: 0x4 (0x1 * 0x4) type 16
    m_joinFrameTime: valve.time, // +0x26a4 size: 0x4 (0x1 * 0x4) type 16
    m_lastUCmdSimulationTicks: i32, // +0x26a8 size: 0x4 (0x1 * 0x4) type 5
    m_lastUCmdSimulationRemainderTime: f32, // +0x26ac size: 0x4 (0x1 * 0x4) type 1
    m_totalExtraClientCmdTimeAttempted: f32, // +0x26b0 size: 0x4 (0x1 * 0x4) type 1
    m_bGamePaused: bool, // +0x26b4 size: 0x1 (0x1 * 0x1) type 6
    m_bPlayerUnderwater: bool, // +0x26b5 size: 0x1 (0x1 * 0x1) type 6
    gap_26b6: [2]abi.undefined,
    m_hPlayerViewEntity: valve.EHANDLE, // +0x26b8 size: 0x4 (0x1 * 0x4) type 13
    m_bShouldDrawPlayerWhileUsingViewEntity: bool, // +0x26bc size: 0x1 (0x1 * 0x1) type 6
    gap_26bd: [3]abi.undefined,
    m_hConstraintEntity: valve.EHANDLE, // +0x26c0 size: 0x4 (0x1 * 0x4) type 13
    m_vecConstraintCenter: m.Vector3, // +0x26c4 size: 0xc (0x1 * 0xc) type 15
    m_flConstraintRadius: f32, // +0x26d0 size: 0x4 (0x1 * 0x4) type 1
    m_flConstraintWidth: f32, // +0x26d4 size: 0x4 (0x1 * 0x4) type 1
    m_flConstraintSpeedFactor: f32, // +0x26d8 size: 0x4 (0x1 * 0x4) type 1
    m_bConstraintPastRadius: bool, // +0x26dc size: 0x1 (0x1 * 0x1) type 6
    gap_26dd: [3]abi.undefined,
    m_lastActiveTime: valve.time, // +0x26e0 size: 0x4 (0x1 * 0x4) type 16
    m_flLaggedMovementValue: f32, // +0x26e4 size: 0x4 (0x1 * 0x4) type 1
    m_lastMoveInputTime: f32, // +0x26e8 size: 0x4 (0x1 * 0x4) type 1
    m_vNewVPhysicsPosition: m.Vector3, // +0x26ec size: 0xc (0x1 * 0xc) type 3
    m_vNewVPhysicsVelocity: m.Vector3, // +0x26f8 size: 0xc (0x1 * 0xc) type 3
    m_vNewVPhysicsWishVel: m.Vector3, // +0x2704 size: 0xc (0x1 * 0xc) type 3
    m_vecPreviouslyPredictedOrigin: m.Vector3, // +0x2710 size: 0xc (0x1 * 0xc) type 3
    m_nBodyPitchPoseParam: i32, // +0x271c size: 0x4 (0x1 * 0x4) type 5
    m_lastNavArea: *anyopaque, // +0x2720 size: 0x8 (0x1 * 0x8) type 0
    m_szNetworkIDString: [64]u8, // +0x2728 size: 0x40 (0x40 * 0x1) type 8
    m_squad: *anyopaque, // +0x2768 size: 0x8 (0x1 * 0x8) type 31
    m_SquadName: [*:0]u8, // +0x2770 size: 0x8 (0x1 * 0x8) type 2
    m_gameMovementUtil: [56]abi.undefined, // +0x2778 size: 0x38 (0x1 * 0x38) type 0
    m_flTimeAllSuitDevicesOff: f32, // +0x27b0 size: 0x4 (0x1 * 0x4) type 1
    m_bIsStickySprinting: bool, // +0x27b4 size: 0x1 (0x1 * 0x1) type 6
    gap_27b5: [3]abi.undefined,
    m_fStickySprintMinTime: f32, // +0x27b8 size: 0x4 (0x1 * 0x4) type 1
    m_bPlayedSprintStartEffects: bool, // +0x27bc size: 0x1 (0x1 * 0x1) type 6
    gap_27bd: [3]abi.undefined,
    m_autoSprintForced: i32, // +0x27c0 size: 0x4 (0x1 * 0x4) type 5
    m_fIsSprinting: bool, // +0x27c4 size: 0x1 (0x1 * 0x1) type 6
    m_fIsWalking: bool, // +0x27c5 size: 0x1 (0x1 * 0x1) type 6
    gap_27c6: [2]abi.undefined,
    m_useHeldTime: f32, // +0x27c8 size: 0x4 (0x1 * 0x4) type 1
    m_sprintStartedTime: valve.time, // +0x27cc size: 0x4 (0x1 * 0x4) type 16
    m_sprintStartedFrac: valve.time, // +0x27d0 size: 0x4 (0x1 * 0x4) type 16
    m_sprintEndedTime: valve.time, // +0x27d4 size: 0x4 (0x1 * 0x4) type 16
    m_sprintEndedFrac: valve.time, // +0x27d8 size: 0x4 (0x1 * 0x4) type 16
    m_stickySprintStartTime: valve.time, // +0x27dc size: 0x4 (0x1 * 0x4) type 16
    m_bSinglePlayerGameEnding: bool, // +0x27e0 size: 0x1 (0x1 * 0x1) type 6
    gap_27e1: [3]abi.undefined,
    m_ubEFNoInterpParity: i32, // +0x27e4 size: 0x4 (0x1 * 0x4) type 5
    m_viewConeActive: bool, // +0x27e8 size: 0x1 (0x1 * 0x1) type 6
    m_viewConeParented: bool, // +0x27e9 size: 0x1 (0x1 * 0x1) type 6
    gap_27ea: [2]abi.undefined,
    m_viewConeParity: i32, // +0x27ec size: 0x4 (0x1 * 0x4) type 5
    m_lastViewConeParityTick: i32, // +0x27f0 size: 0x4 (0x1 * 0x4) type 5
    m_viewConeLerpTime: f32, // +0x27f4 size: 0x4 (0x1 * 0x4) type 1
    m_viewConeSpecificEnabled: bool, // +0x27f8 size: 0x1 (0x1 * 0x1) type 6
    gap_27f9: [3]abi.undefined,
    m_viewConeSpecific: m.Vector3, // +0x27fc size: 0xc (0x1 * 0xc) type 3
    m_viewConeRelativeAngleMin: m.Vector3, // +0x2808 size: 0xc (0x1 * 0xc) type 3
    m_viewConeRelativeAngleMax: m.Vector3, // +0x2814 size: 0xc (0x1 * 0xc) type 3
    m_hReservedSpawnPoint: valve.EHANDLE, // +0x2820 size: 0x4 (0x1 * 0x4) type 13
    m_hLastSpawnPoint: valve.EHANDLE, // +0x2824 size: 0x4 (0x1 * 0x4) type 13
    m_autoKickDisabled: bool, // +0x2828 size: 0x1 (0x1 * 0x1) type 6
    gap_2829: [3]abi.undefined,
    m_movementCollisionNormal: m.Vector3, // +0x282c size: 0xc (0x1 * 0xc) type 3
    m_groundNormal: m.Vector3, // +0x2838 size: 0xc (0x1 * 0xc) type 3
    m_stuckCharacter: valve.EHANDLE, // +0x2844 size: 0x4 (0x1 * 0x4) type 13
    m_title: [32]u8, // +0x2848 size: 0x20 (0x20 * 0x1) type 8
    sentHUDScriptChecksum: bool, // +0x2868 size: 0x1 (0x1 * 0x1) type 6
    m_bIsFullyConnected: bool, // +0x2869 size: 0x1 (0x1 * 0x1) type 6
    gap_286a: [2]abi.undefined,
    m_lastDeathInfo: server.CTakeDamageInfo, // +0x286c size: 0x78 (0x1 * 0x78) type 10
    gap_28e4: [4]abi.undefined,
    m_melee: server.PlayerMelee_PlayerData, // +0x28e8 size: 0x28 (0x1 * 0x28) type 10
    m_lungeTargetEntity: valve.EHANDLE, // +0x2910 size: 0x4 (0x1 * 0x4) type 13
    m_isLungingToPosition: bool, // +0x2914 size: 0x1 (0x1 * 0x1) type 6
    gap_2915: [3]abi.undefined,
    m_lungeTargetPosition: m.Vector3, // +0x2918 size: 0xc (0x1 * 0xc) type 3
    m_lungeStartPositionOffset: m.Vector3, // +0x2924 size: 0xc (0x1 * 0xc) type 3
    m_lungeStartPositionOffset_notLagCompensated: m.Vector3, // +0x2930 size: 0xc (0x1 * 0xc) type 3
    m_lungeEndPositionOffset: m.Vector3, // +0x293c size: 0xc (0x1 * 0xc) type 3
    m_lungeStartTime: valve.time, // +0x2948 size: 0x4 (0x1 * 0x4) type 16
    m_lungeEndTime: valve.time, // +0x294c size: 0x4 (0x1 * 0x4) type 16
    m_lungeCanFly: bool, // +0x2950 size: 0x1 (0x1 * 0x1) type 6
    m_lungeLockPitch: bool, // +0x2951 size: 0x1 (0x1 * 0x1) type 6
    gap_2952: [2]abi.undefined,
    m_lungeStartPitch: f32, // +0x2954 size: 0x4 (0x1 * 0x4) type 1
    m_lungeSmoothTime: f32, // +0x2958 size: 0x4 (0x1 * 0x4) type 1
    m_lungeMaxTime: f32, // +0x295c size: 0x4 (0x1 * 0x4) type 1
    m_lungeMaxEndSpeed: f32, // +0x2960 size: 0x4 (0x1 * 0x4) type 1
    m_useCredit: bool, // +0x2964 size: 0x1 (0x1 * 0x1) type 6
    gap_2965: [3]abi.undefined,
    m_smartAmmoNextTarget: *anyopaque, // +0x2968 size: 0x8 (0x1 * 0x8) type 31
    m_smartAmmoPrevTarget: *anyopaque, // +0x2970 size: 0x8 (0x1 * 0x8) type 31
    m_smartAmmoHighestLocksOnMeFractionValues: [4]f32, // +0x2978 size: 0x10 (0x4 * 0x4) type 1
    m_smartAmmoHighestLocksOnMeEntities: [4]valve.EHANDLE, // +0x2988 size: 0x10 (0x4 * 0x4) type 13
    m_smartAmmoPreviousHighestLockOnMeFractionValue: f32, // +0x2998 size: 0x4 (0x1 * 0x4) type 1
    m_smartAmmoPendingHighestLocksOnMeFractionValues: [4]f32, // +0x299c size: 0x10 (0x4 * 0x4) type 1
    gap_29ac: [4]abi.undefined,
    m_smartAmmoPendingHighestLocksOnMeEntities: [4]*server.CBaseEntity, // +0x29b0 size: 0x20 (0x4 * 0x8) type 12
    m_smartAmmoRemoveFromTargetList: bool, // +0x29d0 size: 0x1 (0x1 * 0x1) type 6
    gap_29d1: [3]abi.undefined,
    m_delayedFlinchEvents: i32, // +0x29d4 size: 0x4 (0x1 * 0x4) type 5
    m_delayedFlinchEventCount: i64, // +0x29d8 size: 0x8 (0x1 * 0x8) type 29
    m_extraWeaponModNames: [512]u8, // +0x29e0 size: 0x200 (0x200 * 0x1) type 8
    m_extraWeaponModNamesArray: [64]abi.undefined, // +0x2be0 size: 0x40 (0x1 * 0x40) type 0
    m_extraWeaponModNameCount: i64, // +0x2c20 size: 0x8 (0x1 * 0x8) type 29
    m_pPlayerAISquad: *anyopaque, // +0x2c28 size: 0x8 (0x1 * 0x8) type 0
    m_flAreaCaptureScoreAccumulator: f32, // +0x2c30 size: 0x4 (0x1 * 0x4) type 1
    m_flCapPointScoreRate: f32, // +0x2c34 size: 0x4 (0x1 * 0x4) type 1
    m_flConnectionTime: f32, // +0x2c38 size: 0x4 (0x1 * 0x4) type 1
    m_fullyConnectedTime: f32, // +0x2c3c size: 0x4 (0x1 * 0x4) type 1
    m_connectedForDurationCallback_duration: f32, // +0x2c40 size: 0x4 (0x1 * 0x4) type 1
    m_flLastForcedChangeTeamTime: f32, // +0x2c44 size: 0x4 (0x1 * 0x4) type 1
    m_iBalanceScore: i32, // +0x2c48 size: 0x4 (0x1 * 0x4) type 5
    gap_2c4c: [4]abi.undefined,
    m_PlayerAnimState: *anyopaque, // +0x2c50 size: 0x8 (0x1 * 0x8) type 31
    m_vWorldSpaceCenterHolder: m.Vector3, // +0x2c58 size: 0xc (0x1 * 0xc) type 15
    m_vPrevGroundNormal: m.Vector3, // +0x2c64 size: 0xc (0x1 * 0xc) type 3
    m_threadedPostProcessJob: i32, // +0x2c70 size: 0x4 (0x1 * 0x4) type 5
    gap_2c74: [4]abi.undefined,
    m_Shared: server.CPlayerShared, // +0x2c78 size: 0xa0 (0x1 * 0xa0) type 10
    m_statusEffectsTimedPlayerNV: [10]server.StatusEffectTimedData, // +0x2d18 size: 0x18 (0xa * 0x2) type 10
    m_statusEffectsEndlessPlayerNV: [10]server.StatusEffectEndlessData, // +0x2e08 size: 0x10 (0xa * 0x1) type 10
    m_pilotClassIndex: i32, // +0x2ea8 size: 0x4 (0x1 * 0x4) type 5
    m_latestCommandRun: i32, // +0x2eac size: 0x4 (0x1 * 0x4) type 5
    m_nearbyPushers: [480]abi.undefined, // +0x2eb0 size: 0x1e0 (0x1 * 0x1e0) type 0
    m_nearbyPusherCount: i32, // +0x3090 size: 0x4 (0x1 * 0x4) type 5
    m_pushHistory: [16]server.PushHistoryEntry, // +0x3094 size: 0x10 (0x10 * 0x1) type 10
    m_pushHistoryEntryIndex: i32, // +0x3194 size: 0x4 (0x1 * 0x4) type 5
    m_baseVelocityLastServerTime: valve.time, // +0x3198 size: 0x4 (0x1 * 0x4) type 16
    m_pushedThisFrame: m.Vector3, // +0x319c size: 0xc (0x1 * 0xc) type 3
    m_pushedThisSnapshotAccum: m.Vector3, // +0x31a8 size: 0xc (0x1 * 0xc) type 3
    m_pushedFixedPointOffset: [3]i32, // +0x31b4 size: 0xc (0x3 * 0x4) type 5
    m_lastCommandContextWarnTime: valve.time, // +0x31c0 size: 0x4 (0x1 * 0x4) type 16
    m_pushAwayFromTopAcceleration: m.Vector3, // +0x31c4 size: 0xc (0x1 * 0xc) type 3
    m_trackedState: [52]f32, // +0x31d0 size: 0xd0 (0x34 * 0x4) type 1
    m_prevTrackedState: i32, // +0x32a0 size: 0x4 (0x1 * 0x4) type 5
    m_prevTrackedStatePos: m.Vector3, // +0x32a4 size: 0xc (0x1 * 0xc) type 3
    m_recordingAnim: *anyopaque, // +0x32b0 size: 0x8 (0x1 * 0x8) type 0
    m_animRecordFile: *anyopaque, // +0x32b8 size: 0x8 (0x1 * 0x8) type 0
    m_animRecordButtons: [4]abi.undefined, // +0x32c0 size: 0x4 (0x1 * 0x4) type 0
    m_prevAbsOrigin: m.Vector3, // +0x32c4 size: 0xc (0x1 * 0xc) type 3
    m_sendMovementCallbacks: bool, // +0x32d0 size: 0x1 (0x1 * 0x1) type 6
    m_sendInputCallbacks: bool, // +0x32d1 size: 0x1 (0x1 * 0x1) type 6
    gap_32d2: [2]abi.undefined,
    m_predictableServerEvents: [16]server.PredictableServerEvent, // +0x32d4 size: 0x18 (0x10 * 0x1) type 10
    m_predictableServerEventCount: i32, // +0x3454 size: 0x4 (0x1 * 0x4) type 5
    m_predictableServerEventAcked: i32, // +0x3458 size: 0x4 (0x1 * 0x4) type 5
    m_playerScriptNetDataGlobal: valve.EHANDLE, // +0x345c size: 0x4 (0x1 * 0x4) type 13
    m_playerScriptNetDataExclusive: valve.EHANDLE, // +0x3460 size: 0x4 (0x1 * 0x4) type 13

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x3468);
        try std.testing.expect(@offsetOf(@This(), "m_szNetname") == 0x1498);
        try std.testing.expect(@offsetOf(@This(), "m_bZooming") == 0x1598);
        try std.testing.expect(@offsetOf(@This(), "m_zoomToggleOn") == 0x1599);
        try std.testing.expect(@offsetOf(@This(), "m_zoomBaseFrac") == 0x159c);
        try std.testing.expect(@offsetOf(@This(), "m_zoomBaseTime") == 0x15a0);
        try std.testing.expect(@offsetOf(@This(), "m_zoomFullStartTime") == 0x15a4);
        try std.testing.expect(@offsetOf(@This(), "m_physicsSolidMask") == 0x15a8);
        try std.testing.expect(@offsetOf(@This(), "m_StuckLast") == 0x15ac);
        try std.testing.expect(@offsetOf(@This(), "m_Local") == 0x15b0);
        try std.testing.expect(@offsetOf(@This(), "m_PlayerFog") == 0x19d8);
        try std.testing.expect(@offsetOf(@This(), "m_hTriggerTonemapList") == 0x1b48);
        try std.testing.expect(@offsetOf(@This(), "m_hColorCorrectionCtrl") == 0x1b68);
        try std.testing.expect(@offsetOf(@This(), "m_hTriggerSoundscapeList") == 0x1b70);
        try std.testing.expect(@offsetOf(@This(), "pl") == 0x1b90);
        try std.testing.expect(@offsetOf(@This(), "m_rodeo") == 0x1c10);
        try std.testing.expect(@offsetOf(@This(), "m_hasBadReputation") == 0x1c90);
        try std.testing.expect(@offsetOf(@This(), "m_communityName") == 0x1c91);
        try std.testing.expect(@offsetOf(@This(), "m_communityClanTag") == 0x1cd1);
        try std.testing.expect(@offsetOf(@This(), "m_factionName") == 0x1ce1);
        try std.testing.expect(@offsetOf(@This(), "m_hardwareIcon") == 0x1cf1);
        try std.testing.expect(@offsetOf(@This(), "m_happyHourActive") == 0x1d01);
        try std.testing.expect(@offsetOf(@This(), "m_platformUserId") == 0x1d08);
        try std.testing.expect(@offsetOf(@This(), "m_classModsActive") == 0x1d10);
        try std.testing.expect(@offsetOf(@This(), "m_classModsActiveOld") == 0x1d14);
        try std.testing.expect(@offsetOf(@This(), "m_classModValues") == 0x1d18);
        try std.testing.expect(@offsetOf(@This(), "m_posClassModsActive") == 0x1d8c);
        try std.testing.expect(@offsetOf(@This(), "m_posClassModsActiveOld") == 0x1d9c);
        try std.testing.expect(@offsetOf(@This(), "m_perPosValues") == 0x1dac);
        try std.testing.expect(@offsetOf(@This(), "m_passives") == 0x1dcc);
        try std.testing.expect(@offsetOf(@This(), "m_communityId") == 0x1e4c);
        try std.testing.expect(@offsetOf(@This(), "m_nButtons") == 0x1e50);
        try std.testing.expect(@offsetOf(@This(), "m_afButtonPressed") == 0x1e54);
        try std.testing.expect(@offsetOf(@This(), "m_afButtonReleased") == 0x1e58);
        try std.testing.expect(@offsetOf(@This(), "m_afButtonLast") == 0x1e5c);
        try std.testing.expect(@offsetOf(@This(), "m_afButtonDisabled") == 0x1e60);
        try std.testing.expect(@offsetOf(@This(), "m_afButtonForced") == 0x1e64);
        try std.testing.expect(@offsetOf(@This(), "m_forwardMove") == 0x1e68);
        try std.testing.expect(@offsetOf(@This(), "m_sideMove") == 0x1e6c);
        try std.testing.expect(@offsetOf(@This(), "m_prevForwardMove") == 0x1e70);
        try std.testing.expect(@offsetOf(@This(), "m_prevSideMove") == 0x1e74);
        try std.testing.expect(@offsetOf(@This(), "m_bLagCompensation") == 0x1e78);
        try std.testing.expect(@offsetOf(@This(), "m_bPredictWeapons") == 0x1e79);
        try std.testing.expect(@offsetOf(@This(), "m_bPredictionEnabled") == 0x1e7a);
        try std.testing.expect(@offsetOf(@This(), "m_wantedToMatchmake") == 0x1e7b);
        try std.testing.expect(@offsetOf(@This(), "m_skyCamera") == 0x1e7c);
        try std.testing.expect(@offsetOf(@This(), "m_titanSoulBeingRodeoed") == 0x1e80);
        try std.testing.expect(@offsetOf(@This(), "m_entitySyncingWithMe") == 0x1e84);
        try std.testing.expect(@offsetOf(@This(), "m_playerFlags") == 0x1e88);
        try std.testing.expect(@offsetOf(@This(), "m_hasMic") == 0x1e8c);
        try std.testing.expect(@offsetOf(@This(), "m_inPartyChat") == 0x1e8d);
        try std.testing.expect(@offsetOf(@This(), "m_playerMoveSpeedScale") == 0x1e90);
        try std.testing.expect(@offsetOf(@This(), "m_gestureSequences") == 0x1e94);
        try std.testing.expect(@offsetOf(@This(), "m_gestureStartTimes") == 0x1ea4);
        try std.testing.expect(@offsetOf(@This(), "m_gestureBlendInDuration") == 0x1eb4);
        try std.testing.expect(@offsetOf(@This(), "m_gestureBlendOutDuration") == 0x1ec4);
        try std.testing.expect(@offsetOf(@This(), "m_gestureFadeOutStartTime") == 0x1ed4);
        try std.testing.expect(@offsetOf(@This(), "m_gestureFadeOutDuration") == 0x1ee4);
        try std.testing.expect(@offsetOf(@This(), "m_gestureAutoKillBitfield") == 0x1ef4);
        try std.testing.expect(@offsetOf(@This(), "m_bDropEnabled") == 0x1ef8);
        try std.testing.expect(@offsetOf(@This(), "m_bDuckEnabled") == 0x1ef9);
        try std.testing.expect(@offsetOf(@This(), "m_iRespawnFrames") == 0x1efc);
        try std.testing.expect(@offsetOf(@This(), "m_afPhysicsFlags") == 0x1f00);
        try std.testing.expect(@offsetOf(@This(), "m_remoteTurret") == 0x1f04);
        try std.testing.expect(@offsetOf(@This(), "m_flTimeLastTouchedGround") == 0x1f08);
        try std.testing.expect(@offsetOf(@This(), "m_flTimeLastJumped") == 0x1f0c);
        try std.testing.expect(@offsetOf(@This(), "m_flTimeLastLanded") == 0x1f10);
        try std.testing.expect(@offsetOf(@This(), "m_upDirWhenLastTouchedGround") == 0x1f14);
        try std.testing.expect(@offsetOf(@This(), "m_bHasJumpedSinceTouchedGround") == 0x1f20);
        try std.testing.expect(@offsetOf(@This(), "m_holdToUseTimeLeft") == 0x1f24);
        try std.testing.expect(@offsetOf(@This(), "m_fTimeLastHurt") == 0x1f28);
        try std.testing.expect(@offsetOf(@This(), "m_fLastAimBotCheckTime") == 0x1f2c);
        try std.testing.expect(@offsetOf(@This(), "m_accumDamageImpulseVel") == 0x1f30);
        try std.testing.expect(@offsetOf(@This(), "m_accumDamageImpulseTime") == 0x1f3c);
        try std.testing.expect(@offsetOf(@This(), "m_damageImpulseNoDecelEndTime") == 0x1f40);
        try std.testing.expect(@offsetOf(@This(), "m_hDmgEntity") == 0x1f44);
        try std.testing.expect(@offsetOf(@This(), "m_DmgTake") == 0x1f48);
        try std.testing.expect(@offsetOf(@This(), "m_bitsDamageType") == 0x1f4c);
        try std.testing.expect(@offsetOf(@This(), "m_bitsHUDDamage") == 0x1f50);
        try std.testing.expect(@offsetOf(@This(), "m_xpRate") == 0x1f54);
        try std.testing.expect(@offsetOf(@This(), "m_flDeathTime") == 0x1f58);
        try std.testing.expect(@offsetOf(@This(), "m_flDeathAnimTime") == 0x1f5c);
        try std.testing.expect(@offsetOf(@This(), "m_frozen") == 0x1f60);
        try std.testing.expect(@offsetOf(@This(), "m_stressAnimation") == 0x1f61);
        try std.testing.expect(@offsetOf(@This(), "m_iObserverMode") == 0x1f64);
        try std.testing.expect(@offsetOf(@This(), "m_iObserverLastMode") == 0x1f68);
        try std.testing.expect(@offsetOf(@This(), "m_hObserverTarget") == 0x1f6c);
        try std.testing.expect(@offsetOf(@This(), "m_observerModeStaticPosition") == 0x1f70);
        try std.testing.expect(@offsetOf(@This(), "m_observerModeStaticAngles") == 0x1f7c);
        try std.testing.expect(@offsetOf(@This(), "m_isValidChaseObserverTarget") == 0x1f88);
        try std.testing.expect(@offsetOf(@This(), "m_vphysicsCollisionState") == 0x1f8c);
        try std.testing.expect(@offsetOf(@This(), "m_bHasVPhysicsCollision") == 0x1f90);
        try std.testing.expect(@offsetOf(@This(), "m_fNextSuicideTime") == 0x1f94);
        try std.testing.expect(@offsetOf(@This(), "m_iSuicideCustomKillFlags") == 0x1f98);
        try std.testing.expect(@offsetOf(@This(), "m_preNoClipPhysicsFlags") == 0x1f9c);
        try std.testing.expect(@offsetOf(@This(), "m_hTonemapController") == 0x1fa0);
        try std.testing.expect(@offsetOf(@This(), "m_activeBurnCardIndex") == 0x1fa4);
        try std.testing.expect(@offsetOf(@This(), "m_CommandContext") == 0x1fa8);
        try std.testing.expect(@offsetOf(@This(), "m_pPhysicsController") == 0x1fc8);
        try std.testing.expect(@offsetOf(@This(), "m_pShadowStand") == 0x1fd0);
        try std.testing.expect(@offsetOf(@This(), "m_pShadowCrouch") == 0x1fd8);
        try std.testing.expect(@offsetOf(@This(), "m_oldOrigin") == 0x1fe0);
        try std.testing.expect(@offsetOf(@This(), "m_vecSmoothedVelocity") == 0x1fec);
        try std.testing.expect(@offsetOf(@This(), "m_bTouchedPhysObject") == 0x1ff8);
        try std.testing.expect(@offsetOf(@This(), "m_bPhysicsWasFrozen") == 0x1ff9);
        try std.testing.expect(@offsetOf(@This(), "m_iTargetVolume") == 0x1ffc);
        try std.testing.expect(@offsetOf(@This(), "m_flDuckTime") == 0x2000);
        try std.testing.expect(@offsetOf(@This(), "m_flDuckJumpTime") == 0x2004);
        try std.testing.expect(@offsetOf(@This(), "m_VDU") == 0x2008);
        try std.testing.expect(@offsetOf(@This(), "m_fInitHUD") == 0x2009);
        try std.testing.expect(@offsetOf(@This(), "m_fGameHUDInitialized") == 0x200a);
        try std.testing.expect(@offsetOf(@This(), "m_fWeapon") == 0x200b);
        try std.testing.expect(@offsetOf(@This(), "m_iUpdateTime") == 0x200c);
        try std.testing.expect(@offsetOf(@This(), "m_iConnected") == 0x2010);
        try std.testing.expect(@offsetOf(@This(), "m_iPlayerLocked") == 0x2014);
        try std.testing.expect(@offsetOf(@This(), "m_gameStats") == 0x2018);
        try std.testing.expect(@offsetOf(@This(), "m_firstPersonProxy") == 0x2048);
        try std.testing.expect(@offsetOf(@This(), "m_predictedFirstPersonProxy") == 0x204c);
        try std.testing.expect(@offsetOf(@This(), "m_grappleHook") == 0x2050);
        try std.testing.expect(@offsetOf(@This(), "m_petTitan") == 0x2054);
        try std.testing.expect(@offsetOf(@This(), "m_petTitanMode") == 0x2058);
        try std.testing.expect(@offsetOf(@This(), "m_xp") == 0x205c);
        try std.testing.expect(@offsetOf(@This(), "m_generation") == 0x2060);
        try std.testing.expect(@offsetOf(@This(), "m_rank") == 0x2064);
        try std.testing.expect(@offsetOf(@This(), "m_serverForceIncreasePlayerListGenerationParity") == 0x2068);
        try std.testing.expect(@offsetOf(@This(), "m_isPlayingRanked") == 0x206c);
        try std.testing.expect(@offsetOf(@This(), "m_skill_mu") == 0x2070);
        try std.testing.expect(@offsetOf(@This(), "m_hardpointEntity") == 0x2074);
        try std.testing.expect(@offsetOf(@This(), "m_nextTitanRespawnAvailable") == 0x2078);
        try std.testing.expect(@offsetOf(@This(), "m_activeViewmodelModifiers") == 0x207c);
        try std.testing.expect(@offsetOf(@This(), "m_activeViewmodelModifiersChanged") == 0x2095);
        try std.testing.expect(@offsetOf(@This(), "m_hViewModel") == 0x2098);
        try std.testing.expect(@offsetOf(@This(), "m_LastCmd") == 0x20a0);
        try std.testing.expect(@offsetOf(@This(), "m_pCurrentCommand") == 0x21d8);
        try std.testing.expect(@offsetOf(@This(), "m_flStepSoundTime") == 0x21e0);
        try std.testing.expect(@offsetOf(@This(), "m_flStepSoundReduceTime") == 0x21e4);
        try std.testing.expect(@offsetOf(@This(), "m_hThirdPersonEnt") == 0x21e8);
        try std.testing.expect(@offsetOf(@This(), "m_thirdPerson") == 0x21f0);
        try std.testing.expect(@offsetOf(@This(), "m_duckState") == 0x2250);
        try std.testing.expect(@offsetOf(@This(), "m_StandHullMin") == 0x2254);
        try std.testing.expect(@offsetOf(@This(), "m_StandHullMax") == 0x2260);
        try std.testing.expect(@offsetOf(@This(), "m_DuckHullMin") == 0x226c);
        try std.testing.expect(@offsetOf(@This(), "m_DuckHullMax") == 0x2278);
        try std.testing.expect(@offsetOf(@This(), "m_upDir") == 0x2284);
        try std.testing.expect(@offsetOf(@This(), "m_upDirPredicted") == 0x2290);
        try std.testing.expect(@offsetOf(@This(), "m_lastWallRunStartPos") == 0x229c);
        try std.testing.expect(@offsetOf(@This(), "m_wallRunStartTime") == 0x22a8);
        try std.testing.expect(@offsetOf(@This(), "m_wallRunClearTime") == 0x22ac);
        try std.testing.expect(@offsetOf(@This(), "m_wallRunCount") == 0x22b0);
        try std.testing.expect(@offsetOf(@This(), "m_wallRunWeak") == 0x22b4);
        try std.testing.expect(@offsetOf(@This(), "m_wallRunPushAwayTime") == 0x22b8);
        try std.testing.expect(@offsetOf(@This(), "m_wallrunFrictionScale") == 0x22bc);
        try std.testing.expect(@offsetOf(@This(), "m_groundFrictionScale") == 0x22c0);
        try std.testing.expect(@offsetOf(@This(), "m_wallrunRetryTime") == 0x22c4);
        try std.testing.expect(@offsetOf(@This(), "m_wallrunRetryPos") == 0x22c8);
        try std.testing.expect(@offsetOf(@This(), "m_wallrunRetryNormal") == 0x22d4);
        try std.testing.expect(@offsetOf(@This(), "m_wallHanging") == 0x22e0);
        try std.testing.expect(@offsetOf(@This(), "m_wallHangStartTime") == 0x22e4);
        try std.testing.expect(@offsetOf(@This(), "m_wallHangTime") == 0x22e8);
        try std.testing.expect(@offsetOf(@This(), "m_traversalType") == 0x22ec);
        try std.testing.expect(@offsetOf(@This(), "m_traversalState") == 0x22f0);
        try std.testing.expect(@offsetOf(@This(), "m_traversalBegin") == 0x22f4);
        try std.testing.expect(@offsetOf(@This(), "m_traversalMid") == 0x2300);
        try std.testing.expect(@offsetOf(@This(), "m_traversalEnd") == 0x230c);
        try std.testing.expect(@offsetOf(@This(), "m_traversalMidFrac") == 0x2318);
        try std.testing.expect(@offsetOf(@This(), "m_traversalForwardDir") == 0x231c);
        try std.testing.expect(@offsetOf(@This(), "m_traversalRefPos") == 0x2328);
        try std.testing.expect(@offsetOf(@This(), "m_traversalProgress") == 0x2334);
        try std.testing.expect(@offsetOf(@This(), "m_traversalStartTime") == 0x2338);
        try std.testing.expect(@offsetOf(@This(), "m_traversalHandAppearTime") == 0x233c);
        try std.testing.expect(@offsetOf(@This(), "m_traversalReleaseTime") == 0x2340);
        try std.testing.expect(@offsetOf(@This(), "m_traversalBlendOutStartTime") == 0x2344);
        try std.testing.expect(@offsetOf(@This(), "m_traversalBlendOutStartOffset") == 0x2348);
        try std.testing.expect(@offsetOf(@This(), "m_traversalYawDelta") == 0x2354);
        try std.testing.expect(@offsetOf(@This(), "m_traversalYawPoseParameter") == 0x2358);
        try std.testing.expect(@offsetOf(@This(), "m_wallDangleJumpOffTime") == 0x235c);
        try std.testing.expect(@offsetOf(@This(), "m_wallDangleMayHangHere") == 0x2360);
        try std.testing.expect(@offsetOf(@This(), "m_wallDangleForceFallOff") == 0x2361);
        try std.testing.expect(@offsetOf(@This(), "m_wallDangleLastPushedForward") == 0x2362);
        try std.testing.expect(@offsetOf(@This(), "m_wallDangleDisableWeapon") == 0x2364);
        try std.testing.expect(@offsetOf(@This(), "m_wallDangleClimbProgressFloor") == 0x2368);
        try std.testing.expect(@offsetOf(@This(), "m_prevMoveYaw") == 0x236c);
        try std.testing.expect(@offsetOf(@This(), "m_sprintTiltVel") == 0x2370);
        try std.testing.expect(@offsetOf(@This(), "m_sprintTiltPoseParameter") == 0x2374);
        try std.testing.expect(@offsetOf(@This(), "m_sprintFracPoseParameter") == 0x2378);
        try std.testing.expect(@offsetOf(@This(), "m_grapple") == 0x2380);
        try std.testing.expect(@offsetOf(@This(), "m_grappleActive") == 0x23e8);
        try std.testing.expect(@offsetOf(@This(), "m_grappleNeedWindowCheck") == 0x23e9);
        try std.testing.expect(@offsetOf(@This(), "m_grappleNextWindowHint") == 0x23ec);
        try std.testing.expect(@offsetOf(@This(), "m_sliding") == 0x23f0);
        try std.testing.expect(@offsetOf(@This(), "m_slideLongJumpAllowed") == 0x23f1);
        try std.testing.expect(@offsetOf(@This(), "m_lastSlideTime") == 0x23f4);
        try std.testing.expect(@offsetOf(@This(), "m_lastSlideBoost") == 0x23f8);
        try std.testing.expect(@offsetOf(@This(), "m_activeZipline") == 0x23fc);
        try std.testing.expect(@offsetOf(@This(), "m_ziplineReverse") == 0x2400);
        try std.testing.expect(@offsetOf(@This(), "m_lastZipline") == 0x2404);
        try std.testing.expect(@offsetOf(@This(), "m_useLastZiplineCooldown") == 0x2408);
        try std.testing.expect(@offsetOf(@This(), "m_ziplineValid3pWeaponLayerAnim") == 0x240c);
        try std.testing.expect(@offsetOf(@This(), "m_ziplineState") == 0x2410);
        try std.testing.expect(@offsetOf(@This(), "m_zipline") == 0x2418);
        try std.testing.expect(@offsetOf(@This(), "m_operator") == 0x2468);
        try std.testing.expect(@offsetOf(@This(), "m_viewOffsetEntity") == 0x24e8);
        try std.testing.expect(@offsetOf(@This(), "m_animViewEntity") == 0x2500);
        try std.testing.expect(@offsetOf(@This(), "m_highSpeedViewmodelAnims") == 0x2580);
        try std.testing.expect(@offsetOf(@This(), "m_gravityGrenadeStatusEffect") == 0x2584);
        try std.testing.expect(@offsetOf(@This(), "m_onSlopeTime") == 0x2588);
        try std.testing.expect(@offsetOf(@This(), "m_lastWallNormal") == 0x258c);
        try std.testing.expect(@offsetOf(@This(), "m_dodgingInAir") == 0x2598);
        try std.testing.expect(@offsetOf(@This(), "m_dodging") == 0x2599);
        try std.testing.expect(@offsetOf(@This(), "m_lastDodgeTime") == 0x259c);
        try std.testing.expect(@offsetOf(@This(), "m_airSpeed") == 0x25a0);
        try std.testing.expect(@offsetOf(@This(), "m_airAcceleration") == 0x25a4);
        try std.testing.expect(@offsetOf(@This(), "m_iSpawnParity") == 0x25a8);
        try std.testing.expect(@offsetOf(@This(), "m_boosting") == 0x25a9);
        try std.testing.expect(@offsetOf(@This(), "m_repeatedBoost") == 0x25aa);
        try std.testing.expect(@offsetOf(@This(), "m_boostMeter") == 0x25ac);
        try std.testing.expect(@offsetOf(@This(), "m_jetpack") == 0x25b0);
        try std.testing.expect(@offsetOf(@This(), "m_gliding") == 0x25b1);
        try std.testing.expect(@offsetOf(@This(), "m_glideMeter") == 0x25b4);
        try std.testing.expect(@offsetOf(@This(), "m_glideRechargeDelayAccumulator") == 0x25b8);
        try std.testing.expect(@offsetOf(@This(), "m_hovering") == 0x25bc);
        try std.testing.expect(@offsetOf(@This(), "m_climbing") == 0x25bd);
        try std.testing.expect(@offsetOf(@This(), "m_isPerformingBoostAction") == 0x25be);
        try std.testing.expect(@offsetOf(@This(), "m_lastJumpHeight") == 0x25c0);
        try std.testing.expect(@offsetOf(@This(), "m_numPingsUsed") == 0x25c4);
        try std.testing.expect(@offsetOf(@This(), "m_numPingsAvailable") == 0x25c8);
        try std.testing.expect(@offsetOf(@This(), "m_lastPingTime") == 0x25cc);
        try std.testing.expect(@offsetOf(@This(), "m_pingGroupStartTime") == 0x25d0);
        try std.testing.expect(@offsetOf(@This(), "m_pingGroupAccumulator") == 0x25d4);
        try std.testing.expect(@offsetOf(@This(), "m_lastBodySound1p") == 0x25d8);
        try std.testing.expect(@offsetOf(@This(), "m_lastBodySound3p") == 0x25e0);
        try std.testing.expect(@offsetOf(@This(), "m_lastFinishSound1p") == 0x25e8);
        try std.testing.expect(@offsetOf(@This(), "m_lastFinishSound3p") == 0x25f0);
        try std.testing.expect(@offsetOf(@This(), "m_primedSound1p") == 0x25f8);
        try std.testing.expect(@offsetOf(@This(), "m_primedSound3p") == 0x2600);
        try std.testing.expect(@offsetOf(@This(), "m_currentFramePlayer") == 0x2608);
        try std.testing.expect(@offsetOf(@This(), "m_currentFrameLocalPlayer") == 0x2628);
        try std.testing.expect(@offsetOf(@This(), "m_nImpulse") == 0x2688);
        try std.testing.expect(@offsetOf(@This(), "m_flFlashTime") == 0x268c);
        try std.testing.expect(@offsetOf(@This(), "m_flForwardMove") == 0x2690);
        try std.testing.expect(@offsetOf(@This(), "m_flSideMove") == 0x2694);
        try std.testing.expect(@offsetOf(@This(), "m_nNumCrateHudHints") == 0x2698);
        try std.testing.expect(@offsetOf(@This(), "m_needStuckCheck") == 0x269c);
        try std.testing.expect(@offsetOf(@This(), "m_totalFrameTime") == 0x26a0);
        try std.testing.expect(@offsetOf(@This(), "m_joinFrameTime") == 0x26a4);
        try std.testing.expect(@offsetOf(@This(), "m_lastUCmdSimulationTicks") == 0x26a8);
        try std.testing.expect(@offsetOf(@This(), "m_lastUCmdSimulationRemainderTime") == 0x26ac);
        try std.testing.expect(@offsetOf(@This(), "m_totalExtraClientCmdTimeAttempted") == 0x26b0);
        try std.testing.expect(@offsetOf(@This(), "m_bGamePaused") == 0x26b4);
        try std.testing.expect(@offsetOf(@This(), "m_bPlayerUnderwater") == 0x26b5);
        try std.testing.expect(@offsetOf(@This(), "m_hPlayerViewEntity") == 0x26b8);
        try std.testing.expect(@offsetOf(@This(), "m_bShouldDrawPlayerWhileUsingViewEntity") == 0x26bc);
        try std.testing.expect(@offsetOf(@This(), "m_hConstraintEntity") == 0x26c0);
        try std.testing.expect(@offsetOf(@This(), "m_vecConstraintCenter") == 0x26c4);
        try std.testing.expect(@offsetOf(@This(), "m_flConstraintRadius") == 0x26d0);
        try std.testing.expect(@offsetOf(@This(), "m_flConstraintWidth") == 0x26d4);
        try std.testing.expect(@offsetOf(@This(), "m_flConstraintSpeedFactor") == 0x26d8);
        try std.testing.expect(@offsetOf(@This(), "m_bConstraintPastRadius") == 0x26dc);
        try std.testing.expect(@offsetOf(@This(), "m_lastActiveTime") == 0x26e0);
        try std.testing.expect(@offsetOf(@This(), "m_flLaggedMovementValue") == 0x26e4);
        try std.testing.expect(@offsetOf(@This(), "m_lastMoveInputTime") == 0x26e8);
        try std.testing.expect(@offsetOf(@This(), "m_vNewVPhysicsPosition") == 0x26ec);
        try std.testing.expect(@offsetOf(@This(), "m_vNewVPhysicsVelocity") == 0x26f8);
        try std.testing.expect(@offsetOf(@This(), "m_vNewVPhysicsWishVel") == 0x2704);
        try std.testing.expect(@offsetOf(@This(), "m_vecPreviouslyPredictedOrigin") == 0x2710);
        try std.testing.expect(@offsetOf(@This(), "m_nBodyPitchPoseParam") == 0x271c);
        try std.testing.expect(@offsetOf(@This(), "m_lastNavArea") == 0x2720);
        try std.testing.expect(@offsetOf(@This(), "m_szNetworkIDString") == 0x2728);
        try std.testing.expect(@offsetOf(@This(), "m_squad") == 0x2768);
        try std.testing.expect(@offsetOf(@This(), "m_SquadName") == 0x2770);
        try std.testing.expect(@offsetOf(@This(), "m_gameMovementUtil") == 0x2778);
        try std.testing.expect(@offsetOf(@This(), "m_flTimeAllSuitDevicesOff") == 0x27b0);
        try std.testing.expect(@offsetOf(@This(), "m_bIsStickySprinting") == 0x27b4);
        try std.testing.expect(@offsetOf(@This(), "m_fStickySprintMinTime") == 0x27b8);
        try std.testing.expect(@offsetOf(@This(), "m_bPlayedSprintStartEffects") == 0x27bc);
        try std.testing.expect(@offsetOf(@This(), "m_autoSprintForced") == 0x27c0);
        try std.testing.expect(@offsetOf(@This(), "m_fIsSprinting") == 0x27c4);
        try std.testing.expect(@offsetOf(@This(), "m_fIsWalking") == 0x27c5);
        try std.testing.expect(@offsetOf(@This(), "m_useHeldTime") == 0x27c8);
        try std.testing.expect(@offsetOf(@This(), "m_sprintStartedTime") == 0x27cc);
        try std.testing.expect(@offsetOf(@This(), "m_sprintStartedFrac") == 0x27d0);
        try std.testing.expect(@offsetOf(@This(), "m_sprintEndedTime") == 0x27d4);
        try std.testing.expect(@offsetOf(@This(), "m_sprintEndedFrac") == 0x27d8);
        try std.testing.expect(@offsetOf(@This(), "m_stickySprintStartTime") == 0x27dc);
        try std.testing.expect(@offsetOf(@This(), "m_bSinglePlayerGameEnding") == 0x27e0);
        try std.testing.expect(@offsetOf(@This(), "m_ubEFNoInterpParity") == 0x27e4);
        try std.testing.expect(@offsetOf(@This(), "m_viewConeActive") == 0x27e8);
        try std.testing.expect(@offsetOf(@This(), "m_viewConeParented") == 0x27e9);
        try std.testing.expect(@offsetOf(@This(), "m_viewConeParity") == 0x27ec);
        try std.testing.expect(@offsetOf(@This(), "m_lastViewConeParityTick") == 0x27f0);
        try std.testing.expect(@offsetOf(@This(), "m_viewConeLerpTime") == 0x27f4);
        try std.testing.expect(@offsetOf(@This(), "m_viewConeSpecificEnabled") == 0x27f8);
        try std.testing.expect(@offsetOf(@This(), "m_viewConeSpecific") == 0x27fc);
        try std.testing.expect(@offsetOf(@This(), "m_viewConeRelativeAngleMin") == 0x2808);
        try std.testing.expect(@offsetOf(@This(), "m_viewConeRelativeAngleMax") == 0x2814);
        try std.testing.expect(@offsetOf(@This(), "m_hReservedSpawnPoint") == 0x2820);
        try std.testing.expect(@offsetOf(@This(), "m_hLastSpawnPoint") == 0x2824);
        try std.testing.expect(@offsetOf(@This(), "m_autoKickDisabled") == 0x2828);
        try std.testing.expect(@offsetOf(@This(), "m_movementCollisionNormal") == 0x282c);
        try std.testing.expect(@offsetOf(@This(), "m_groundNormal") == 0x2838);
        try std.testing.expect(@offsetOf(@This(), "m_stuckCharacter") == 0x2844);
        try std.testing.expect(@offsetOf(@This(), "m_title") == 0x2848);
        try std.testing.expect(@offsetOf(@This(), "sentHUDScriptChecksum") == 0x2868);
        try std.testing.expect(@offsetOf(@This(), "m_bIsFullyConnected") == 0x2869);
        try std.testing.expect(@offsetOf(@This(), "m_lastDeathInfo") == 0x286c);
        try std.testing.expect(@offsetOf(@This(), "m_melee") == 0x28e8);
        try std.testing.expect(@offsetOf(@This(), "m_lungeTargetEntity") == 0x2910);
        try std.testing.expect(@offsetOf(@This(), "m_isLungingToPosition") == 0x2914);
        try std.testing.expect(@offsetOf(@This(), "m_lungeTargetPosition") == 0x2918);
        try std.testing.expect(@offsetOf(@This(), "m_lungeStartPositionOffset") == 0x2924);
        try std.testing.expect(@offsetOf(@This(), "m_lungeStartPositionOffset_notLagCompensated") == 0x2930);
        try std.testing.expect(@offsetOf(@This(), "m_lungeEndPositionOffset") == 0x293c);
        try std.testing.expect(@offsetOf(@This(), "m_lungeStartTime") == 0x2948);
        try std.testing.expect(@offsetOf(@This(), "m_lungeEndTime") == 0x294c);
        try std.testing.expect(@offsetOf(@This(), "m_lungeCanFly") == 0x2950);
        try std.testing.expect(@offsetOf(@This(), "m_lungeLockPitch") == 0x2951);
        try std.testing.expect(@offsetOf(@This(), "m_lungeStartPitch") == 0x2954);
        try std.testing.expect(@offsetOf(@This(), "m_lungeSmoothTime") == 0x2958);
        try std.testing.expect(@offsetOf(@This(), "m_lungeMaxTime") == 0x295c);
        try std.testing.expect(@offsetOf(@This(), "m_lungeMaxEndSpeed") == 0x2960);
        try std.testing.expect(@offsetOf(@This(), "m_useCredit") == 0x2964);
        try std.testing.expect(@offsetOf(@This(), "m_smartAmmoNextTarget") == 0x2968);
        try std.testing.expect(@offsetOf(@This(), "m_smartAmmoPrevTarget") == 0x2970);
        try std.testing.expect(@offsetOf(@This(), "m_smartAmmoHighestLocksOnMeFractionValues") == 0x2978);
        try std.testing.expect(@offsetOf(@This(), "m_smartAmmoHighestLocksOnMeEntities") == 0x2988);
        try std.testing.expect(@offsetOf(@This(), "m_smartAmmoPreviousHighestLockOnMeFractionValue") == 0x2998);
        try std.testing.expect(@offsetOf(@This(), "m_smartAmmoPendingHighestLocksOnMeFractionValues") == 0x299c);
        try std.testing.expect(@offsetOf(@This(), "m_smartAmmoPendingHighestLocksOnMeEntities") == 0x29b0);
        try std.testing.expect(@offsetOf(@This(), "m_smartAmmoRemoveFromTargetList") == 0x29d0);
        try std.testing.expect(@offsetOf(@This(), "m_delayedFlinchEvents") == 0x29d4);
        try std.testing.expect(@offsetOf(@This(), "m_delayedFlinchEventCount") == 0x29d8);
        try std.testing.expect(@offsetOf(@This(), "m_extraWeaponModNames") == 0x29e0);
        try std.testing.expect(@offsetOf(@This(), "m_extraWeaponModNamesArray") == 0x2be0);
        try std.testing.expect(@offsetOf(@This(), "m_extraWeaponModNameCount") == 0x2c20);
        try std.testing.expect(@offsetOf(@This(), "m_pPlayerAISquad") == 0x2c28);
        try std.testing.expect(@offsetOf(@This(), "m_flAreaCaptureScoreAccumulator") == 0x2c30);
        try std.testing.expect(@offsetOf(@This(), "m_flCapPointScoreRate") == 0x2c34);
        try std.testing.expect(@offsetOf(@This(), "m_flConnectionTime") == 0x2c38);
        try std.testing.expect(@offsetOf(@This(), "m_fullyConnectedTime") == 0x2c3c);
        try std.testing.expect(@offsetOf(@This(), "m_connectedForDurationCallback_duration") == 0x2c40);
        try std.testing.expect(@offsetOf(@This(), "m_flLastForcedChangeTeamTime") == 0x2c44);
        try std.testing.expect(@offsetOf(@This(), "m_iBalanceScore") == 0x2c48);
        try std.testing.expect(@offsetOf(@This(), "m_PlayerAnimState") == 0x2c50);
        try std.testing.expect(@offsetOf(@This(), "m_vWorldSpaceCenterHolder") == 0x2c58);
        try std.testing.expect(@offsetOf(@This(), "m_vPrevGroundNormal") == 0x2c64);
        try std.testing.expect(@offsetOf(@This(), "m_threadedPostProcessJob") == 0x2c70);
        try std.testing.expect(@offsetOf(@This(), "m_Shared") == 0x2c78);
        try std.testing.expect(@offsetOf(@This(), "m_statusEffectsTimedPlayerNV") == 0x2d18);
        try std.testing.expect(@offsetOf(@This(), "m_statusEffectsEndlessPlayerNV") == 0x2e08);
        try std.testing.expect(@offsetOf(@This(), "m_pilotClassIndex") == 0x2ea8);
        try std.testing.expect(@offsetOf(@This(), "m_latestCommandRun") == 0x2eac);
        try std.testing.expect(@offsetOf(@This(), "m_nearbyPushers") == 0x2eb0);
        try std.testing.expect(@offsetOf(@This(), "m_nearbyPusherCount") == 0x3090);
        try std.testing.expect(@offsetOf(@This(), "m_pushHistory") == 0x3094);
        try std.testing.expect(@offsetOf(@This(), "m_pushHistoryEntryIndex") == 0x3194);
        try std.testing.expect(@offsetOf(@This(), "m_baseVelocityLastServerTime") == 0x3198);
        try std.testing.expect(@offsetOf(@This(), "m_pushedThisFrame") == 0x319c);
        try std.testing.expect(@offsetOf(@This(), "m_pushedThisSnapshotAccum") == 0x31a8);
        try std.testing.expect(@offsetOf(@This(), "m_pushedFixedPointOffset") == 0x31b4);
        try std.testing.expect(@offsetOf(@This(), "m_lastCommandContextWarnTime") == 0x31c0);
        try std.testing.expect(@offsetOf(@This(), "m_pushAwayFromTopAcceleration") == 0x31c4);
        try std.testing.expect(@offsetOf(@This(), "m_trackedState") == 0x31d0);
        try std.testing.expect(@offsetOf(@This(), "m_prevTrackedState") == 0x32a0);
        try std.testing.expect(@offsetOf(@This(), "m_prevTrackedStatePos") == 0x32a4);
        try std.testing.expect(@offsetOf(@This(), "m_recordingAnim") == 0x32b0);
        try std.testing.expect(@offsetOf(@This(), "m_animRecordFile") == 0x32b8);
        try std.testing.expect(@offsetOf(@This(), "m_animRecordButtons") == 0x32c0);
        try std.testing.expect(@offsetOf(@This(), "m_prevAbsOrigin") == 0x32c4);
        try std.testing.expect(@offsetOf(@This(), "m_sendMovementCallbacks") == 0x32d0);
        try std.testing.expect(@offsetOf(@This(), "m_sendInputCallbacks") == 0x32d1);
        try std.testing.expect(@offsetOf(@This(), "m_predictableServerEvents") == 0x32d4);
        try std.testing.expect(@offsetOf(@This(), "m_predictableServerEventCount") == 0x3454);
        try std.testing.expect(@offsetOf(@This(), "m_predictableServerEventAcked") == 0x3458);
        try std.testing.expect(@offsetOf(@This(), "m_playerScriptNetDataGlobal") == 0x345c);
        try std.testing.expect(@offsetOf(@This(), "m_playerScriptNetDataExclusive") == 0x3460);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
