pub const CCrossbowBolt = extern struct {
    vtable: *anyopaque,
    CProjectile: abi.Inherit(server.CProjectile),

    m_collideWithOwner: bool, // +0x1ca0 size: 0x1 (0x1 * 0x1) type 6
    gap_1ca1: [3]abi.undefined,
    m_bounceCount: i32, // +0x1ca4 size: 0x4 (0x1 * 0x4) type 5
    m_maxBounceCount: i32, // +0x1ca8 size: 0x4 (0x1 * 0x4) type 5
    m_doesGrow: bool, // +0x1cac size: 0x1 (0x1 * 0x1) type 6
    gap_1cad: [3]abi.undefined,
    m_growStartSize: f32, // +0x1cb0 size: 0x4 (0x1 * 0x4) type 1
    m_growStage1Tick: valve.tick, // +0x1cb4 size: 0x4 (0x1 * 0x4) type 17
    m_growStage1Size: f32, // +0x1cb8 size: 0x4 (0x1 * 0x4) type 1
    m_growStage2Tick: valve.tick, // +0x1cbc size: 0x4 (0x1 * 0x4) type 17
    m_growStage2Size: f32, // +0x1cc0 size: 0x4 (0x1 * 0x4) type 1
    m_growStageFinalTick: valve.tick, // +0x1cc4 size: 0x4 (0x1 * 0x4) type 17
    m_growStageFinalSize: f32, // +0x1cc8 size: 0x4 (0x1 * 0x4) type 1
    m_flDamage: f32, // +0x1ccc size: 0x4 (0x1 * 0x4) type 1
    m_OnWeaponBoltHit: [40]abi.undefined, // +0x1cd0 size: 0x28 (0x1 * 0x28) type 11
    m_oldMins: m.Vector3, // +0x1cf8 size: 0xc (0x1 * 0xc) type 3
    m_oldMaxs: m.Vector3, // +0x1d04 size: 0xc (0x1 * 0xc) type 3

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x1d10);
        try std.testing.expect(@offsetOf(@This(), "m_collideWithOwner") == 0x1ca0);
        try std.testing.expect(@offsetOf(@This(), "m_bounceCount") == 0x1ca4);
        try std.testing.expect(@offsetOf(@This(), "m_maxBounceCount") == 0x1ca8);
        try std.testing.expect(@offsetOf(@This(), "m_doesGrow") == 0x1cac);
        try std.testing.expect(@offsetOf(@This(), "m_growStartSize") == 0x1cb0);
        try std.testing.expect(@offsetOf(@This(), "m_growStage1Tick") == 0x1cb4);
        try std.testing.expect(@offsetOf(@This(), "m_growStage1Size") == 0x1cb8);
        try std.testing.expect(@offsetOf(@This(), "m_growStage2Tick") == 0x1cbc);
        try std.testing.expect(@offsetOf(@This(), "m_growStage2Size") == 0x1cc0);
        try std.testing.expect(@offsetOf(@This(), "m_growStageFinalTick") == 0x1cc4);
        try std.testing.expect(@offsetOf(@This(), "m_growStageFinalSize") == 0x1cc8);
        try std.testing.expect(@offsetOf(@This(), "m_flDamage") == 0x1ccc);
        try std.testing.expect(@offsetOf(@This(), "m_OnWeaponBoltHit") == 0x1cd0);
        try std.testing.expect(@offsetOf(@This(), "m_oldMins") == 0x1cf8);
        try std.testing.expect(@offsetOf(@This(), "m_oldMaxs") == 0x1d04);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
