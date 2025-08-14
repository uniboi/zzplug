pub const CAI_BaseNPC = extern struct {
    vtable: *anyopaque,
    CBaseCombatCharacter: abi.cpp.Inherit(server.CBaseCombatCharacter),

    CAI_DefMovementSink: *anyopaque, // +0x1498 size: 0x8 (0x0 * 0x8) type 0
    IAI_BehaviorBridge: *anyopaque, // +0x14a0 size: 0x8 (0x0 * 0x8) type 0
    m_threadedPostProcessJob: i32, // +0x14a8 size: 0x4 (0x1 * 0x4) type 5
    m_bDoPostProcess: bool, // +0x14ac size: 0x1 (0x1 * 0x1) type 6
    m_bCustomEnemySearch: bool, // +0x14ad size: 0x1 (0x1 * 0x1) type 6
    m_bPlayerSpottable: bool, // +0x14ae size: 0x1 (0x1 * 0x1) type 6
    m_bAddedToSpottableList: bool, // +0x14af size: 0x1 (0x1 * 0x1) type 6
    m_pPrevSchedule: *anyopaque, // +0x14b0 size: 0x8 (0x1 * 0x8) type 31
    m_pSchedule: *anyopaque, // +0x14b8 size: 0x8 (0x1 * 0x8) type 31
    m_defaultScriptScheduleID: i32, // +0x14c0 size: 0x4 (0x1 * 0x4) type 5
    gap_14c4: [4]abi.undefined,
    m_ScheduleState: server.AIScheduleState_t, // +0x14c8 size: 0x30 (0x1 * 0x30) type 10
    m_failSchedule: i32, // +0x14f8 size: 0x4 (0x1 * 0x4) type 5
    m_bDoPostRestoreRefindPath: bool, // +0x14fc size: 0x1 (0x1 * 0x1) type 6
    m_bDoScheduleChangeSignal: bool, // +0x14fd size: 0x1 (0x1 * 0x1) type 6
    m_spawned: bool, // +0x14fe size: 0x1 (0x1 * 0x1) type 6
    m_bUsingStandardThinkTime: bool, // +0x14ff size: 0x1 (0x1 * 0x1) type 6
    m_flLastRealThinkTime: valve.time, // +0x1500 size: 0x4 (0x1 * 0x4) type 16
    m_flLastThinkDuration: valve.time, // +0x1504 size: 0x4 (0x1 * 0x4) type 16
    m_iFrameBlocked: i32, // +0x1508 size: 0x4 (0x1 * 0x4) type 5
    gap_150c: [4]abi.undefined,
    m_pScheduleEvent: *anyopaque, // +0x1510 size: 0x8 (0x1 * 0x8) type 31
    m_dangerousClusterConditionAllowedAtTime: f32, // +0x1518 size: 0x4 (0x1 * 0x4) type 1
    m_poseAim_Pitch: i32, // +0x151c size: 0x4 (0x1 * 0x4) type 5
    m_poseAim_Yaw: i32, // +0x1520 size: 0x4 (0x1 * 0x4) type 5
    m_poseMove_Yaw: i32, // +0x1524 size: 0x4 (0x1 * 0x4) type 5
    m_poseMove_Lean: i32, // +0x1528 size: 0x4 (0x1 * 0x4) type 5
    m_offsetOfCurrentAimFromDesiredAim_Cos: f32, // +0x152c size: 0x4 (0x1 * 0x4) type 1
    m_haveDesiredAimDir: bool, // +0x1530 size: 0x1 (0x1 * 0x1) type 6
    m_sequenceHasAimEvent: bool, // +0x1531 size: 0x1 (0x1 * 0x1) type 6
    m_sequenceHasAimPoseParams: bool, // +0x1532 size: 0x1 (0x1 * 0x1) type 6
    gap_1533: [1]abi.undefined,
    m_lastAimSequence: i32, // +0x1534 size: 0x4 (0x1 * 0x4) type 5
    m_missPlayerLastWindow: i32, // +0x1538 size: 0x4 (0x1 * 0x4) type 5
    m_missPlayerLastOffset: m.Vector3, // +0x153c size: 0xc (0x1 * 0xc) type 3
    m_pPrimaryBehavior: *anyopaque, // +0x1548 size: 0x8 (0x1 * 0x8) type 31
    m_Behaviors: [32]abi.undefined, // +0x1550 size: 0x20 (0x1 * 0x20) type 0
    m_Conditions: [12]abi.undefined, // +0x1570 size: 0xc (0x1 * 0xc) type 0
    m_CustomInterruptConditions: [12]abi.undefined, // +0x157c size: 0xc (0x1 * 0xc) type 0
    m_bForceConditionsGather: bool, // +0x1588 size: 0x1 (0x1 * 0x1) type 6
    m_bConditionsGathered: bool, // +0x1589 size: 0x1 (0x1 * 0x1) type 6
    m_bInterruptableByScript: bool, // +0x158a size: 0x1 (0x1 * 0x1) type 6
    gap_158b: [1]abi.undefined,
    m_movingGroundEnt: valve.EHANDLE, // +0x158c size: 0x4 (0x1 * 0x4) type 13
    m_groundRelativePos: m.Vector3, // +0x1590 size: 0xc (0x1 * 0xc) type 3
    m_groundRelativeAngles: m.Vector3, // +0x159c size: 0xc (0x1 * 0xc) type 3
    m_NPCState: i32, // +0x15a8 size: 0x4 (0x1 * 0x4) type 5
    m_NPCPrevState: i32, // +0x15ac size: 0x4 (0x1 * 0x4) type 5
    m_NPCAlertnessState: i32, // +0x15b0 size: 0x4 (0x1 * 0x4) type 5
    m_lastSchedSelectorState: i32, // +0x15b4 size: 0x4 (0x1 * 0x4) type 5
    m_flLastSchedSelectChangeTime: f32, // +0x15b8 size: 0x4 (0x1 * 0x4) type 1
    m_flLastStateChangeTime: f32, // +0x15bc size: 0x4 (0x1 * 0x4) type 1
    m_thinkInterval: f32, // +0x15c0 size: 0x4 (0x1 * 0x4) type 1
    m_IdealNPCState: i32, // +0x15c4 size: 0x4 (0x1 * 0x4) type 5
    m_Efficiency: i32, // +0x15c8 size: 0x4 (0x1 * 0x4) type 5
    m_MoveEfficiency: i32, // +0x15cc size: 0x4 (0x1 * 0x4) type 5
    m_flNextDecisionTime: valve.time, // +0x15d0 size: 0x4 (0x1 * 0x4) type 16
    m_searchPathID: i16, // +0x15d4 size: 0x2 (0x1 * 0x2) type 7
    m_bDefenseActive: bool, // +0x15d6 size: 0x1 (0x1 * 0x1) type 6
    m_bAlwaysAlert: bool, // +0x15d7 size: 0x1 (0x1 * 0x1) type 6
    m_scriptedAnimForceInterrupt: bool, // +0x15d8 size: 0x1 (0x1 * 0x1) type 6
    m_bWakeSquad: bool, // +0x15d9 size: 0x1 (0x1 * 0x1) type 6
    gap_15da: [2]abi.undefined,
    m_flWakeRadius: f32, // +0x15dc size: 0x4 (0x1 * 0x4) type 1
    m_nWakeTick: valve.tick, // +0x15e0 size: 0x4 (0x1 * 0x4) type 17
    m_SleepState: i32, // +0x15e4 size: 0x4 (0x1 * 0x4) type 5
    m_SleepFlags: i32, // +0x15e8 size: 0x4 (0x1 * 0x4) type 5
    m_translatedActivity: [4]abi.undefined, // +0x15ec size: 0x4 (0x1 * 0x4) type 11
    m_IdealActivity: [4]abi.undefined, // +0x15f0 size: 0x4 (0x1 * 0x4) type 11
    m_nIdealSequence: i32, // +0x15f4 size: 0x4 (0x1 * 0x4) type 5
    m_IdealTranslatedActivity: [4]abi.undefined, // +0x15f8 size: 0x4 (0x1 * 0x4) type 11
    m_IdealWeaponActivity: [4]abi.undefined, // +0x15fc size: 0x4 (0x1 * 0x4) type 11
    m_idealSequenceAlreadyResolved: bool, // +0x1600 size: 0x1 (0x1 * 0x1) type 6
    gap_1601: [3]abi.undefined,
    m_seqFinishedInSolid: i32, // +0x1604 size: 0x4 (0x1 * 0x4) type 5
    m_activeActModifiers: [64]abi.undefined, // +0x1608 size: 0x40 (0x1 * 0x40) type 11
    m_scriptIdleSequence: i32, // +0x1648 size: 0x4 (0x1 * 0x4) type 5
    m_scriptAttackSequence: i32, // +0x164c size: 0x4 (0x1 * 0x4) type 5
    m_scriptDeathActivity: i32, // +0x1650 size: 0x4 (0x1 * 0x4) type 5
    m_didSetIndoorActivityOverride: bool, // +0x1654 size: 0x1 (0x1 * 0x1) type 6
    m_isInsideIndoorArea: bool, // +0x1655 size: 0x1 (0x1 * 0x1) type 6
    m_requestSpecialRangeAttack: bool, // +0x1656 size: 0x1 (0x1 * 0x1) type 6
    gap_1657: [1]abi.undefined,
    m_specialRangeAttackCount: i32, // +0x1658 size: 0x4 (0x1 * 0x4) type 5
    gap_165c: [4]abi.undefined,
    m_aiSettings: [*:0]u8, // +0x1660 size: 0x8 (0x1 * 0x8) type 2
    m_aiSettingsIndex: i32, // +0x1668 size: 0x4 (0x1 * 0x4) type 5
    m_subclass: i32, // +0x166c size: 0x4 (0x1 * 0x4) type 5
    m_pSenses: *server.CAI_Senses, // +0x1670 size: 0x8 (0x1 * 0x8) type 10
    m_pLockedBestSound: server.CSound, // +0x1678 size: 0x28 (0x1 * 0x28) type 10
    m_aimDir: m.Vector3, // +0x16a0 size: 0xc (0x1 * 0xc) type 3
    m_aimDirValid: bool, // +0x16ac size: 0x1 (0x1 * 0x1) type 6
    gap_16ad: [3]abi.undefined,
    m_weaponBlockedTimer: f32, // +0x16b0 size: 0x4 (0x1 * 0x4) type 1
    m_weaponBlockedTimeOut: f32, // +0x16b4 size: 0x4 (0x1 * 0x4) type 1
    m_moveDirection: i32, // +0x16b8 size: 0x4 (0x1 * 0x4) type 5
    m_hEnemy: valve.EHANDLE, // +0x16bc size: 0x4 (0x1 * 0x4) type 13
    m_hEnemySecondary: valve.EHANDLE, // +0x16c0 size: 0x4 (0x1 * 0x4) type 13
    m_distToEnemyLKP_AdjustForHeightDiff: f32, // +0x16c4 size: 0x4 (0x1 * 0x4) type 1
    m_distToEnemyLKP: f32, // +0x16c8 size: 0x4 (0x1 * 0x4) type 1
    m_distToEnemyLKPCenterToCenter: f32, // +0x16cc size: 0x4 (0x1 * 0x4) type 1
    m_hTargetEnt: valve.EHANDLE, // +0x16d0 size: 0x4 (0x1 * 0x4) type 13
    gap_16d4: [4]abi.undefined,
    m_updateSquadEnemyQueue: [32]abi.undefined, // +0x16d8 size: 0x20 (0x1 * 0x20) type 0
    m_notifyEnemyToSquadTimer: server.CStopwatch, // +0x16f8 size: 0xc (0x1 * 0xc) type 10
    m_notifyEnemyToTeamTime: valve.time, // +0x1704 size: 0x4 (0x1 * 0x4) type 16
    m_GiveUpOnDeadEnemyTimer: server.CRandStopwatch, // +0x1708 size: 0x10 (0x1 * 0x10) type 10
    m_chooseEnemySanityTimer: server.CSimpleSimTimer, // +0x1718 size: 0x4 (0x1 * 0x4) type 10
    m_EnemiesSerialNumber: i32, // +0x171c size: 0x4 (0x1 * 0x4) type 5
    m_flAcceptableTimeSeenEnemy: valve.time, // +0x1720 size: 0x4 (0x1 * 0x4) type 16
    m_UpdateEnemyPosTimer: server.CSimpleSimTimer, // +0x1724 size: 0x4 (0x1 * 0x4) type 10
    m_ForceUpdateEnemyPos: bool, // +0x1728 size: 0x1 (0x1 * 0x1) type 6
    gap_1729: [3]abi.undefined,
    m_afCapability: i32, // +0x172c size: 0x4 (0x1 * 0x4) type 5
    m_flags: i32, // +0x1730 size: 0x4 (0x1 * 0x4) type 5
    m_flMoveWaitFinished: valve.time, // +0x1734 size: 0x4 (0x1 * 0x4) type 16
    m_hTempBlockingEnt: valve.EHANDLE, // +0x1738 size: 0x4 (0x1 * 0x4) type 13
    gap_173c: [4]abi.undefined,
    m_UnreachableEnts: [32]abi.undefined, // +0x1740 size: 0x20 (0x1 * 0x20) type 11
    m_pNavigator: *server.CAI_Navigator, // +0x1760 size: 0x8 (0x1 * 0x8) type 10
    m_pLocalNavigator: *server.CAI_LocalNavigator, // +0x1768 size: 0x8 (0x1 * 0x8) type 10
    m_pPathfinder: *server.CAI_Pathfinder, // +0x1770 size: 0x8 (0x1 * 0x8) type 10
    m_pMoveProbe: *server.CAI_MoveProbe, // +0x1778 size: 0x8 (0x1 * 0x8) type 10
    m_pMotor: *server.CAI_Motor, // +0x1780 size: 0x8 (0x1 * 0x8) type 10
    m_hGoalEnt: valve.EHANDLE, // +0x1788 size: 0x4 (0x1 * 0x4) type 13
    m_flTimeLastMovement: valve.time, // +0x178c size: 0x4 (0x1 * 0x4) type 16
    m_longJumpCheckTime: valve.time, // +0x1790 size: 0x4 (0x1 * 0x4) type 16
    m_prevGroundNormal: m.Vector3, // +0x1794 size: 0xc (0x1 * 0xc) type 3
    m_CheckOnGroundTimer: server.CSimpleSimTimer, // +0x17a0 size: 0x4 (0x1 * 0x4) type 10
    m_vDefaultEyeOffset: m.Vector3, // +0x17a4 size: 0xc (0x1 * 0xc) type 3
    m_flNextEyeLookTime: valve.time, // +0x17b0 size: 0x4 (0x1 * 0x4) type 16
    m_flEyeIntegRate: f32, // +0x17b4 size: 0x4 (0x1 * 0x4) type 1
    m_vEyeLookTarget: m.Vector3, // +0x17b8 size: 0xc (0x1 * 0xc) type 15
    m_vCurEyeTarget: m.Vector3, // +0x17c4 size: 0xc (0x1 * 0xc) type 15
    m_flHeadYaw: f32, // +0x17d0 size: 0x4 (0x1 * 0x4) type 1
    m_flHeadPitch: f32, // +0x17d4 size: 0x4 (0x1 * 0x4) type 1
    m_animRefAdjustThinkCount: i32, // +0x17d8 size: 0x4 (0x1 * 0x4) type 5
    m_animRefAdjustPerThink: m.Vector3, // +0x17dc size: 0xc (0x1 * 0xc) type 3
    m_animRefDidAdjust: bool, // +0x17e8 size: 0x1 (0x1 * 0x1) type 6
    m_animParentedOnPlay: bool, // +0x17e9 size: 0x1 (0x1 * 0x1) type 6
    gap_17ea: [2]abi.undefined,
    m_scriptAnimSavedCollisionGroup: i32, // +0x17ec size: 0x4 (0x1 * 0x4) type 5
    m_scriptAnimSavedFlags: i32, // +0x17f0 size: 0x4 (0x1 * 0x4) type 5
    m_scriptAnimStartPolyRef: i32, // +0x17f4 size: 0x4 (0x1 * 0x4) type 5
    m_enemyChangeScriptCallback: [16]abi.undefined, // +0x17f8 size: 0x10 (0x1 * 0x10) type 11
    m_scriptThread: [8]abi.undefined, // +0x1808 size: 0x8 (0x1 * 0x8) type 11
    m_scriptFuncName: [*:0]u8, // +0x1810 size: 0x8 (0x1 * 0x8) type 2
    m_deathScriptFuncName: [*:0]u8, // +0x1818 size: 0x8 (0x1 * 0x8) type 2
    m_pEnemies: *server.CAI_Enemies, // +0x1820 size: 0x8 (0x1 * 0x8) type 10
    m_afMemory: i32, // +0x1828 size: 0x4 (0x1 * 0x4) type 5
    m_hEnemyOccluder: valve.EHANDLE, // +0x182c size: 0x4 (0x1 * 0x4) type 13
    m_hScriptEnemy: valve.EHANDLE, // +0x1830 size: 0x4 (0x1 * 0x4) type 13
    m_hNearestVisibleFriendlyPlayer: valve.EHANDLE, // +0x1834 size: 0x4 (0x1 * 0x4) type 13
    m_lastDamageFlags: i32, // +0x1838 size: 0x4 (0x1 * 0x4) type 5
    m_lastDamageType: i32, // +0x183c size: 0x4 (0x1 * 0x4) type 5
    m_strafeDodgeDamage: f32, // +0x1840 size: 0x4 (0x1 * 0x4) type 1
    m_lastLightPainTime: valve.time, // +0x1844 size: 0x4 (0x1 * 0x4) type 16
    m_lastHeavyPainTime: valve.time, // +0x1848 size: 0x4 (0x1 * 0x4) type 16
    m_flSumDamage: f32, // +0x184c size: 0x4 (0x1 * 0x4) type 1
    m_flLastDamageTime: valve.time, // +0x1850 size: 0x4 (0x1 * 0x4) type 16
    m_flLastSawPlayerTime: valve.time, // +0x1854 size: 0x4 (0x1 * 0x4) type 16
    m_flLastAttackTime: valve.time, // +0x1858 size: 0x4 (0x1 * 0x4) type 16
    m_flAlertEventTime: valve.time, // +0x185c size: 0x4 (0x1 * 0x4) type 16
    m_flNextRangeAttackSecondary: valve.time, // +0x1860 size: 0x4 (0x1 * 0x4) type 16
    m_flNextMeleeAllowTime: valve.time, // +0x1864 size: 0x4 (0x1 * 0x4) type 16
    m_flNextMeleeAltAllowTime: valve.time, // +0x1868 size: 0x4 (0x1 * 0x4) type 16
    m_meleeComboCount: i32, // +0x186c size: 0x4 (0x1 * 0x4) type 5
    m_bIgnoreUnseenEnemies: bool, // +0x1870 size: 0x1 (0x1 * 0x1) type 6
    gap_1871: [7]abi.undefined,
    m_ShotRegulator: server.CAI_ShotRegulator, // +0x1878 size: 0x30 (0x1 * 0x30) type 10
    m_syncedMelee: server.AISyncedMeleeState, // +0x18a8 size: 0x60 (0x1 * 0x60) type 10
    m_pSquad: *anyopaque, // +0x1908 size: 0x8 (0x1 * 0x8) type 31
    m_SquadName: [*:0]u8, // +0x1910 size: 0x8 (0x1 * 0x8) type 2
    m_iMySquadSlot: i32, // +0x1918 size: 0x4 (0x1 * 0x4) type 5
    m_squadAssignment: i32, // +0x191c size: 0x4 (0x1 * 0x4) type 5
    m_squadAssignedRange: f32, // +0x1920 size: 0x4 (0x1 * 0x4) type 1
    m_squadAssignedNodeStartUseTime: f32, // +0x1924 size: 0x4 (0x1 * 0x4) type 1
    m_squadAssignedNode: i32, // +0x1928 size: 0x4 (0x1 * 0x4) type 5
    m_lockedNode: i32, // +0x192c size: 0x4 (0x1 * 0x4) type 5
    m_currentWeaponBarrel: i32, // +0x1930 size: 0x4 (0x1 * 0x4) type 5
    m_bAutoSquad: bool, // +0x1934 size: 0x1 (0x1 * 0x1) type 6
    m_bDidDeathCleanUp: bool, // +0x1935 size: 0x1 (0x1 * 0x1) type 6
    m_bOptionalSprint: bool, // +0x1936 size: 0x1 (0x1 * 0x1) type 6
    m_bClearNodeOnScheduleFail: bool, // +0x1937 size: 0x1 (0x1 * 0x1) type 6
    m_bRunningFromEnemy: bool, // +0x1938 size: 0x1 (0x1 * 0x1) type 6
    m_runFromEnemyRetry: u8, // +0x1939 size: 0x1 (0x1 * 0x1) type 8
    m_disableArrivalOnce: u8, // +0x193a size: 0x1 (0x1 * 0x1) type 8
    gap_193b: [5]abi.undefined,
    m_pTacticalServices: *server.CAI_TacticalServices, // +0x1940 size: 0x8 (0x1 * 0x8) type 10
    m_flWaitFinished: valve.time, // +0x1948 size: 0x4 (0x1 * 0x4) type 16
    m_flNextFlinchTime: valve.time, // +0x194c size: 0x4 (0x1 * 0x4) type 16
    m_flNextCheckFaceEnemyTime: valve.time, // +0x1950 size: 0x4 (0x1 * 0x4) type 16
    gap_1954: [4]abi.undefined,
    m_moveAndShootOverlay: server.CAI_MoveAndShootOverlay, // +0x1958 size: 0x20 (0x1 * 0x20) type 10
    m_forceShootOverlay: bool, // +0x1978 size: 0x1 (0x1 * 0x1) type 6
    m_weaponTemporarilySwitchedByAnim: bool, // +0x1979 size: 0x1 (0x1 * 0x1) type 6
    m_strafeDir: bool, // +0x197a size: 0x1 (0x1 * 0x1) type 6
    gap_197b: [1]abi.undefined,
    m_strafeCount: i32, // +0x197c size: 0x4 (0x1 * 0x4) type 5
    m_flSavePositionTime: f32, // +0x1980 size: 0x4 (0x1 * 0x4) type 1
    m_vSavePosition: m.Vector3, // +0x1984 size: 0xc (0x1 * 0xc) type 15
    m_vInterruptSavePosition: m.Vector3, // +0x1990 size: 0xc (0x1 * 0xc) type 15
    m_vLastAutoMoveDelta: m.Vector3, // +0x199c size: 0xc (0x1 * 0xc) type 3
    m_autoMoveAdjust_originalSpace: m.Vector3, // +0x19a8 size: 0xc (0x1 * 0xc) type 3
    m_vLastPatrolDir: m.Vector3, // +0x19b4 size: 0xc (0x1 * 0xc) type 3
    m_pHintNode: *server.CBaseEntity, // +0x19c0 size: 0x8 (0x1 * 0x8) type 12
    m_pSafeHintNode: valve.EHANDLE, // +0x19c8 size: 0x4 (0x1 * 0x4) type 13
    m_safeHintType: i32, // +0x19cc size: 0x4 (0x1 * 0x4) type 5
    m_flDistTooFar: f32, // +0x19d0 size: 0x4 (0x1 * 0x4) type 1
    m_flDistTooClose: f32, // +0x19d4 size: 0x4 (0x1 * 0x4) type 1
    m_minEngagementDistVsWeak: f32, // +0x19d8 size: 0x4 (0x1 * 0x4) type 1
    m_maxEngagementDistVsWeak: f32, // +0x19dc size: 0x4 (0x1 * 0x4) type 1
    m_minEngagementDistVsStrong: f32, // +0x19e0 size: 0x4 (0x1 * 0x4) type 1
    m_maxEngagementDistVsStrong: f32, // +0x19e4 size: 0x4 (0x1 * 0x4) type 1
    m_dangerousAreaRadius: f32, // +0x19e8 size: 0x4 (0x1 * 0x4) type 1
    m_minEnemyDist: f32, // +0x19ec size: 0x4 (0x1 * 0x4) type 1
    m_disengageEnemyDist: f32, // +0x19f0 size: 0x4 (0x1 * 0x4) type 1
    gap_19f4: [4]abi.undefined,
    m_spawnEquipment_0_: [*:0]u8, // +0x19f8 size: 0x8 (0x1 * 0x8) type 2
    m_spawnEquipment_1_: [*:0]u8, // +0x1a00 size: 0x8 (0x1 * 0x8) type 2
    m_grenadeWeapon: *server.CBaseEntity, // +0x1a08 size: 0x8 (0x1 * 0x8) type 12
    m_grenadeWeaponName: [*:0]u8, // +0x1a10 size: 0x8 (0x1 * 0x8) type 2
    m_lastValidGrenadeThrowOrigin: m.Vector3, // +0x1a18 size: 0xc (0x1 * 0xc) type 3
    m_throwGrenadeAllowedTime: valve.time, // +0x1a24 size: 0x4 (0x1 * 0x4) type 16
    m_rangeAttackTwitchAllowedTime: valve.time, // +0x1a28 size: 0x4 (0x1 * 0x4) type 16
    m_smartAmmoLockTime: valve.time, // +0x1a2c size: 0x4 (0x1 * 0x4) type 16
    m_smartAmmoLocks: i32, // +0x1a30 size: 0x4 (0x1 * 0x4) type 5
    m_smartAmmoWeapon: valve.EHANDLE, // +0x1a34 size: 0x4 (0x1 * 0x4) type 13
    m_meleeWeapon: valve.EHANDLE, // +0x1a38 size: 0x4 (0x1 * 0x4) type 13
    m_reactFriendlyChance: i32, // +0x1a3c size: 0x4 (0x1 * 0x4) type 5
    m_reactBulletChance: i32, // +0x1a40 size: 0x4 (0x1 * 0x4) type 5
    m_reactChance: i32, // +0x1a44 size: 0x4 (0x1 * 0x4) type 5
    m_lastReactTime: f32, // +0x1a48 size: 0x4 (0x1 * 0x4) type 1
    m_dangerousAreaReactionTime: f32, // +0x1a4c size: 0x4 (0x1 * 0x4) type 1
    m_MovementCollisionGroup: i32, // +0x1a50 size: 0x4 (0x1 * 0x4) type 5
    m_moveDeflectionSearchRadius: f32, // +0x1a54 size: 0x4 (0x1 * 0x4) type 1
    m_moveDeflectionDebounceExpireTime: valve.time, // +0x1a58 size: 0x4 (0x1 * 0x4) type 16
    gap_1a5c: [4]abi.undefined,
    shootingCover: server.ShootingCoverState, // +0x1a60 size: 0x98 (0x1 * 0x98) type 10
    m_OnDamaged: [40]abi.undefined, // +0x1af8 size: 0x28 (0x1 * 0x28) type 11
    m_OnFoundEnemy: [40]abi.undefined, // +0x1b20 size: 0x28 (0x1 * 0x28) type 11
    m_OnSeeEnemy: [40]abi.undefined, // +0x1b48 size: 0x28 (0x1 * 0x28) type 11
    m_OnCantSeeEnemy: [40]abi.undefined, // +0x1b70 size: 0x28 (0x1 * 0x28) type 11
    m_OnNoticePotentialEnemy: [40]abi.undefined, // +0x1b98 size: 0x28 (0x1 * 0x28) type 11
    m_OnGainEnemyLOS: [40]abi.undefined, // +0x1bc0 size: 0x28 (0x1 * 0x28) type 11
    m_OnLostEnemyLOS: [40]abi.undefined, // +0x1be8 size: 0x28 (0x1 * 0x28) type 11
    m_OnLostEnemy: [40]abi.undefined, // +0x1c10 size: 0x28 (0x1 * 0x28) type 11
    m_OnFoundPlayer: [40]abi.undefined, // +0x1c38 size: 0x28 (0x1 * 0x28) type 11
    m_OnLostPlayerLOS: [40]abi.undefined, // +0x1c60 size: 0x28 (0x1 * 0x28) type 11
    m_OnLostPlayer: [40]abi.undefined, // +0x1c88 size: 0x28 (0x1 * 0x28) type 11
    m_OnHearPlayer: [40]abi.undefined, // +0x1cb0 size: 0x28 (0x1 * 0x28) type 11
    m_OnHearCombat: [40]abi.undefined, // +0x1cd8 size: 0x28 (0x1 * 0x28) type 11
    m_OnSleep: [40]abi.undefined, // +0x1d00 size: 0x28 (0x1 * 0x28) type 11
    m_OnWake: [40]abi.undefined, // +0x1d28 size: 0x28 (0x1 * 0x28) type 11
    m_OnStateChange: [40]abi.undefined, // +0x1d50 size: 0x28 (0x1 * 0x28) type 11
    m_OnFailedToPath: [40]abi.undefined, // +0x1d78 size: 0x28 (0x1 * 0x28) type 11
    m_OnEnterGoalRadius: [40]abi.undefined, // +0x1da0 size: 0x28 (0x1 * 0x28) type 11
    m_OnFinishedAssault: [40]abi.undefined, // +0x1dc8 size: 0x28 (0x1 * 0x28) type 11
    m_OnSawCorpse: [40]abi.undefined, // +0x1df0 size: 0x28 (0x1 * 0x28) type 11
    m_OnGiveWeapon: [40]abi.undefined, // +0x1e18 size: 0x28 (0x1 * 0x28) type 11
    m_OnTakeWeapon: [40]abi.undefined, // +0x1e40 size: 0x28 (0x1 * 0x28) type 11
    m_OnSpecialAttack: [40]abi.undefined, // +0x1e68 size: 0x28 (0x1 * 0x28) type 11
    m_OnScheduleChange: [40]abi.undefined, // +0x1e90 size: 0x28 (0x1 * 0x28) type 11
    m_OnSyncedMeleeBegin: [40]abi.undefined, // +0x1eb8 size: 0x28 (0x1 * 0x28) type 11
    m_queuedOutput: [32]abi.undefined, // +0x1ee0 size: 0x20 (0x1 * 0x20) type 0
    m_pInitializedPhysicsObject: [8]abi.undefined, // +0x1f00 size: 0x8 (0x1 * 0x8) type 11
    m_fIsUsingSmallHull: bool, // +0x1f08 size: 0x1 (0x1 * 0x1) type 6
    m_bHadMovingGround: bool, // +0x1f09 size: 0x1 (0x1 * 0x1) type 6
    m_bCheckContacts: bool, // +0x1f0a size: 0x1 (0x1 * 0x1) type 6
    m_bAllowShoot: bool, // +0x1f0b size: 0x1 (0x1 * 0x1) type 6
    m_bActiveForSmartAmmo: bool, // +0x1f0c size: 0x1 (0x1 * 0x1) type 6
    m_bEnemyValidSmartAmmoTarget: bool, // +0x1f0d size: 0x1 (0x1 * 0x1) type 6
    m_bAllowBlockBullets: bool, // +0x1f0e size: 0x1 (0x1 * 0x1) type 6
    m_blockingBullets: bool, // +0x1f0f size: 0x1 (0x1 * 0x1) type 6
    m_reactingSurprisedReason: i32, // +0x1f10 size: 0x4 (0x1 * 0x4) type 5
    m_desireCrouch: bool, // +0x1f14 size: 0x1 (0x1 * 0x1) type 6
    m_isCrouching: bool, // +0x1f15 size: 0x1 (0x1 * 0x1) type 6
    m_bAutoMovementBlocked: bool, // +0x1f16 size: 0x1 (0x1 * 0x1) type 6
    m_bAllowPushDuringAnim: bool, // +0x1f17 size: 0x1 (0x1 * 0x1) type 6
    m_desireStandOverrideExpireTime: valve.time, // +0x1f18 size: 0x4 (0x1 * 0x4) type 16
    gap_1f1c: [4]abi.undefined,
    m_schedSelectorHistory: [40]abi.undefined, // +0x1f20 size: 0x28 (0x1 * 0x28) type 0
    m_behaviorSelectorID: i32, // +0x1f48 size: 0x4 (0x1 * 0x4) type 5
    gap_1f4c: [4]abi.undefined,
    m_failText: *anyopaque, // +0x1f50 size: 0x8 (0x1 * 0x8) type 31
    m_interruptText: *anyopaque, // +0x1f58 size: 0x8 (0x1 * 0x8) type 31
    m_failedSchedule: *anyopaque, // +0x1f60 size: 0x8 (0x1 * 0x8) type 31
    m_interuptSchedule: *anyopaque, // +0x1f68 size: 0x8 (0x1 * 0x8) type 31
    m_nDebugCurIndex: i32, // +0x1f70 size: 0x4 (0x1 * 0x4) type 5
    m_flAccuracyMultiplier: f32, // +0x1f74 size: 0x4 (0x1 * 0x4) type 1
    m_flAccuracyMultiplierForEnemy: f32, // +0x1f78 size: 0x4 (0x1 * 0x4) type 1
    m_LastMissFastPlayerTime: f32, // +0x1f7c size: 0x4 (0x1 * 0x4) type 1
    m_LastSuppressionTime: f32, // +0x1f80 size: 0x4 (0x1 * 0x4) type 1
    m_LastShootAccuracy: f32, // +0x1f84 size: 0x4 (0x1 * 0x4) type 1
    m_TotalShots: i32, // +0x1f88 size: 0x4 (0x1 * 0x4) type 5
    m_TotalHits: i32, // +0x1f8c size: 0x4 (0x1 * 0x4) type 5
    m_flSoundWaitTime: valve.time, // +0x1f90 size: 0x4 (0x1 * 0x4) type 16
    m_nSoundPriority: i32, // +0x1f94 size: 0x4 (0x1 * 0x4) type 5
    m_lastTauntTime: valve.time, // +0x1f98 size: 0x4 (0x1 * 0x4) type 16
    m_freezeTime: valve.time, // +0x1f9c size: 0x4 (0x1 * 0x4) type 16
    m_freezeCycle: f32, // +0x1fa0 size: 0x4 (0x1 * 0x4) type 1
    m_prevShieldHealth: i32, // +0x1fa4 size: 0x4 (0x1 * 0x4) type 5
    m_healthEvalMultiplier: i32, // +0x1fa8 size: 0x4 (0x1 * 0x4) type 5
    m_aiMovementSpeed: f32, // +0x1fac size: 0x4 (0x1 * 0x4) type 1
    m_aiSprinting: bool, // +0x1fb0 size: 0x1 (0x1 * 0x1) type 6
    gap_1fb1: [3]abi.undefined,
    m_aiNetworkFlags: i32, // +0x1fb4 size: 0x4 (0x1 * 0x4) type 5
    m_isHologram: bool, // +0x1fb8 size: 0x1 (0x1 * 0x1) type 6
    gap_1fb9: [3]abi.undefined,
    m_fireteamSlotIndex: i32, // +0x1fbc size: 0x4 (0x1 * 0x4) type 5
    m_statusEffectsTimedNPCNV: [3]server.StatusEffectTimedData, // +0x1fc0 size: 0x18 (0x3 * 0x8) type 10
    m_statusEffectsEndlessNPCNV: [4]server.StatusEffectEndlessData, // +0x2008 size: 0x10 (0x4 * 0x4) type 10
    m_title: [32]u8, // +0x2048 size: 0x20 (0x20 * 0x1) type 8
    m_tethered: bool, // +0x2068 size: 0x1 (0x1 * 0x1) type 6
    gap_2069: [3]abi.undefined,
    m_nAITraceMask: i32, // +0x206c size: 0x4 (0x1 * 0x4) type 5
    m_flBoostSpeed: f32, // +0x2070 size: 0x4 (0x1 * 0x4) type 1
    m_blockPeriodStartTime: valve.time, // +0x2074 size: 0x4 (0x1 * 0x4) type 16
    m_blockBulletCount: i32, // +0x2078 size: 0x4 (0x1 * 0x4) type 5
    m_dodgePeriodStartTime: valve.time, // +0x207c size: 0x4 (0x1 * 0x4) type 16
    m_lastDodgeTime: valve.time, // +0x2080 size: 0x4 (0x1 * 0x4) type 16
    m_dodgeCount: i32, // +0x2084 size: 0x4 (0x1 * 0x4) type 5
    m_dodgeMissile: valve.EHANDLE, // +0x2088 size: 0x4 (0x1 * 0x4) type 13
    m_dodgeFromPos: m.Vector3, // +0x208c size: 0xc (0x1 * 0xc) type 3
    m_dangerousArea: *anyopaque, // +0x2098 size: 0x8 (0x1 * 0x8) type 0
    m_dangerousAreaDebounceExpireTime: valve.time, // +0x20a0 size: 0x4 (0x1 * 0x4) type 16
    m_grappled: bool, // +0x20a4 size: 0x1 (0x1 * 0x1) type 6
    m_grappleEndFloating: bool, // +0x20a5 size: 0x1 (0x1 * 0x1) type 6
    gap_20a6: [2]abi.undefined,
    m_grappleRestoreMoveType: i32, // +0x20a8 size: 0x4 (0x1 * 0x4) type 5

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x20b0);
        try std.testing.expect(@offsetOf(@This(), "CAI_DefMovementSink") == 0x1498);
        try std.testing.expect(@offsetOf(@This(), "IAI_BehaviorBridge") == 0x14a0);
        try std.testing.expect(@offsetOf(@This(), "m_threadedPostProcessJob") == 0x14a8);
        try std.testing.expect(@offsetOf(@This(), "m_bDoPostProcess") == 0x14ac);
        try std.testing.expect(@offsetOf(@This(), "m_bCustomEnemySearch") == 0x14ad);
        try std.testing.expect(@offsetOf(@This(), "m_bPlayerSpottable") == 0x14ae);
        try std.testing.expect(@offsetOf(@This(), "m_bAddedToSpottableList") == 0x14af);
        try std.testing.expect(@offsetOf(@This(), "m_pPrevSchedule") == 0x14b0);
        try std.testing.expect(@offsetOf(@This(), "m_pSchedule") == 0x14b8);
        try std.testing.expect(@offsetOf(@This(), "m_defaultScriptScheduleID") == 0x14c0);
        try std.testing.expect(@offsetOf(@This(), "m_ScheduleState") == 0x14c8);
        try std.testing.expect(@offsetOf(@This(), "m_failSchedule") == 0x14f8);
        try std.testing.expect(@offsetOf(@This(), "m_bDoPostRestoreRefindPath") == 0x14fc);
        try std.testing.expect(@offsetOf(@This(), "m_bDoScheduleChangeSignal") == 0x14fd);
        try std.testing.expect(@offsetOf(@This(), "m_spawned") == 0x14fe);
        try std.testing.expect(@offsetOf(@This(), "m_bUsingStandardThinkTime") == 0x14ff);
        try std.testing.expect(@offsetOf(@This(), "m_flLastRealThinkTime") == 0x1500);
        try std.testing.expect(@offsetOf(@This(), "m_flLastThinkDuration") == 0x1504);
        try std.testing.expect(@offsetOf(@This(), "m_iFrameBlocked") == 0x1508);
        try std.testing.expect(@offsetOf(@This(), "m_pScheduleEvent") == 0x1510);
        try std.testing.expect(@offsetOf(@This(), "m_dangerousClusterConditionAllowedAtTime") == 0x1518);
        try std.testing.expect(@offsetOf(@This(), "m_poseAim_Pitch") == 0x151c);
        try std.testing.expect(@offsetOf(@This(), "m_poseAim_Yaw") == 0x1520);
        try std.testing.expect(@offsetOf(@This(), "m_poseMove_Yaw") == 0x1524);
        try std.testing.expect(@offsetOf(@This(), "m_poseMove_Lean") == 0x1528);
        try std.testing.expect(@offsetOf(@This(), "m_offsetOfCurrentAimFromDesiredAim_Cos") == 0x152c);
        try std.testing.expect(@offsetOf(@This(), "m_haveDesiredAimDir") == 0x1530);
        try std.testing.expect(@offsetOf(@This(), "m_sequenceHasAimEvent") == 0x1531);
        try std.testing.expect(@offsetOf(@This(), "m_sequenceHasAimPoseParams") == 0x1532);
        try std.testing.expect(@offsetOf(@This(), "m_lastAimSequence") == 0x1534);
        try std.testing.expect(@offsetOf(@This(), "m_missPlayerLastWindow") == 0x1538);
        try std.testing.expect(@offsetOf(@This(), "m_missPlayerLastOffset") == 0x153c);
        try std.testing.expect(@offsetOf(@This(), "m_pPrimaryBehavior") == 0x1548);
        try std.testing.expect(@offsetOf(@This(), "m_Behaviors") == 0x1550);
        try std.testing.expect(@offsetOf(@This(), "m_Conditions") == 0x1570);
        try std.testing.expect(@offsetOf(@This(), "m_CustomInterruptConditions") == 0x157c);
        try std.testing.expect(@offsetOf(@This(), "m_bForceConditionsGather") == 0x1588);
        try std.testing.expect(@offsetOf(@This(), "m_bConditionsGathered") == 0x1589);
        try std.testing.expect(@offsetOf(@This(), "m_bInterruptableByScript") == 0x158a);
        try std.testing.expect(@offsetOf(@This(), "m_movingGroundEnt") == 0x158c);
        try std.testing.expect(@offsetOf(@This(), "m_groundRelativePos") == 0x1590);
        try std.testing.expect(@offsetOf(@This(), "m_groundRelativeAngles") == 0x159c);
        try std.testing.expect(@offsetOf(@This(), "m_NPCState") == 0x15a8);
        try std.testing.expect(@offsetOf(@This(), "m_NPCPrevState") == 0x15ac);
        try std.testing.expect(@offsetOf(@This(), "m_NPCAlertnessState") == 0x15b0);
        try std.testing.expect(@offsetOf(@This(), "m_lastSchedSelectorState") == 0x15b4);
        try std.testing.expect(@offsetOf(@This(), "m_flLastSchedSelectChangeTime") == 0x15b8);
        try std.testing.expect(@offsetOf(@This(), "m_flLastStateChangeTime") == 0x15bc);
        try std.testing.expect(@offsetOf(@This(), "m_thinkInterval") == 0x15c0);
        try std.testing.expect(@offsetOf(@This(), "m_IdealNPCState") == 0x15c4);
        try std.testing.expect(@offsetOf(@This(), "m_Efficiency") == 0x15c8);
        try std.testing.expect(@offsetOf(@This(), "m_MoveEfficiency") == 0x15cc);
        try std.testing.expect(@offsetOf(@This(), "m_flNextDecisionTime") == 0x15d0);
        try std.testing.expect(@offsetOf(@This(), "m_searchPathID") == 0x15d4);
        try std.testing.expect(@offsetOf(@This(), "m_bDefenseActive") == 0x15d6);
        try std.testing.expect(@offsetOf(@This(), "m_bAlwaysAlert") == 0x15d7);
        try std.testing.expect(@offsetOf(@This(), "m_scriptedAnimForceInterrupt") == 0x15d8);
        try std.testing.expect(@offsetOf(@This(), "m_bWakeSquad") == 0x15d9);
        try std.testing.expect(@offsetOf(@This(), "m_flWakeRadius") == 0x15dc);
        try std.testing.expect(@offsetOf(@This(), "m_nWakeTick") == 0x15e0);
        try std.testing.expect(@offsetOf(@This(), "m_SleepState") == 0x15e4);
        try std.testing.expect(@offsetOf(@This(), "m_SleepFlags") == 0x15e8);
        try std.testing.expect(@offsetOf(@This(), "m_translatedActivity") == 0x15ec);
        try std.testing.expect(@offsetOf(@This(), "m_IdealActivity") == 0x15f0);
        try std.testing.expect(@offsetOf(@This(), "m_nIdealSequence") == 0x15f4);
        try std.testing.expect(@offsetOf(@This(), "m_IdealTranslatedActivity") == 0x15f8);
        try std.testing.expect(@offsetOf(@This(), "m_IdealWeaponActivity") == 0x15fc);
        try std.testing.expect(@offsetOf(@This(), "m_idealSequenceAlreadyResolved") == 0x1600);
        try std.testing.expect(@offsetOf(@This(), "m_seqFinishedInSolid") == 0x1604);
        try std.testing.expect(@offsetOf(@This(), "m_activeActModifiers") == 0x1608);
        try std.testing.expect(@offsetOf(@This(), "m_scriptIdleSequence") == 0x1648);
        try std.testing.expect(@offsetOf(@This(), "m_scriptAttackSequence") == 0x164c);
        try std.testing.expect(@offsetOf(@This(), "m_scriptDeathActivity") == 0x1650);
        try std.testing.expect(@offsetOf(@This(), "m_didSetIndoorActivityOverride") == 0x1654);
        try std.testing.expect(@offsetOf(@This(), "m_isInsideIndoorArea") == 0x1655);
        try std.testing.expect(@offsetOf(@This(), "m_requestSpecialRangeAttack") == 0x1656);
        try std.testing.expect(@offsetOf(@This(), "m_specialRangeAttackCount") == 0x1658);
        try std.testing.expect(@offsetOf(@This(), "m_aiSettings") == 0x1660);
        try std.testing.expect(@offsetOf(@This(), "m_aiSettingsIndex") == 0x1668);
        try std.testing.expect(@offsetOf(@This(), "m_subclass") == 0x166c);
        try std.testing.expect(@offsetOf(@This(), "m_pSenses") == 0x1670);
        try std.testing.expect(@offsetOf(@This(), "m_pLockedBestSound") == 0x1678);
        try std.testing.expect(@offsetOf(@This(), "m_aimDir") == 0x16a0);
        try std.testing.expect(@offsetOf(@This(), "m_aimDirValid") == 0x16ac);
        try std.testing.expect(@offsetOf(@This(), "m_weaponBlockedTimer") == 0x16b0);
        try std.testing.expect(@offsetOf(@This(), "m_weaponBlockedTimeOut") == 0x16b4);
        try std.testing.expect(@offsetOf(@This(), "m_moveDirection") == 0x16b8);
        try std.testing.expect(@offsetOf(@This(), "m_hEnemy") == 0x16bc);
        try std.testing.expect(@offsetOf(@This(), "m_hEnemySecondary") == 0x16c0);
        try std.testing.expect(@offsetOf(@This(), "m_distToEnemyLKP_AdjustForHeightDiff") == 0x16c4);
        try std.testing.expect(@offsetOf(@This(), "m_distToEnemyLKP") == 0x16c8);
        try std.testing.expect(@offsetOf(@This(), "m_distToEnemyLKPCenterToCenter") == 0x16cc);
        try std.testing.expect(@offsetOf(@This(), "m_hTargetEnt") == 0x16d0);
        try std.testing.expect(@offsetOf(@This(), "m_updateSquadEnemyQueue") == 0x16d8);
        try std.testing.expect(@offsetOf(@This(), "m_notifyEnemyToSquadTimer") == 0x16f8);
        try std.testing.expect(@offsetOf(@This(), "m_notifyEnemyToTeamTime") == 0x1704);
        try std.testing.expect(@offsetOf(@This(), "m_GiveUpOnDeadEnemyTimer") == 0x1708);
        try std.testing.expect(@offsetOf(@This(), "m_chooseEnemySanityTimer") == 0x1718);
        try std.testing.expect(@offsetOf(@This(), "m_EnemiesSerialNumber") == 0x171c);
        try std.testing.expect(@offsetOf(@This(), "m_flAcceptableTimeSeenEnemy") == 0x1720);
        try std.testing.expect(@offsetOf(@This(), "m_UpdateEnemyPosTimer") == 0x1724);
        try std.testing.expect(@offsetOf(@This(), "m_ForceUpdateEnemyPos") == 0x1728);
        try std.testing.expect(@offsetOf(@This(), "m_afCapability") == 0x172c);
        try std.testing.expect(@offsetOf(@This(), "m_flags") == 0x1730);
        try std.testing.expect(@offsetOf(@This(), "m_flMoveWaitFinished") == 0x1734);
        try std.testing.expect(@offsetOf(@This(), "m_hTempBlockingEnt") == 0x1738);
        try std.testing.expect(@offsetOf(@This(), "m_UnreachableEnts") == 0x1740);
        try std.testing.expect(@offsetOf(@This(), "m_pNavigator") == 0x1760);
        try std.testing.expect(@offsetOf(@This(), "m_pLocalNavigator") == 0x1768);
        try std.testing.expect(@offsetOf(@This(), "m_pPathfinder") == 0x1770);
        try std.testing.expect(@offsetOf(@This(), "m_pMoveProbe") == 0x1778);
        try std.testing.expect(@offsetOf(@This(), "m_pMotor") == 0x1780);
        try std.testing.expect(@offsetOf(@This(), "m_hGoalEnt") == 0x1788);
        try std.testing.expect(@offsetOf(@This(), "m_flTimeLastMovement") == 0x178c);
        try std.testing.expect(@offsetOf(@This(), "m_longJumpCheckTime") == 0x1790);
        try std.testing.expect(@offsetOf(@This(), "m_prevGroundNormal") == 0x1794);
        try std.testing.expect(@offsetOf(@This(), "m_CheckOnGroundTimer") == 0x17a0);
        try std.testing.expect(@offsetOf(@This(), "m_vDefaultEyeOffset") == 0x17a4);
        try std.testing.expect(@offsetOf(@This(), "m_flNextEyeLookTime") == 0x17b0);
        try std.testing.expect(@offsetOf(@This(), "m_flEyeIntegRate") == 0x17b4);
        try std.testing.expect(@offsetOf(@This(), "m_vEyeLookTarget") == 0x17b8);
        try std.testing.expect(@offsetOf(@This(), "m_vCurEyeTarget") == 0x17c4);
        try std.testing.expect(@offsetOf(@This(), "m_flHeadYaw") == 0x17d0);
        try std.testing.expect(@offsetOf(@This(), "m_flHeadPitch") == 0x17d4);
        try std.testing.expect(@offsetOf(@This(), "m_animRefAdjustThinkCount") == 0x17d8);
        try std.testing.expect(@offsetOf(@This(), "m_animRefAdjustPerThink") == 0x17dc);
        try std.testing.expect(@offsetOf(@This(), "m_animRefDidAdjust") == 0x17e8);
        try std.testing.expect(@offsetOf(@This(), "m_animParentedOnPlay") == 0x17e9);
        try std.testing.expect(@offsetOf(@This(), "m_scriptAnimSavedCollisionGroup") == 0x17ec);
        try std.testing.expect(@offsetOf(@This(), "m_scriptAnimSavedFlags") == 0x17f0);
        try std.testing.expect(@offsetOf(@This(), "m_scriptAnimStartPolyRef") == 0x17f4);
        try std.testing.expect(@offsetOf(@This(), "m_enemyChangeScriptCallback") == 0x17f8);
        try std.testing.expect(@offsetOf(@This(), "m_scriptThread") == 0x1808);
        try std.testing.expect(@offsetOf(@This(), "m_scriptFuncName") == 0x1810);
        try std.testing.expect(@offsetOf(@This(), "m_deathScriptFuncName") == 0x1818);
        try std.testing.expect(@offsetOf(@This(), "m_pEnemies") == 0x1820);
        try std.testing.expect(@offsetOf(@This(), "m_afMemory") == 0x1828);
        try std.testing.expect(@offsetOf(@This(), "m_hEnemyOccluder") == 0x182c);
        try std.testing.expect(@offsetOf(@This(), "m_hScriptEnemy") == 0x1830);
        try std.testing.expect(@offsetOf(@This(), "m_hNearestVisibleFriendlyPlayer") == 0x1834);
        try std.testing.expect(@offsetOf(@This(), "m_lastDamageFlags") == 0x1838);
        try std.testing.expect(@offsetOf(@This(), "m_lastDamageType") == 0x183c);
        try std.testing.expect(@offsetOf(@This(), "m_strafeDodgeDamage") == 0x1840);
        try std.testing.expect(@offsetOf(@This(), "m_lastLightPainTime") == 0x1844);
        try std.testing.expect(@offsetOf(@This(), "m_lastHeavyPainTime") == 0x1848);
        try std.testing.expect(@offsetOf(@This(), "m_flSumDamage") == 0x184c);
        try std.testing.expect(@offsetOf(@This(), "m_flLastDamageTime") == 0x1850);
        try std.testing.expect(@offsetOf(@This(), "m_flLastSawPlayerTime") == 0x1854);
        try std.testing.expect(@offsetOf(@This(), "m_flLastAttackTime") == 0x1858);
        try std.testing.expect(@offsetOf(@This(), "m_flAlertEventTime") == 0x185c);
        try std.testing.expect(@offsetOf(@This(), "m_flNextRangeAttackSecondary") == 0x1860);
        try std.testing.expect(@offsetOf(@This(), "m_flNextMeleeAllowTime") == 0x1864);
        try std.testing.expect(@offsetOf(@This(), "m_flNextMeleeAltAllowTime") == 0x1868);
        try std.testing.expect(@offsetOf(@This(), "m_meleeComboCount") == 0x186c);
        try std.testing.expect(@offsetOf(@This(), "m_bIgnoreUnseenEnemies") == 0x1870);
        try std.testing.expect(@offsetOf(@This(), "m_ShotRegulator") == 0x1878);
        try std.testing.expect(@offsetOf(@This(), "m_syncedMelee") == 0x18a8);
        try std.testing.expect(@offsetOf(@This(), "m_pSquad") == 0x1908);
        try std.testing.expect(@offsetOf(@This(), "m_SquadName") == 0x1910);
        try std.testing.expect(@offsetOf(@This(), "m_iMySquadSlot") == 0x1918);
        try std.testing.expect(@offsetOf(@This(), "m_squadAssignment") == 0x191c);
        try std.testing.expect(@offsetOf(@This(), "m_squadAssignedRange") == 0x1920);
        try std.testing.expect(@offsetOf(@This(), "m_squadAssignedNodeStartUseTime") == 0x1924);
        try std.testing.expect(@offsetOf(@This(), "m_squadAssignedNode") == 0x1928);
        try std.testing.expect(@offsetOf(@This(), "m_lockedNode") == 0x192c);
        try std.testing.expect(@offsetOf(@This(), "m_currentWeaponBarrel") == 0x1930);
        try std.testing.expect(@offsetOf(@This(), "m_bAutoSquad") == 0x1934);
        try std.testing.expect(@offsetOf(@This(), "m_bDidDeathCleanUp") == 0x1935);
        try std.testing.expect(@offsetOf(@This(), "m_bOptionalSprint") == 0x1936);
        try std.testing.expect(@offsetOf(@This(), "m_bClearNodeOnScheduleFail") == 0x1937);
        try std.testing.expect(@offsetOf(@This(), "m_bRunningFromEnemy") == 0x1938);
        try std.testing.expect(@offsetOf(@This(), "m_runFromEnemyRetry") == 0x1939);
        try std.testing.expect(@offsetOf(@This(), "m_disableArrivalOnce") == 0x193a);
        try std.testing.expect(@offsetOf(@This(), "m_pTacticalServices") == 0x1940);
        try std.testing.expect(@offsetOf(@This(), "m_flWaitFinished") == 0x1948);
        try std.testing.expect(@offsetOf(@This(), "m_flNextFlinchTime") == 0x194c);
        try std.testing.expect(@offsetOf(@This(), "m_flNextCheckFaceEnemyTime") == 0x1950);
        try std.testing.expect(@offsetOf(@This(), "m_moveAndShootOverlay") == 0x1958);
        try std.testing.expect(@offsetOf(@This(), "m_forceShootOverlay") == 0x1978);
        try std.testing.expect(@offsetOf(@This(), "m_weaponTemporarilySwitchedByAnim") == 0x1979);
        try std.testing.expect(@offsetOf(@This(), "m_strafeDir") == 0x197a);
        try std.testing.expect(@offsetOf(@This(), "m_strafeCount") == 0x197c);
        try std.testing.expect(@offsetOf(@This(), "m_flSavePositionTime") == 0x1980);
        try std.testing.expect(@offsetOf(@This(), "m_vSavePosition") == 0x1984);
        try std.testing.expect(@offsetOf(@This(), "m_vInterruptSavePosition") == 0x1990);
        try std.testing.expect(@offsetOf(@This(), "m_vLastAutoMoveDelta") == 0x199c);
        try std.testing.expect(@offsetOf(@This(), "m_autoMoveAdjust_originalSpace") == 0x19a8);
        try std.testing.expect(@offsetOf(@This(), "m_vLastPatrolDir") == 0x19b4);
        try std.testing.expect(@offsetOf(@This(), "m_pHintNode") == 0x19c0);
        try std.testing.expect(@offsetOf(@This(), "m_pSafeHintNode") == 0x19c8);
        try std.testing.expect(@offsetOf(@This(), "m_safeHintType") == 0x19cc);
        try std.testing.expect(@offsetOf(@This(), "m_flDistTooFar") == 0x19d0);
        try std.testing.expect(@offsetOf(@This(), "m_flDistTooClose") == 0x19d4);
        try std.testing.expect(@offsetOf(@This(), "m_minEngagementDistVsWeak") == 0x19d8);
        try std.testing.expect(@offsetOf(@This(), "m_maxEngagementDistVsWeak") == 0x19dc);
        try std.testing.expect(@offsetOf(@This(), "m_minEngagementDistVsStrong") == 0x19e0);
        try std.testing.expect(@offsetOf(@This(), "m_maxEngagementDistVsStrong") == 0x19e4);
        try std.testing.expect(@offsetOf(@This(), "m_dangerousAreaRadius") == 0x19e8);
        try std.testing.expect(@offsetOf(@This(), "m_minEnemyDist") == 0x19ec);
        try std.testing.expect(@offsetOf(@This(), "m_disengageEnemyDist") == 0x19f0);
        try std.testing.expect(@offsetOf(@This(), "m_spawnEquipment_0_") == 0x19f8);
        try std.testing.expect(@offsetOf(@This(), "m_spawnEquipment_1_") == 0x1a00);
        try std.testing.expect(@offsetOf(@This(), "m_grenadeWeapon") == 0x1a08);
        try std.testing.expect(@offsetOf(@This(), "m_grenadeWeaponName") == 0x1a10);
        try std.testing.expect(@offsetOf(@This(), "m_lastValidGrenadeThrowOrigin") == 0x1a18);
        try std.testing.expect(@offsetOf(@This(), "m_throwGrenadeAllowedTime") == 0x1a24);
        try std.testing.expect(@offsetOf(@This(), "m_rangeAttackTwitchAllowedTime") == 0x1a28);
        try std.testing.expect(@offsetOf(@This(), "m_smartAmmoLockTime") == 0x1a2c);
        try std.testing.expect(@offsetOf(@This(), "m_smartAmmoLocks") == 0x1a30);
        try std.testing.expect(@offsetOf(@This(), "m_smartAmmoWeapon") == 0x1a34);
        try std.testing.expect(@offsetOf(@This(), "m_meleeWeapon") == 0x1a38);
        try std.testing.expect(@offsetOf(@This(), "m_reactFriendlyChance") == 0x1a3c);
        try std.testing.expect(@offsetOf(@This(), "m_reactBulletChance") == 0x1a40);
        try std.testing.expect(@offsetOf(@This(), "m_reactChance") == 0x1a44);
        try std.testing.expect(@offsetOf(@This(), "m_lastReactTime") == 0x1a48);
        try std.testing.expect(@offsetOf(@This(), "m_dangerousAreaReactionTime") == 0x1a4c);
        try std.testing.expect(@offsetOf(@This(), "m_MovementCollisionGroup") == 0x1a50);
        try std.testing.expect(@offsetOf(@This(), "m_moveDeflectionSearchRadius") == 0x1a54);
        try std.testing.expect(@offsetOf(@This(), "m_moveDeflectionDebounceExpireTime") == 0x1a58);
        try std.testing.expect(@offsetOf(@This(), "shootingCover") == 0x1a60);
        try std.testing.expect(@offsetOf(@This(), "m_OnDamaged") == 0x1af8);
        try std.testing.expect(@offsetOf(@This(), "m_OnFoundEnemy") == 0x1b20);
        try std.testing.expect(@offsetOf(@This(), "m_OnSeeEnemy") == 0x1b48);
        try std.testing.expect(@offsetOf(@This(), "m_OnCantSeeEnemy") == 0x1b70);
        try std.testing.expect(@offsetOf(@This(), "m_OnNoticePotentialEnemy") == 0x1b98);
        try std.testing.expect(@offsetOf(@This(), "m_OnGainEnemyLOS") == 0x1bc0);
        try std.testing.expect(@offsetOf(@This(), "m_OnLostEnemyLOS") == 0x1be8);
        try std.testing.expect(@offsetOf(@This(), "m_OnLostEnemy") == 0x1c10);
        try std.testing.expect(@offsetOf(@This(), "m_OnFoundPlayer") == 0x1c38);
        try std.testing.expect(@offsetOf(@This(), "m_OnLostPlayerLOS") == 0x1c60);
        try std.testing.expect(@offsetOf(@This(), "m_OnLostPlayer") == 0x1c88);
        try std.testing.expect(@offsetOf(@This(), "m_OnHearPlayer") == 0x1cb0);
        try std.testing.expect(@offsetOf(@This(), "m_OnHearCombat") == 0x1cd8);
        try std.testing.expect(@offsetOf(@This(), "m_OnSleep") == 0x1d00);
        try std.testing.expect(@offsetOf(@This(), "m_OnWake") == 0x1d28);
        try std.testing.expect(@offsetOf(@This(), "m_OnStateChange") == 0x1d50);
        try std.testing.expect(@offsetOf(@This(), "m_OnFailedToPath") == 0x1d78);
        try std.testing.expect(@offsetOf(@This(), "m_OnEnterGoalRadius") == 0x1da0);
        try std.testing.expect(@offsetOf(@This(), "m_OnFinishedAssault") == 0x1dc8);
        try std.testing.expect(@offsetOf(@This(), "m_OnSawCorpse") == 0x1df0);
        try std.testing.expect(@offsetOf(@This(), "m_OnGiveWeapon") == 0x1e18);
        try std.testing.expect(@offsetOf(@This(), "m_OnTakeWeapon") == 0x1e40);
        try std.testing.expect(@offsetOf(@This(), "m_OnSpecialAttack") == 0x1e68);
        try std.testing.expect(@offsetOf(@This(), "m_OnScheduleChange") == 0x1e90);
        try std.testing.expect(@offsetOf(@This(), "m_OnSyncedMeleeBegin") == 0x1eb8);
        try std.testing.expect(@offsetOf(@This(), "m_queuedOutput") == 0x1ee0);
        try std.testing.expect(@offsetOf(@This(), "m_pInitializedPhysicsObject") == 0x1f00);
        try std.testing.expect(@offsetOf(@This(), "m_fIsUsingSmallHull") == 0x1f08);
        try std.testing.expect(@offsetOf(@This(), "m_bHadMovingGround") == 0x1f09);
        try std.testing.expect(@offsetOf(@This(), "m_bCheckContacts") == 0x1f0a);
        try std.testing.expect(@offsetOf(@This(), "m_bAllowShoot") == 0x1f0b);
        try std.testing.expect(@offsetOf(@This(), "m_bActiveForSmartAmmo") == 0x1f0c);
        try std.testing.expect(@offsetOf(@This(), "m_bEnemyValidSmartAmmoTarget") == 0x1f0d);
        try std.testing.expect(@offsetOf(@This(), "m_bAllowBlockBullets") == 0x1f0e);
        try std.testing.expect(@offsetOf(@This(), "m_blockingBullets") == 0x1f0f);
        try std.testing.expect(@offsetOf(@This(), "m_reactingSurprisedReason") == 0x1f10);
        try std.testing.expect(@offsetOf(@This(), "m_desireCrouch") == 0x1f14);
        try std.testing.expect(@offsetOf(@This(), "m_isCrouching") == 0x1f15);
        try std.testing.expect(@offsetOf(@This(), "m_bAutoMovementBlocked") == 0x1f16);
        try std.testing.expect(@offsetOf(@This(), "m_bAllowPushDuringAnim") == 0x1f17);
        try std.testing.expect(@offsetOf(@This(), "m_desireStandOverrideExpireTime") == 0x1f18);
        try std.testing.expect(@offsetOf(@This(), "m_schedSelectorHistory") == 0x1f20);
        try std.testing.expect(@offsetOf(@This(), "m_behaviorSelectorID") == 0x1f48);
        try std.testing.expect(@offsetOf(@This(), "m_failText") == 0x1f50);
        try std.testing.expect(@offsetOf(@This(), "m_interruptText") == 0x1f58);
        try std.testing.expect(@offsetOf(@This(), "m_failedSchedule") == 0x1f60);
        try std.testing.expect(@offsetOf(@This(), "m_interuptSchedule") == 0x1f68);
        try std.testing.expect(@offsetOf(@This(), "m_nDebugCurIndex") == 0x1f70);
        try std.testing.expect(@offsetOf(@This(), "m_flAccuracyMultiplier") == 0x1f74);
        try std.testing.expect(@offsetOf(@This(), "m_flAccuracyMultiplierForEnemy") == 0x1f78);
        try std.testing.expect(@offsetOf(@This(), "m_LastMissFastPlayerTime") == 0x1f7c);
        try std.testing.expect(@offsetOf(@This(), "m_LastSuppressionTime") == 0x1f80);
        try std.testing.expect(@offsetOf(@This(), "m_LastShootAccuracy") == 0x1f84);
        try std.testing.expect(@offsetOf(@This(), "m_TotalShots") == 0x1f88);
        try std.testing.expect(@offsetOf(@This(), "m_TotalHits") == 0x1f8c);
        try std.testing.expect(@offsetOf(@This(), "m_flSoundWaitTime") == 0x1f90);
        try std.testing.expect(@offsetOf(@This(), "m_nSoundPriority") == 0x1f94);
        try std.testing.expect(@offsetOf(@This(), "m_lastTauntTime") == 0x1f98);
        try std.testing.expect(@offsetOf(@This(), "m_freezeTime") == 0x1f9c);
        try std.testing.expect(@offsetOf(@This(), "m_freezeCycle") == 0x1fa0);
        try std.testing.expect(@offsetOf(@This(), "m_prevShieldHealth") == 0x1fa4);
        try std.testing.expect(@offsetOf(@This(), "m_healthEvalMultiplier") == 0x1fa8);
        try std.testing.expect(@offsetOf(@This(), "m_aiMovementSpeed") == 0x1fac);
        try std.testing.expect(@offsetOf(@This(), "m_aiSprinting") == 0x1fb0);
        try std.testing.expect(@offsetOf(@This(), "m_aiNetworkFlags") == 0x1fb4);
        try std.testing.expect(@offsetOf(@This(), "m_isHologram") == 0x1fb8);
        try std.testing.expect(@offsetOf(@This(), "m_fireteamSlotIndex") == 0x1fbc);
        try std.testing.expect(@offsetOf(@This(), "m_statusEffectsTimedNPCNV") == 0x1fc0);
        try std.testing.expect(@offsetOf(@This(), "m_statusEffectsEndlessNPCNV") == 0x2008);
        try std.testing.expect(@offsetOf(@This(), "m_title") == 0x2048);
        try std.testing.expect(@offsetOf(@This(), "m_tethered") == 0x2068);
        try std.testing.expect(@offsetOf(@This(), "m_nAITraceMask") == 0x206c);
        try std.testing.expect(@offsetOf(@This(), "m_flBoostSpeed") == 0x2070);
        try std.testing.expect(@offsetOf(@This(), "m_blockPeriodStartTime") == 0x2074);
        try std.testing.expect(@offsetOf(@This(), "m_blockBulletCount") == 0x2078);
        try std.testing.expect(@offsetOf(@This(), "m_dodgePeriodStartTime") == 0x207c);
        try std.testing.expect(@offsetOf(@This(), "m_lastDodgeTime") == 0x2080);
        try std.testing.expect(@offsetOf(@This(), "m_dodgeCount") == 0x2084);
        try std.testing.expect(@offsetOf(@This(), "m_dodgeMissile") == 0x2088);
        try std.testing.expect(@offsetOf(@This(), "m_dodgeFromPos") == 0x208c);
        try std.testing.expect(@offsetOf(@This(), "m_dangerousArea") == 0x2098);
        try std.testing.expect(@offsetOf(@This(), "m_dangerousAreaDebounceExpireTime") == 0x20a0);
        try std.testing.expect(@offsetOf(@This(), "m_grappled") == 0x20a4);
        try std.testing.expect(@offsetOf(@This(), "m_grappleEndFloating") == 0x20a5);
        try std.testing.expect(@offsetOf(@This(), "m_grappleRestoreMoveType") == 0x20a8);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
