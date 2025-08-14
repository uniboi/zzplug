pub const CBaseCombatWeapon = extern struct {
    vtable: *anyopaque,
    CBaseAnimating: abi.Inherit(server.CBaseAnimating),

    m_weaponOwner: valve.EHANDLE, // +0xeb8 size: 0x4 (0x1 * 0x4) type 13
    m_weaponOwnerPrevious: valve.EHANDLE, // +0xebc size: 0x4 (0x1 * 0x4) type 13
    m_weaponOwnerPreviousWasNPC: bool, // +0xec0 size: 0x1 (0x1 * 0x1) type 6
    gap_ec1: [3]abi.undefined,
    m_nextReadyTime: valve.time, // +0xec4 size: 0x4 (0x1 * 0x4) type 16
    m_nextPrimaryAttackTime: valve.time, // +0xec8 size: 0x4 (0x1 * 0x4) type 16
    m_iWorldModelIndex: i32, // +0xecc size: 0x4 (0x1 * 0x4) type 5
    m_holsterModelIndex: i32, // +0xed0 size: 0x4 (0x1 * 0x4) type 5
    m_droppedModelIndex: i32, // +0xed4 size: 0x4 (0x1 * 0x4) type 5
    m_ActiveState: i32, // +0xed8 size: 0x4 (0x1 * 0x4) type 5
    m_ammoInClip: i32, // +0xedc size: 0x4 (0x1 * 0x4) type 5
    m_ammoInStockpile: i32, // +0xee0 size: 0x4 (0x1 * 0x4) type 5
    m_lifetimeShots: i32, // +0xee4 size: 0x4 (0x1 * 0x4) type 5
    m_flTimeWeaponIdle: valve.time, // +0xee8 size: 0x4 (0x1 * 0x4) type 16
    m_physicsAttacker: valve.EHANDLE, // +0xeec size: 0x4 (0x1 * 0x4) type 13
    m_projectileModelIndex: i32, // +0xef0 size: 0x4 (0x1 * 0x4) type 5
    m_lastPrimaryAttack: valve.time, // +0xef4 size: 0x4 (0x1 * 0x4) type 16
    m_flNextEmptySoundTime: valve.time, // +0xef8 size: 0x4 (0x1 * 0x4) type 16
    m_weaponActivity: i32, // +0xefc size: 0x4 (0x1 * 0x4) type 5
    m_bRemoveable: bool, // +0xf00 size: 0x1 (0x1 * 0x1) type 6
    m_bInReload: bool, // +0xf01 size: 0x1 (0x1 * 0x1) type 6
    gap_f02: [2]abi.undefined,
    m_nIdealSequence: i32, // +0xf04 size: 0x4 (0x1 * 0x4) type 5
    m_IdealActivity: i32, // +0xf08 size: 0x4 (0x1 * 0x4) type 5
    m_ownerMuzzleAttachment: i32, // +0xf0c size: 0x4 (0x1 * 0x4) type 5
    m_weaponInfoFileHandle: i16, // +0xf10 size: 0x2 (0x1 * 0x2) type 7
    gap_f12: [6]abi.undefined,
    m_pConstraint: [8]abi.undefined, // +0xf18 size: 0x8 (0x1 * 0x8) type 11
    m_OnPlayerUse: [40]abi.undefined, // +0xf20 size: 0x28 (0x1 * 0x28) type 11
    m_OnPlayerPickup: [40]abi.undefined, // +0xf48 size: 0x28 (0x1 * 0x28) type 11
    m_OnNPCPickup: [40]abi.undefined, // +0xf70 size: 0x28 (0x1 * 0x28) type 11
    m_OnCacheInteraction: [40]abi.undefined, // +0xf98 size: 0x28 (0x1 * 0x28) type 11

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xfc0);
        try std.testing.expect(@offsetOf(@This(), "m_weaponOwner") == 0xeb8);
        try std.testing.expect(@offsetOf(@This(), "m_weaponOwnerPrevious") == 0xebc);
        try std.testing.expect(@offsetOf(@This(), "m_weaponOwnerPreviousWasNPC") == 0xec0);
        try std.testing.expect(@offsetOf(@This(), "m_nextReadyTime") == 0xec4);
        try std.testing.expect(@offsetOf(@This(), "m_nextPrimaryAttackTime") == 0xec8);
        try std.testing.expect(@offsetOf(@This(), "m_iWorldModelIndex") == 0xecc);
        try std.testing.expect(@offsetOf(@This(), "m_holsterModelIndex") == 0xed0);
        try std.testing.expect(@offsetOf(@This(), "m_droppedModelIndex") == 0xed4);
        try std.testing.expect(@offsetOf(@This(), "m_ActiveState") == 0xed8);
        try std.testing.expect(@offsetOf(@This(), "m_ammoInClip") == 0xedc);
        try std.testing.expect(@offsetOf(@This(), "m_ammoInStockpile") == 0xee0);
        try std.testing.expect(@offsetOf(@This(), "m_lifetimeShots") == 0xee4);
        try std.testing.expect(@offsetOf(@This(), "m_flTimeWeaponIdle") == 0xee8);
        try std.testing.expect(@offsetOf(@This(), "m_physicsAttacker") == 0xeec);
        try std.testing.expect(@offsetOf(@This(), "m_projectileModelIndex") == 0xef0);
        try std.testing.expect(@offsetOf(@This(), "m_lastPrimaryAttack") == 0xef4);
        try std.testing.expect(@offsetOf(@This(), "m_flNextEmptySoundTime") == 0xef8);
        try std.testing.expect(@offsetOf(@This(), "m_weaponActivity") == 0xefc);
        try std.testing.expect(@offsetOf(@This(), "m_bRemoveable") == 0xf00);
        try std.testing.expect(@offsetOf(@This(), "m_bInReload") == 0xf01);
        try std.testing.expect(@offsetOf(@This(), "m_nIdealSequence") == 0xf04);
        try std.testing.expect(@offsetOf(@This(), "m_IdealActivity") == 0xf08);
        try std.testing.expect(@offsetOf(@This(), "m_ownerMuzzleAttachment") == 0xf0c);
        try std.testing.expect(@offsetOf(@This(), "m_weaponInfoFileHandle") == 0xf10);
        try std.testing.expect(@offsetOf(@This(), "m_pConstraint") == 0xf18);
        try std.testing.expect(@offsetOf(@This(), "m_OnPlayerUse") == 0xf20);
        try std.testing.expect(@offsetOf(@This(), "m_OnPlayerPickup") == 0xf48);
        try std.testing.expect(@offsetOf(@This(), "m_OnNPCPickup") == 0xf70);
        try std.testing.expect(@offsetOf(@This(), "m_OnCacheInteraction") == 0xf98);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
