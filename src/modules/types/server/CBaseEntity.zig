pub const CBaseEntity = extern struct {
    vtable: *anyopaque,
    m_RefEHandle: [4]abi.undefined, // +0x8 size: 0x4 (0x1 * 0x4) type 0
    gap_c: [4]abi.undefined,
    m_collideable: *anyopaque, // +0x10 size: 0x8 (0x1 * 0x8) type 31
    m_networkable: *anyopaque, // +0x18 size: 0x8 (0x1 * 0x8) type 31
    genericKeyValueCount: i32, // +0x20 size: 0x4 (0x1 * 0x4) type 5
    gap_24: [4]abi.undefined,
    genericKeyValues: *anyopaque, // +0x28 size: 0x8 (0x1 * 0x8) type 31
    m_pfnMoveDone: valve.Func, // +0x30 size: 0x8 (0x1 * 0x8) type 21
    m_pfnThink: valve.Func, // +0x38 size: 0x8 (0x1 * 0x8) type 21
    m_Network: server.CServerNetworkProperty, // +0x40 size: 0x28 (0x1 * 0x28) type 10
    m_entIndex: i32, // +0x68 size: 0x4 (0x1 * 0x4) type 5
    gap_6c: [4]abi.undefined,
    m_iClassname: [*:0]u8, // +0x70 size: 0x8 (0x1 * 0x8) type 2
    m_flAnimTime: valve.time, // +0x78 size: 0x4 (0x1 * 0x4) type 16
    m_flSimulationTime: valve.time, // +0x7c size: 0x4 (0x1 * 0x4) type 16
    m_creationTick: i32, // +0x80 size: 0x4 (0x1 * 0x4) type 5
    m_nLastThinkTick: valve.tick, // +0x84 size: 0x4 (0x1 * 0x4) type 17
    m_PredictableID: i32, // +0x88 size: 0x4 (0x1 * 0x4) type 5
    touchStamp: i32, // +0x8c size: 0x4 (0x1 * 0x4) type 5
    m_aThinkFunctions: [32]abi.undefined, // +0x90 size: 0x20 (0x1 * 0x20) type 11
    m_entitySpawnTime: valve.time, // +0xb0 size: 0x4 (0x1 * 0x4) type 16
    m_spawner: valve.EHANDLE, // +0xb4 size: 0x4 (0x1 * 0x4) type 13
    m_scriptClass: i32, // +0xb8 size: 0x4 (0x1 * 0x4) type 5
    m_wantsDamageCallbacks: bool, // +0xbc size: 0x1 (0x1 * 0x1) type 6
    m_wantsDeathCallbacks: bool, // +0xbd size: 0x1 (0x1 * 0x1) type 6
    gap_be: [2]abi.undefined,
    m_nNextThinkTick: valve.tick, // +0xc0 size: 0x4 (0x1 * 0x4) type 17
    m_fEffects: i32, // +0xc4 size: 0x4 (0x1 * 0x4) type 5
    m_ModelName: [*:0]u8, // +0xc8 size: 0x8 (0x1 * 0x8) type 2
    m_target: [*:0]u8, // +0xd0 size: 0x8 (0x1 * 0x8) type 2
    m_networkedFlags: i32, // +0xd8 size: 0x4 (0x1 * 0x4) type 5
    m_nRenderFX: u8, // +0xdc size: 0x1 (0x1 * 0x1) type 8
    m_nRenderMode: u8, // +0xdd size: 0x1 (0x1 * 0x1) type 8
    m_nModelIndex: i16, // +0xde size: 0x2 (0x1 * 0x2) type 7
    m_clrRender: valve.Color32, // +0xe0 size: 0x4 (0x1 * 0x4) type 9
    m_desiredHibernationType: i32, // +0xe4 size: 0x4 (0x1 * 0x4) type 5
    m_scriptMinHibernationType: i32, // +0xe8 size: 0x4 (0x1 * 0x4) type 5
    m_minSelfAndDescendantHibernationType: i32, // +0xec size: 0x4 (0x1 * 0x4) type 5
    m_actualHibernationType: i32, // +0xf0 size: 0x4 (0x1 * 0x4) type 5
    m_hibernationQueueIndex: i32, // +0xf4 size: 0x4 (0x1 * 0x4) type 5
    m_bRenderWithViewModels: bool, // +0xf8 size: 0x1 (0x1 * 0x1) type 6
    gap_f9: [3]abi.undefined,
    m_nameVisibilityFlags: i32, // +0xfc size: 0x4 (0x1 * 0x4) type 5
    m_cloakEndTime: f32, // +0x100 size: 0x4 (0x1 * 0x4) type 1
    m_cloakFadeInEndTime: f32, // +0x104 size: 0x4 (0x1 * 0x4) type 1
    m_cloakFadeOutStartTime: f32, // +0x108 size: 0x4 (0x1 * 0x4) type 1
    m_cloakFadeInDuration: f32, // +0x10c size: 0x4 (0x1 * 0x4) type 1
    m_cloakFlickerAmount: f32, // +0x110 size: 0x4 (0x1 * 0x4) type 1
    m_cloakFlickerEndTime: f32, // +0x114 size: 0x4 (0x1 * 0x4) type 1
    m_cloakFadeOutDuration: f32, // +0x118 size: 0x4 (0x1 * 0x4) type 1
    m_highlightIsNetworked: bool, // +0x11c size: 0x1 (0x1 * 0x1) type 6
    gap_11d: [3]abi.undefined,
    m_highlightParams: [16]m.Vector3, // +0x120 size: 0xc0 (0x10 * 0xc) type 3
    m_highlightFunctionBits: [8]i32, // +0x1e0 size: 0x20 (0x8 * 0x4) type 5
    m_highlightPlayerVisibilityBits: [8]i32, // +0x200 size: 0x20 (0x8 * 0x4) type 5
    m_highlightServerFadeBases: [2]f32, // +0x220 size: 0x8 (0x2 * 0x4) type 1
    m_highlightServerFadeStartTimes: [2]f32, // +0x228 size: 0x8 (0x2 * 0x4) type 1
    m_highlightServerFadeEndTimes: [2]f32, // +0x230 size: 0x8 (0x2 * 0x4) type 1
    m_highlightServerContextID: i32, // +0x238 size: 0x4 (0x1 * 0x4) type 5
    m_highlightTeamBits: i32, // +0x23c size: 0x4 (0x1 * 0x4) type 5
    m_nextGrenadeTargetTime: valve.time, // +0x240 size: 0x4 (0x1 * 0x4) type 16
    m_grenadeTargetDebounce: valve.time, // +0x244 size: 0x4 (0x1 * 0x4) type 16
    m_nSimulationTick: valve.tick, // +0x248 size: 0x4 (0x1 * 0x4) type 17
    m_fDataObjectTypes: i32, // +0x24c size: 0x4 (0x1 * 0x4) type 5
    m_nextVelocitySample: f32, // +0x250 size: 0x4 (0x1 * 0x4) type 1
    m_velocitySamples: [5]m.Vector3, // +0x254 size: 0x3c (0x5 * 0xc) type 3
    m_iEFlags: i64, // +0x290 size: 0x8 (0x1 * 0x8) type 29
    m_fFlags: i32, // +0x298 size: 0x4 (0x1 * 0x4) type 5
    gap_29c: [4]abi.undefined,
    m_iName: [*:0]u8, // +0x2a0 size: 0x8 (0x1 * 0x8) type 2
    m_scriptNameIndex: i32, // +0x2a8 size: 0x4 (0x1 * 0x4) type 5
    m_instanceNameIndex: i32, // +0x2ac size: 0x4 (0x1 * 0x4) type 5
    m_scriptName: [64]u8, // +0x2b0 size: 0x40 (0x40 * 0x1) type 8
    m_instanceName: [64]u8, // +0x2f0 size: 0x40 (0x40 * 0x1) type 8
    m_holdUsePrompt: [*:0]u8, // +0x330 size: 0x8 (0x1 * 0x8) type 2
    m_pressUsePrompt: [*:0]u8, // +0x338 size: 0x8 (0x1 * 0x8) type 2
    m_attachmentLerpStartTime: f32, // +0x340 size: 0x4 (0x1 * 0x4) type 1
    m_attachmentLerpEndTime: f32, // +0x344 size: 0x4 (0x1 * 0x4) type 1
    m_attachmentLerpStartOrigin: m.Vector3, // +0x348 size: 0xc (0x1 * 0xc) type 3
    m_attachmentLerpStartAngles: m.Vector3, // +0x354 size: 0xc (0x1 * 0xc) type 3
    m_parentAttachmentType: i32, // +0x360 size: 0x4 (0x1 * 0x4) type 5
    m_parentAttachmentIndex: i32, // +0x364 size: 0x4 (0x1 * 0x4) type 5
    m_parentAttachmentHitbox: i32, // +0x368 size: 0x4 (0x1 * 0x4) type 5
    m_parentAttachmentModel: i32, // +0x36c size: 0x4 (0x1 * 0x4) type 5
    m_MoveType: u8, // +0x370 size: 0x1 (0x1 * 0x1) type 8
    m_MoveCollide: u8, // +0x371 size: 0x1 (0x1 * 0x1) type 8
    gap_372: [2]abi.undefined,
    m_RestoreMoveTypeOnDetach: i32, // +0x374 size: 0x4 (0x1 * 0x4) type 5
    m_hMoveParent: valve.EHANDLE, // +0x378 size: 0x4 (0x1 * 0x4) type 13
    m_hMoveChild: valve.EHANDLE, // +0x37c size: 0x4 (0x1 * 0x4) type 13
    m_hMovePeer: valve.EHANDLE, // +0x380 size: 0x4 (0x1 * 0x4) type 13
    m_bIsActiveChild: bool, // +0x384 size: 0x1 (0x1 * 0x1) type 6
    m_bPrevAbsOriginValid: bool, // +0x385 size: 0x1 (0x1 * 0x1) type 6
    gap_386: [2]abi.undefined,
    m_Collision: server.CCollisionProperty, // +0x388 size: 0x70 (0x1 * 0x70) type 10
    m_hOwnerEntity: valve.EHANDLE, // +0x3f8 size: 0x4 (0x1 * 0x4) type 13
    m_CollisionGroup: i32, // +0x3fc size: 0x4 (0x1 * 0x4) type 5
    m_contents: i32, // +0x400 size: 0x4 (0x1 * 0x4) type 5
    m_baseSolidType: i32, // +0x404 size: 0x4 (0x1 * 0x4) type 5
    m_pPhysicsObject: [8]abi.undefined, // +0x408 size: 0x8 (0x1 * 0x8) type 11
    m_flNavIgnoreUntilTime: valve.time, // +0x410 size: 0x4 (0x1 * 0x4) type 16
    m_hGroundEntity: valve.EHANDLE, // +0x414 size: 0x4 (0x1 * 0x4) type 13
    m_flGroundChangeTime: valve.time, // +0x418 size: 0x4 (0x1 * 0x4) type 16
    m_vecBaseVelocity: m.Vector3, // +0x41c size: 0xc (0x1 * 0xc) type 3
    m_vecAbsVelocity: m.Vector3, // +0x428 size: 0xc (0x1 * 0xc) type 3
    m_vecAngVelocity: m.Vector3, // +0x434 size: 0xc (0x1 * 0xc) type 3
    m_rgflCoordinateFrame: [12]f32, // +0x440 size: 0x30 (0xc * 0x4) type 1
    m_flFriction: f32, // +0x470 size: 0x4 (0x1 * 0x4) type 1
    m_flLocalTime: f32, // +0x474 size: 0x4 (0x1 * 0x4) type 1
    m_flVPhysicsUpdateLocalTime: f32, // +0x478 size: 0x4 (0x1 * 0x4) type 1
    m_flMoveDoneTime: f32, // +0x47c size: 0x4 (0x1 * 0x4) type 1
    m_nPushEnumCount: i32, // +0x480 size: 0x4 (0x1 * 0x4) type 5
    m_vecPrevAbsOrigin: m.Vector3, // +0x484 size: 0xc (0x1 * 0xc) type 15
    m_vecAbsOrigin: m.Vector3, // +0x490 size: 0xc (0x1 * 0xc) type 15
    m_angAbsRotation: m.Vector3, // +0x49c size: 0xc (0x1 * 0xc) type 3
    m_vecVelocity: m.Vector3, // +0x4a8 size: 0xc (0x1 * 0xc) type 3
    m_pBlocker: valve.EHANDLE, // +0x4b4 size: 0x4 (0x1 * 0x4) type 13
    m_iGlobalname: [*:0]u8, // +0x4b8 size: 0x8 (0x1 * 0x8) type 2
    m_iParent: [*:0]u8, // +0x4c0 size: 0x8 (0x1 * 0x8) type 2
    m_iHammerID: i32, // +0x4c8 size: 0x4 (0x1 * 0x4) type 5
    m_flSpeed: f32, // +0x4cc size: 0x4 (0x1 * 0x4) type 1
    m_iMaxHealth: i32, // +0x4d0 size: 0x4 (0x1 * 0x4) type 5
    m_iHealth: i32, // +0x4d4 size: 0x4 (0x1 * 0x4) type 5
    m_pfnTouch: valve.Func, // +0x4d8 size: 0x8 (0x1 * 0x8) type 21
    m_pfnUse: valve.Func, // +0x4e0 size: 0x8 (0x1 * 0x8) type 21
    m_pfnBlocked: valve.Func, // +0x4e8 size: 0x8 (0x1 * 0x8) type 21
    m_bClientSideRagdoll: bool, // +0x4f0 size: 0x1 (0x1 * 0x1) type 6
    m_lifeState: u8, // +0x4f1 size: 0x1 (0x1 * 0x1) type 8
    m_forceVisibleInPhaseShift: bool, // +0x4f2 size: 0x1 (0x1 * 0x1) type 6
    m_baseTakeDamage: u8, // +0x4f3 size: 0x1 (0x1 * 0x1) type 8
    m_invulnerableToDamageCount: i32, // +0x4f4 size: 0x4 (0x1 * 0x4) type 5
    m_passDamageToParent: u8, // +0x4f8 size: 0x1 (0x1 * 0x1) type 8
    gap_4f9: [3]abi.undefined,
    m_deathVelocity: m.Vector3, // +0x4fc size: 0xc (0x1 * 0xc) type 3
    m_lastTitanFootstepDamageTime: valve.time, // +0x508 size: 0x4 (0x1 * 0x4) type 16
    m_flMaxspeed: f32, // +0x50c size: 0x4 (0x1 * 0x4) type 1
    m_visibilityFlags: i32, // +0x510 size: 0x4 (0x1 * 0x4) type 5
    m_scriptVisible: bool, // +0x514 size: 0x1 (0x1 * 0x1) type 6
    gap_515: [3]abi.undefined,
    m_OnUser1: [40]abi.undefined, // +0x518 size: 0x28 (0x1 * 0x28) type 11
    m_OnDeath: [40]abi.undefined, // +0x540 size: 0x28 (0x1 * 0x28) type 11
    m_OnDestroy: [40]abi.undefined, // +0x568 size: 0x28 (0x1 * 0x28) type 11
    m_cellwidth: i32, // +0x590 size: 0x4 (0x1 * 0x4) type 5
    m_cellbits: i32, // +0x594 size: 0x4 (0x1 * 0x4) type 5
    m_cellX: i32, // +0x598 size: 0x4 (0x1 * 0x4) type 5
    m_cellY: i32, // +0x59c size: 0x4 (0x1 * 0x4) type 5
    m_cellZ: i32, // +0x5a0 size: 0x4 (0x1 * 0x4) type 5
    m_localOrigin: m.Vector3, // +0x5a4 size: 0xc (0x1 * 0xc) type 3
    m_localAngles: m.Vector3, // +0x5b0 size: 0xc (0x1 * 0xc) type 3
    m_vecViewOffset: m.Vector3, // +0x5bc size: 0xc (0x1 * 0xc) type 3
    m_ListByClass: i32, // +0x5c8 size: 0x4 (0x1 * 0x4) type 5
    gap_5cc: [4]abi.undefined,
    m_pPrevByClass: *anyopaque, // +0x5d0 size: 0x8 (0x1 * 0x8) type 31
    m_pNextByClass: *anyopaque, // +0x5d8 size: 0x8 (0x1 * 0x8) type 31
    m_iInitialTeamNum: i32, // +0x5e0 size: 0x4 (0x1 * 0x4) type 5
    m_iTeamNum: i32, // +0x5e4 size: 0x4 (0x1 * 0x4) type 5
    m_passThroughFlags: i32, // +0x5e8 size: 0x4 (0x1 * 0x4) type 5
    m_passThroughThickness: i32, // +0x5ec size: 0x4 (0x1 * 0x4) type 5
    m_passThroughDirection: f32, // +0x5f0 size: 0x4 (0x1 * 0x4) type 1
    m_spawnflags: i32, // +0x5f4 size: 0x4 (0x1 * 0x4) type 5
    m_AIAddOn: [*:0]u8, // +0x5f8 size: 0x8 (0x1 * 0x8) type 2
    m_flGravity: f32, // +0x600 size: 0x4 (0x1 * 0x4) type 1
    m_entityFadeDist: f32, // +0x604 size: 0x4 (0x1 * 0x4) type 1
    m_dissolveEffectEntityHandle: valve.EHANDLE, // +0x608 size: 0x4 (0x1 * 0x4) type 13
    m_fadeDist: f32, // +0x60c size: 0x4 (0x1 * 0x4) type 1
    m_iSignifierName: [*:0]u8, // +0x610 size: 0x8 (0x1 * 0x8) type 2
    m_collectedInvalidateFlags: i32, // +0x618 size: 0x4 (0x1 * 0x4) type 5
    m_collectingInvalidateFlags: bool, // +0x61c size: 0x1 (0x1 * 0x1) type 6
    gap_61d: [3]abi.undefined,
    m_lagCompensationCounter: i32, // +0x620 size: 0x4 (0x1 * 0x4) type 5
    m_bLagCompensate: bool, // +0x624 size: 0x1 (0x1 * 0x1) type 6
    m_bNetworkQuantizeOriginAndAngles: bool, // +0x625 size: 0x1 (0x1 * 0x1) type 6
    m_bForcePurgeFixedupStrings: bool, // +0x626 size: 0x1 (0x1 * 0x1) type 6
    gap_627: [1]abi.undefined,
    m_pEvent: *anyopaque, // +0x628 size: 0x8 (0x1 * 0x8) type 31
    m_debugOverlays: i32, // +0x630 size: 0x4 (0x1 * 0x4) type 5
    gap_634: [4]abi.undefined,
    m_pTimedOverlay: *anyopaque, // +0x638 size: 0x8 (0x1 * 0x8) type 31
    m_ScriptScope: [32]abi.undefined, // +0x640 size: 0x20 (0x1 * 0x20) type 0
    m_hScriptInstance: *anyopaque, // +0x660 size: 0x8 (0x1 * 0x8) type 0
    m_iszScriptId: [*:0]u8, // +0x668 size: 0x8 (0x1 * 0x8) type 2
    m_bossPlayer: valve.EHANDLE, // +0x670 size: 0x4 (0x1 * 0x4) type 13
    m_usableType: i32, // +0x674 size: 0x4 (0x1 * 0x4) type 5
    m_usablePriority: i32, // +0x678 size: 0x4 (0x1 * 0x4) type 5
    m_usableRadius: f32, // +0x67c size: 0x4 (0x1 * 0x4) type 1
    m_usableFOV: f32, // +0x680 size: 0x4 (0x1 * 0x4) type 1
    m_usePromptSize: f32, // +0x684 size: 0x4 (0x1 * 0x4) type 1
    m_hasDispatchedSpawn: bool, // +0x688 size: 0x1 (0x1 * 0x1) type 6
    m_bDoDestroyCallback: bool, // +0x689 size: 0x1 (0x1 * 0x1) type 6
    m_bDoPreSpawnCallback: bool, // +0x68a size: 0x1 (0x1 * 0x1) type 6
    m_bDoOnSpawnedCallback: bool, // +0x68b size: 0x1 (0x1 * 0x1) type 6
    m_spottedBeginTimes: [31]f32, // +0x68c size: 0x7c (0x1f * 0x4) type 1
    m_spottedLatestTimes: [31]f32, // +0x708 size: 0x7c (0x1f * 0x4) type 1
    m_spottedByTeams: i32, // +0x784 size: 0x4 (0x1 * 0x4) type 5
    m_minimapData: [40]abi.undefined, // +0x788 size: 0x28 (0x1 * 0x28) type 0
    m_shieldHealth: i32, // +0x7b0 size: 0x4 (0x1 * 0x4) type 5
    m_shieldHealthMax: i32, // +0x7b4 size: 0x4 (0x1 * 0x4) type 5
    m_areEntityLinksNetworked: bool, // +0x7b8 size: 0x1 (0x1 * 0x1) type 6
    gap_7b9: [3]abi.undefined,
    m_entitiesLinkedFromMeCount: i32, // +0x7bc size: 0x4 (0x1 * 0x4) type 5
    m_entitiesLinkedToMeCount: i32, // +0x7c0 size: 0x4 (0x1 * 0x4) type 5
    m_entitiesLinkedFromMe: [64]valve.EHANDLE, // +0x7c4 size: 0x100 (0x40 * 0x4) type 13
    m_entitiesLinkedToMe: [64]valve.EHANDLE, // +0x8c4 size: 0x100 (0x40 * 0x4) type 13
    m_pusherWithChildrenRadius: f32, // +0x9c4 size: 0x4 (0x1 * 0x4) type 1
    m_childPusherMoveHandlerCount: i32, // +0x9c8 size: 0x4 (0x1 * 0x4) type 5
    gap_9cc: [4]abi.undefined,
    m_statusEffectPlugin: *server.CBaseEntity, // +0x9d0 size: 0x8 (0x1 * 0x8) type 12
    gap_9d8: [1]abi.undefined,
    m_physDummyMotionEnabled: bool, // +0x9d9 size: 0x1 (0x1 * 0x1) type 6

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x9e0);
        try std.testing.expect(@offsetOf(@This(), "m_RefEHandle") == 0x8);
        try std.testing.expect(@offsetOf(@This(), "m_collideable") == 0x10);
        try std.testing.expect(@offsetOf(@This(), "m_networkable") == 0x18);
        try std.testing.expect(@offsetOf(@This(), "genericKeyValueCount") == 0x20);
        try std.testing.expect(@offsetOf(@This(), "genericKeyValues") == 0x28);
        try std.testing.expect(@offsetOf(@This(), "m_pfnMoveDone") == 0x30);
        try std.testing.expect(@offsetOf(@This(), "m_pfnThink") == 0x38);
        try std.testing.expect(@offsetOf(@This(), "m_Network") == 0x40);
        try std.testing.expect(@offsetOf(@This(), "m_entIndex") == 0x68);
        try std.testing.expect(@offsetOf(@This(), "m_iClassname") == 0x70);
        try std.testing.expect(@offsetOf(@This(), "m_flAnimTime") == 0x78);
        try std.testing.expect(@offsetOf(@This(), "m_flSimulationTime") == 0x7c);
        try std.testing.expect(@offsetOf(@This(), "m_creationTick") == 0x80);
        try std.testing.expect(@offsetOf(@This(), "m_nLastThinkTick") == 0x84);
        try std.testing.expect(@offsetOf(@This(), "m_PredictableID") == 0x88);
        try std.testing.expect(@offsetOf(@This(), "touchStamp") == 0x8c);
        try std.testing.expect(@offsetOf(@This(), "m_aThinkFunctions") == 0x90);
        try std.testing.expect(@offsetOf(@This(), "m_entitySpawnTime") == 0xb0);
        try std.testing.expect(@offsetOf(@This(), "m_spawner") == 0xb4);
        try std.testing.expect(@offsetOf(@This(), "m_scriptClass") == 0xb8);
        try std.testing.expect(@offsetOf(@This(), "m_wantsDamageCallbacks") == 0xbc);
        try std.testing.expect(@offsetOf(@This(), "m_wantsDeathCallbacks") == 0xbd);
        try std.testing.expect(@offsetOf(@This(), "m_nNextThinkTick") == 0xc0);
        try std.testing.expect(@offsetOf(@This(), "m_fEffects") == 0xc4);
        try std.testing.expect(@offsetOf(@This(), "m_ModelName") == 0xc8);
        try std.testing.expect(@offsetOf(@This(), "m_target") == 0xd0);
        try std.testing.expect(@offsetOf(@This(), "m_networkedFlags") == 0xd8);
        try std.testing.expect(@offsetOf(@This(), "m_nRenderFX") == 0xdc);
        try std.testing.expect(@offsetOf(@This(), "m_nRenderMode") == 0xdd);
        try std.testing.expect(@offsetOf(@This(), "m_nModelIndex") == 0xde);
        try std.testing.expect(@offsetOf(@This(), "m_clrRender") == 0xe0);
        try std.testing.expect(@offsetOf(@This(), "m_desiredHibernationType") == 0xe4);
        try std.testing.expect(@offsetOf(@This(), "m_scriptMinHibernationType") == 0xe8);
        try std.testing.expect(@offsetOf(@This(), "m_minSelfAndDescendantHibernationType") == 0xec);
        try std.testing.expect(@offsetOf(@This(), "m_actualHibernationType") == 0xf0);
        try std.testing.expect(@offsetOf(@This(), "m_hibernationQueueIndex") == 0xf4);
        try std.testing.expect(@offsetOf(@This(), "m_bRenderWithViewModels") == 0xf8);
        try std.testing.expect(@offsetOf(@This(), "m_nameVisibilityFlags") == 0xfc);
        try std.testing.expect(@offsetOf(@This(), "m_cloakEndTime") == 0x100);
        try std.testing.expect(@offsetOf(@This(), "m_cloakFadeInEndTime") == 0x104);
        try std.testing.expect(@offsetOf(@This(), "m_cloakFadeOutStartTime") == 0x108);
        try std.testing.expect(@offsetOf(@This(), "m_cloakFadeInDuration") == 0x10c);
        try std.testing.expect(@offsetOf(@This(), "m_cloakFlickerAmount") == 0x110);
        try std.testing.expect(@offsetOf(@This(), "m_cloakFlickerEndTime") == 0x114);
        try std.testing.expect(@offsetOf(@This(), "m_cloakFadeOutDuration") == 0x118);
        try std.testing.expect(@offsetOf(@This(), "m_highlightIsNetworked") == 0x11c);
        try std.testing.expect(@offsetOf(@This(), "m_highlightParams") == 0x120);
        try std.testing.expect(@offsetOf(@This(), "m_highlightFunctionBits") == 0x1e0);
        try std.testing.expect(@offsetOf(@This(), "m_highlightPlayerVisibilityBits") == 0x200);
        try std.testing.expect(@offsetOf(@This(), "m_highlightServerFadeBases") == 0x220);
        try std.testing.expect(@offsetOf(@This(), "m_highlightServerFadeStartTimes") == 0x228);
        try std.testing.expect(@offsetOf(@This(), "m_highlightServerFadeEndTimes") == 0x230);
        try std.testing.expect(@offsetOf(@This(), "m_highlightServerContextID") == 0x238);
        try std.testing.expect(@offsetOf(@This(), "m_highlightTeamBits") == 0x23c);
        try std.testing.expect(@offsetOf(@This(), "m_nextGrenadeTargetTime") == 0x240);
        try std.testing.expect(@offsetOf(@This(), "m_grenadeTargetDebounce") == 0x244);
        try std.testing.expect(@offsetOf(@This(), "m_nSimulationTick") == 0x248);
        try std.testing.expect(@offsetOf(@This(), "m_fDataObjectTypes") == 0x24c);
        try std.testing.expect(@offsetOf(@This(), "m_nextVelocitySample") == 0x250);
        try std.testing.expect(@offsetOf(@This(), "m_velocitySamples") == 0x254);
        try std.testing.expect(@offsetOf(@This(), "m_iEFlags") == 0x290);
        try std.testing.expect(@offsetOf(@This(), "m_fFlags") == 0x298);
        try std.testing.expect(@offsetOf(@This(), "m_iName") == 0x2a0);
        try std.testing.expect(@offsetOf(@This(), "m_scriptNameIndex") == 0x2a8);
        try std.testing.expect(@offsetOf(@This(), "m_instanceNameIndex") == 0x2ac);
        try std.testing.expect(@offsetOf(@This(), "m_scriptName") == 0x2b0);
        try std.testing.expect(@offsetOf(@This(), "m_instanceName") == 0x2f0);
        try std.testing.expect(@offsetOf(@This(), "m_holdUsePrompt") == 0x330);
        try std.testing.expect(@offsetOf(@This(), "m_pressUsePrompt") == 0x338);
        try std.testing.expect(@offsetOf(@This(), "m_attachmentLerpStartTime") == 0x340);
        try std.testing.expect(@offsetOf(@This(), "m_attachmentLerpEndTime") == 0x344);
        try std.testing.expect(@offsetOf(@This(), "m_attachmentLerpStartOrigin") == 0x348);
        try std.testing.expect(@offsetOf(@This(), "m_attachmentLerpStartAngles") == 0x354);
        try std.testing.expect(@offsetOf(@This(), "m_parentAttachmentType") == 0x360);
        try std.testing.expect(@offsetOf(@This(), "m_parentAttachmentIndex") == 0x364);
        try std.testing.expect(@offsetOf(@This(), "m_parentAttachmentHitbox") == 0x368);
        try std.testing.expect(@offsetOf(@This(), "m_parentAttachmentModel") == 0x36c);
        try std.testing.expect(@offsetOf(@This(), "m_MoveType") == 0x370);
        try std.testing.expect(@offsetOf(@This(), "m_MoveCollide") == 0x371);
        try std.testing.expect(@offsetOf(@This(), "m_RestoreMoveTypeOnDetach") == 0x374);
        try std.testing.expect(@offsetOf(@This(), "m_hMoveParent") == 0x378);
        try std.testing.expect(@offsetOf(@This(), "m_hMoveChild") == 0x37c);
        try std.testing.expect(@offsetOf(@This(), "m_hMovePeer") == 0x380);
        try std.testing.expect(@offsetOf(@This(), "m_bIsActiveChild") == 0x384);
        try std.testing.expect(@offsetOf(@This(), "m_bPrevAbsOriginValid") == 0x385);
        try std.testing.expect(@offsetOf(@This(), "m_Collision") == 0x388);
        try std.testing.expect(@offsetOf(@This(), "m_hOwnerEntity") == 0x3f8);
        try std.testing.expect(@offsetOf(@This(), "m_CollisionGroup") == 0x3fc);
        try std.testing.expect(@offsetOf(@This(), "m_contents") == 0x400);
        try std.testing.expect(@offsetOf(@This(), "m_baseSolidType") == 0x404);
        try std.testing.expect(@offsetOf(@This(), "m_pPhysicsObject") == 0x408);
        try std.testing.expect(@offsetOf(@This(), "m_flNavIgnoreUntilTime") == 0x410);
        try std.testing.expect(@offsetOf(@This(), "m_hGroundEntity") == 0x414);
        try std.testing.expect(@offsetOf(@This(), "m_flGroundChangeTime") == 0x418);
        try std.testing.expect(@offsetOf(@This(), "m_vecBaseVelocity") == 0x41c);
        try std.testing.expect(@offsetOf(@This(), "m_vecAbsVelocity") == 0x428);
        try std.testing.expect(@offsetOf(@This(), "m_vecAngVelocity") == 0x434);
        try std.testing.expect(@offsetOf(@This(), "m_rgflCoordinateFrame") == 0x440);
        try std.testing.expect(@offsetOf(@This(), "m_flFriction") == 0x470);
        try std.testing.expect(@offsetOf(@This(), "m_flLocalTime") == 0x474);
        try std.testing.expect(@offsetOf(@This(), "m_flVPhysicsUpdateLocalTime") == 0x478);
        try std.testing.expect(@offsetOf(@This(), "m_flMoveDoneTime") == 0x47c);
        try std.testing.expect(@offsetOf(@This(), "m_nPushEnumCount") == 0x480);
        try std.testing.expect(@offsetOf(@This(), "m_vecPrevAbsOrigin") == 0x484);
        try std.testing.expect(@offsetOf(@This(), "m_vecAbsOrigin") == 0x490);
        try std.testing.expect(@offsetOf(@This(), "m_angAbsRotation") == 0x49c);
        try std.testing.expect(@offsetOf(@This(), "m_vecVelocity") == 0x4a8);
        try std.testing.expect(@offsetOf(@This(), "m_pBlocker") == 0x4b4);
        try std.testing.expect(@offsetOf(@This(), "m_iGlobalname") == 0x4b8);
        try std.testing.expect(@offsetOf(@This(), "m_iParent") == 0x4c0);
        try std.testing.expect(@offsetOf(@This(), "m_iHammerID") == 0x4c8);
        try std.testing.expect(@offsetOf(@This(), "m_flSpeed") == 0x4cc);
        try std.testing.expect(@offsetOf(@This(), "m_iMaxHealth") == 0x4d0);
        try std.testing.expect(@offsetOf(@This(), "m_iHealth") == 0x4d4);
        try std.testing.expect(@offsetOf(@This(), "m_pfnTouch") == 0x4d8);
        try std.testing.expect(@offsetOf(@This(), "m_pfnUse") == 0x4e0);
        try std.testing.expect(@offsetOf(@This(), "m_pfnBlocked") == 0x4e8);
        try std.testing.expect(@offsetOf(@This(), "m_bClientSideRagdoll") == 0x4f0);
        try std.testing.expect(@offsetOf(@This(), "m_lifeState") == 0x4f1);
        try std.testing.expect(@offsetOf(@This(), "m_forceVisibleInPhaseShift") == 0x4f2);
        try std.testing.expect(@offsetOf(@This(), "m_baseTakeDamage") == 0x4f3);
        try std.testing.expect(@offsetOf(@This(), "m_invulnerableToDamageCount") == 0x4f4);
        try std.testing.expect(@offsetOf(@This(), "m_passDamageToParent") == 0x4f8);
        try std.testing.expect(@offsetOf(@This(), "m_deathVelocity") == 0x4fc);
        try std.testing.expect(@offsetOf(@This(), "m_lastTitanFootstepDamageTime") == 0x508);
        try std.testing.expect(@offsetOf(@This(), "m_flMaxspeed") == 0x50c);
        try std.testing.expect(@offsetOf(@This(), "m_visibilityFlags") == 0x510);
        try std.testing.expect(@offsetOf(@This(), "m_scriptVisible") == 0x514);
        try std.testing.expect(@offsetOf(@This(), "m_OnUser1") == 0x518);
        try std.testing.expect(@offsetOf(@This(), "m_OnDeath") == 0x540);
        try std.testing.expect(@offsetOf(@This(), "m_OnDestroy") == 0x568);
        try std.testing.expect(@offsetOf(@This(), "m_cellwidth") == 0x590);
        try std.testing.expect(@offsetOf(@This(), "m_cellbits") == 0x594);
        try std.testing.expect(@offsetOf(@This(), "m_cellX") == 0x598);
        try std.testing.expect(@offsetOf(@This(), "m_cellY") == 0x59c);
        try std.testing.expect(@offsetOf(@This(), "m_cellZ") == 0x5a0);
        try std.testing.expect(@offsetOf(@This(), "m_localOrigin") == 0x5a4);
        try std.testing.expect(@offsetOf(@This(), "m_localAngles") == 0x5b0);
        try std.testing.expect(@offsetOf(@This(), "m_vecViewOffset") == 0x5bc);
        try std.testing.expect(@offsetOf(@This(), "m_ListByClass") == 0x5c8);
        try std.testing.expect(@offsetOf(@This(), "m_pPrevByClass") == 0x5d0);
        try std.testing.expect(@offsetOf(@This(), "m_pNextByClass") == 0x5d8);
        try std.testing.expect(@offsetOf(@This(), "m_iInitialTeamNum") == 0x5e0);
        try std.testing.expect(@offsetOf(@This(), "m_iTeamNum") == 0x5e4);
        try std.testing.expect(@offsetOf(@This(), "m_passThroughFlags") == 0x5e8);
        try std.testing.expect(@offsetOf(@This(), "m_passThroughThickness") == 0x5ec);
        try std.testing.expect(@offsetOf(@This(), "m_passThroughDirection") == 0x5f0);
        try std.testing.expect(@offsetOf(@This(), "m_spawnflags") == 0x5f4);
        try std.testing.expect(@offsetOf(@This(), "m_AIAddOn") == 0x5f8);
        try std.testing.expect(@offsetOf(@This(), "m_flGravity") == 0x600);
        try std.testing.expect(@offsetOf(@This(), "m_entityFadeDist") == 0x604);
        try std.testing.expect(@offsetOf(@This(), "m_dissolveEffectEntityHandle") == 0x608);
        try std.testing.expect(@offsetOf(@This(), "m_fadeDist") == 0x60c);
        try std.testing.expect(@offsetOf(@This(), "m_iSignifierName") == 0x610);
        try std.testing.expect(@offsetOf(@This(), "m_collectedInvalidateFlags") == 0x618);
        try std.testing.expect(@offsetOf(@This(), "m_collectingInvalidateFlags") == 0x61c);
        try std.testing.expect(@offsetOf(@This(), "m_lagCompensationCounter") == 0x620);
        try std.testing.expect(@offsetOf(@This(), "m_bLagCompensate") == 0x624);
        try std.testing.expect(@offsetOf(@This(), "m_bNetworkQuantizeOriginAndAngles") == 0x625);
        try std.testing.expect(@offsetOf(@This(), "m_bForcePurgeFixedupStrings") == 0x626);
        try std.testing.expect(@offsetOf(@This(), "m_pEvent") == 0x628);
        try std.testing.expect(@offsetOf(@This(), "m_debugOverlays") == 0x630);
        try std.testing.expect(@offsetOf(@This(), "m_pTimedOverlay") == 0x638);
        try std.testing.expect(@offsetOf(@This(), "m_ScriptScope") == 0x640);
        try std.testing.expect(@offsetOf(@This(), "m_hScriptInstance") == 0x660);
        try std.testing.expect(@offsetOf(@This(), "m_iszScriptId") == 0x668);
        try std.testing.expect(@offsetOf(@This(), "m_bossPlayer") == 0x670);
        try std.testing.expect(@offsetOf(@This(), "m_usableType") == 0x674);
        try std.testing.expect(@offsetOf(@This(), "m_usablePriority") == 0x678);
        try std.testing.expect(@offsetOf(@This(), "m_usableRadius") == 0x67c);
        try std.testing.expect(@offsetOf(@This(), "m_usableFOV") == 0x680);
        try std.testing.expect(@offsetOf(@This(), "m_usePromptSize") == 0x684);
        try std.testing.expect(@offsetOf(@This(), "m_hasDispatchedSpawn") == 0x688);
        try std.testing.expect(@offsetOf(@This(), "m_bDoDestroyCallback") == 0x689);
        try std.testing.expect(@offsetOf(@This(), "m_bDoPreSpawnCallback") == 0x68a);
        try std.testing.expect(@offsetOf(@This(), "m_bDoOnSpawnedCallback") == 0x68b);
        try std.testing.expect(@offsetOf(@This(), "m_spottedBeginTimes") == 0x68c);
        try std.testing.expect(@offsetOf(@This(), "m_spottedLatestTimes") == 0x708);
        try std.testing.expect(@offsetOf(@This(), "m_spottedByTeams") == 0x784);
        try std.testing.expect(@offsetOf(@This(), "m_minimapData") == 0x788);
        try std.testing.expect(@offsetOf(@This(), "m_shieldHealth") == 0x7b0);
        try std.testing.expect(@offsetOf(@This(), "m_shieldHealthMax") == 0x7b4);
        try std.testing.expect(@offsetOf(@This(), "m_areEntityLinksNetworked") == 0x7b8);
        try std.testing.expect(@offsetOf(@This(), "m_entitiesLinkedFromMeCount") == 0x7bc);
        try std.testing.expect(@offsetOf(@This(), "m_entitiesLinkedToMeCount") == 0x7c0);
        try std.testing.expect(@offsetOf(@This(), "m_entitiesLinkedFromMe") == 0x7c4);
        try std.testing.expect(@offsetOf(@This(), "m_entitiesLinkedToMe") == 0x8c4);
        try std.testing.expect(@offsetOf(@This(), "m_pusherWithChildrenRadius") == 0x9c4);
        try std.testing.expect(@offsetOf(@This(), "m_childPusherMoveHandlerCount") == 0x9c8);
        try std.testing.expect(@offsetOf(@This(), "m_statusEffectPlugin") == 0x9d0);
        try std.testing.expect(@offsetOf(@This(), "m_physDummyMotionEnabled") == 0x9d9);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
