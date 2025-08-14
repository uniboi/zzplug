pub const CNPC_Titan = extern struct {
    vtable: *anyopaque,
    CAI_Combatant: abi.Inherit(server.CAI_Combatant),

    m_outOfBoundsDeadTime: valve.time, // +0x2500 size: 0x4 (0x1 * 0x4) type 16
    m_bCanVortex: bool, // +0x2504 size: 0x1 (0x1 * 0x1) type 6
    gap_2505: [3]abi.undefined,
    m_defenseUseDamage: f32, // +0x2508 size: 0x4 (0x1 * 0x4) type 1
    m_defenseUseDamageRandom: f32, // +0x250c size: 0x4 (0x1 * 0x4) type 1
    m_lastVortexTime: valve.time, // +0x2510 size: 0x4 (0x1 * 0x4) type 16
    m_vortexStartTime: valve.time, // +0x2514 size: 0x4 (0x1 * 0x4) type 16
    m_vortexDuration: f32, // +0x2518 size: 0x4 (0x1 * 0x4) type 1
    m_hLastDamager: valve.EHANDLE, // +0x251c size: 0x4 (0x1 * 0x4) type 13
    m_defensiveAbility: i32, // +0x2520 size: 0x4 (0x1 * 0x4) type 5
    m_defensiveAbilityWeapon: valve.EHANDLE, // +0x2524 size: 0x4 (0x1 * 0x4) type 13
    m_tacticalAbility: valve.EHANDLE, // +0x2528 size: 0x4 (0x1 * 0x4) type 13
    m_titanCoreWeapon: valve.EHANDLE, // +0x252c size: 0x4 (0x1 * 0x4) type 13
    m_meleeAttackCheckTarget: valve.EHANDLE, // +0x2530 size: 0x4 (0x1 * 0x4) type 13
    m_blockingPhysEnt: valve.EHANDLE, // +0x2534 size: 0x4 (0x1 * 0x4) type 13
    m_blockingPhysFaceDir: m.Vector3, // +0x2538 size: 0xc (0x1 * 0xc) type 3
    m_blockingPhysEntTime: valve.time, // +0x2544 size: 0x4 (0x1 * 0x4) type 16
    m_PhysEntKnockCount: i32, // +0x2548 size: 0x4 (0x1 * 0x4) type 5
    m_PhysEntKnockCountDecrTime: valve.time, // +0x254c size: 0x4 (0x1 * 0x4) type 16
    m_grappleHook: valve.EHANDLE, // +0x2550 size: 0x4 (0x1 * 0x4) type 13
    gap_2554: [4]abi.undefined,
    m_grapple: server.GrappleData, // +0x2558 size: 0x68 (0x1 * 0x68) type 10
    m_grappleActive: bool, // +0x25c0 size: 0x1 (0x1 * 0x1) type 6
    m_canStand: bool, // +0x25c1 size: 0x1 (0x1 * 0x1) type 6

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x25c8);
        try std.testing.expect(@offsetOf(@This(), "m_outOfBoundsDeadTime") == 0x2500);
        try std.testing.expect(@offsetOf(@This(), "m_bCanVortex") == 0x2504);
        try std.testing.expect(@offsetOf(@This(), "m_defenseUseDamage") == 0x2508);
        try std.testing.expect(@offsetOf(@This(), "m_defenseUseDamageRandom") == 0x250c);
        try std.testing.expect(@offsetOf(@This(), "m_lastVortexTime") == 0x2510);
        try std.testing.expect(@offsetOf(@This(), "m_vortexStartTime") == 0x2514);
        try std.testing.expect(@offsetOf(@This(), "m_vortexDuration") == 0x2518);
        try std.testing.expect(@offsetOf(@This(), "m_hLastDamager") == 0x251c);
        try std.testing.expect(@offsetOf(@This(), "m_defensiveAbility") == 0x2520);
        try std.testing.expect(@offsetOf(@This(), "m_defensiveAbilityWeapon") == 0x2524);
        try std.testing.expect(@offsetOf(@This(), "m_tacticalAbility") == 0x2528);
        try std.testing.expect(@offsetOf(@This(), "m_titanCoreWeapon") == 0x252c);
        try std.testing.expect(@offsetOf(@This(), "m_meleeAttackCheckTarget") == 0x2530);
        try std.testing.expect(@offsetOf(@This(), "m_blockingPhysEnt") == 0x2534);
        try std.testing.expect(@offsetOf(@This(), "m_blockingPhysFaceDir") == 0x2538);
        try std.testing.expect(@offsetOf(@This(), "m_blockingPhysEntTime") == 0x2544);
        try std.testing.expect(@offsetOf(@This(), "m_PhysEntKnockCount") == 0x2548);
        try std.testing.expect(@offsetOf(@This(), "m_PhysEntKnockCountDecrTime") == 0x254c);
        try std.testing.expect(@offsetOf(@This(), "m_grappleHook") == 0x2550);
        try std.testing.expect(@offsetOf(@This(), "m_grapple") == 0x2558);
        try std.testing.expect(@offsetOf(@This(), "m_grappleActive") == 0x25c0);
        try std.testing.expect(@offsetOf(@This(), "m_canStand") == 0x25c1);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
