pub const CBaseGrenade = extern struct {
    vtable: *anyopaque,
    CProjectile: abi.Inherit(server.CProjectile),

    m_hasExploded: bool, // +0x1ca0 size: 0x1 (0x1 * 0x1) type 6
    m_doesExplode: bool, // +0x1ca1 size: 0x1 (0x1 * 0x1) type 6
    gap_1ca2: [2]abi.undefined,
    m_DmgRadius: f32, // +0x1ca4 size: 0x4 (0x1 * 0x4) type 1
    m_flDetonateTime: valve.time, // +0x1ca8 size: 0x4 (0x1 * 0x4) type 16
    m_igniteDuration: f32, // +0x1cac size: 0x4 (0x1 * 0x4) type 1
    m_hasGrenadeIgnited: bool, // +0x1cb0 size: 0x1 (0x1 * 0x1) type 6
    gap_1cb1: [3]abi.undefined,
    m_grenadeCreationTime: f32, // +0x1cb4 size: 0x4 (0x1 * 0x4) type 1
    m_grenadeCreationOrigin: m.Vector3, // +0x1cb8 size: 0xc (0x1 * 0xc) type 3
    m_collideWithOwner: bool, // +0x1cc4 size: 0x1 (0x1 * 0x1) type 6
    gap_1cc5: [3]abi.undefined,
    m_magneticData: server.MagneticGrenadeData, // +0x1cc8 size: 0x8 (0x1 * 0x8) type 10
    m_inSolid: bool, // +0x1cd0 size: 0x1 (0x1 * 0x1) type 6
    m_alreadyImpacted: bool, // +0x1cd1 size: 0x1 (0x1 * 0x1) type 6
    gap_1cd2: [2]abi.undefined,
    m_prevPos: m.Vector3, // +0x1cd4 size: 0xc (0x1 * 0xc) type 3
    m_collisionCallbackTrace: *anyopaque, // +0x1ce0 size: 0x8 (0x1 * 0x8) type 31
    m_flDamage: f32, // +0x1ce8 size: 0x4 (0x1 * 0x4) type 1
    m_hThrower: valve.EHANDLE, // +0x1cec size: 0x4 (0x1 * 0x4) type 13
    m_hOriginalThrower: valve.EHANDLE, // +0x1cf0 size: 0x4 (0x1 * 0x4) type 13
    m_useScriptOnDamaged: bool, // +0x1cf4 size: 0x1 (0x1 * 0x1) type 6
    gap_1cf5: [3]abi.undefined,
    m_launcherOwner: valve.EHANDLE, // +0x1cf8 size: 0x4 (0x1 * 0x4) type 13

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x1d00);
        try std.testing.expect(@offsetOf(@This(), "m_hasExploded") == 0x1ca0);
        try std.testing.expect(@offsetOf(@This(), "m_doesExplode") == 0x1ca1);
        try std.testing.expect(@offsetOf(@This(), "m_DmgRadius") == 0x1ca4);
        try std.testing.expect(@offsetOf(@This(), "m_flDetonateTime") == 0x1ca8);
        try std.testing.expect(@offsetOf(@This(), "m_igniteDuration") == 0x1cac);
        try std.testing.expect(@offsetOf(@This(), "m_hasGrenadeIgnited") == 0x1cb0);
        try std.testing.expect(@offsetOf(@This(), "m_grenadeCreationTime") == 0x1cb4);
        try std.testing.expect(@offsetOf(@This(), "m_grenadeCreationOrigin") == 0x1cb8);
        try std.testing.expect(@offsetOf(@This(), "m_collideWithOwner") == 0x1cc4);
        try std.testing.expect(@offsetOf(@This(), "m_magneticData") == 0x1cc8);
        try std.testing.expect(@offsetOf(@This(), "m_inSolid") == 0x1cd0);
        try std.testing.expect(@offsetOf(@This(), "m_alreadyImpacted") == 0x1cd1);
        try std.testing.expect(@offsetOf(@This(), "m_prevPos") == 0x1cd4);
        try std.testing.expect(@offsetOf(@This(), "m_collisionCallbackTrace") == 0x1ce0);
        try std.testing.expect(@offsetOf(@This(), "m_flDamage") == 0x1ce8);
        try std.testing.expect(@offsetOf(@This(), "m_hThrower") == 0x1cec);
        try std.testing.expect(@offsetOf(@This(), "m_hOriginalThrower") == 0x1cf0);
        try std.testing.expect(@offsetOf(@This(), "m_useScriptOnDamaged") == 0x1cf4);
        try std.testing.expect(@offsetOf(@This(), "m_launcherOwner") == 0x1cf8);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
