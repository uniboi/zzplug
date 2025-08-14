pub const CMissile = extern struct {
    vtable: *anyopaque,
    CProjectile: abi.Inherit(server.CProjectile),

    m_flAugerTime: valve.time, // +0x1ca0 size: 0x4 (0x1 * 0x4) type 16
    m_flMarkDeadTime: valve.time, // +0x1ca4 size: 0x4 (0x1 * 0x4) type 16
    m_flDamage: f32, // +0x1ca8 size: 0x4 (0x1 * 0x4) type 1
    m_fExplosionInnerRadius: f32, // +0x1cac size: 0x4 (0x1 * 0x4) type 1
    m_fExplosionOuterRadius: f32, // +0x1cb0 size: 0x4 (0x1 * 0x4) type 1
    m_lifetime: f32, // +0x1cb4 size: 0x4 (0x1 * 0x4) type 1
    m_fSpeed: f32, // +0x1cb8 size: 0x4 (0x1 * 0x4) type 1
    m_homingSpeed: f32, // +0x1cbc size: 0x4 (0x1 * 0x4) type 1
    m_homingSpeedDodgingPlayer: f32, // +0x1cc0 size: 0x4 (0x1 * 0x4) type 1
    m_launchDir: m.Vector3, // +0x1cc4 size: 0xc (0x1 * 0xc) type 3
    m_hSpecificTarget: valve.EHANDLE, // +0x1cd0 size: 0x4 (0x1 * 0x4) type 13
    m_targetOffset: m.Vector3, // +0x1cd4 size: 0xc (0x1 * 0xc) type 3
    m_targetPosition: m.Vector3, // +0x1ce0 size: 0xc (0x1 * 0xc) type 3
    m_useTargetPosition: bool, // +0x1cec size: 0x1 (0x1 * 0x1) type 6
    gap_1ced: [3]abi.undefined,
    m_postIgnitionSpeed: f32, // +0x1cf0 size: 0x4 (0x1 * 0x4) type 1
    m_flGracePeriodEndsAt: valve.time, // +0x1cf4 size: 0x4 (0x1 * 0x4) type 16
    m_pathSettingsInitialized: bool, // +0x1cf8 size: 0x1 (0x1 * 0x1) type 6
    m_expandContractMissile: bool, // +0x1cf9 size: 0x1 (0x1 * 0x1) type 6
    m_spiralMissile: bool, // +0x1cfa size: 0x1 (0x1 * 0x1) type 6
    gap_1cfb: [1]abi.undefined,
    m_spiralSettings: [36]abi.undefined, // +0x1cfc size: 0x24 (0x1 * 0x24) type 0
    m_expandContractSettings: server.MissilePathExpandContractSettings, // +0x1d20 size: 0x38 (0x1 * 0x38) type 10
    m_lastThinkTime: valve.time, // +0x1d58 size: 0x4 (0x1 * 0x4) type 16
    m_explosionIgnoreEntity: valve.EHANDLE, // +0x1d5c size: 0x4 (0x1 * 0x4) type 13

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x1d60);
        try std.testing.expect(@offsetOf(@This(), "m_flAugerTime") == 0x1ca0);
        try std.testing.expect(@offsetOf(@This(), "m_flMarkDeadTime") == 0x1ca4);
        try std.testing.expect(@offsetOf(@This(), "m_flDamage") == 0x1ca8);
        try std.testing.expect(@offsetOf(@This(), "m_fExplosionInnerRadius") == 0x1cac);
        try std.testing.expect(@offsetOf(@This(), "m_fExplosionOuterRadius") == 0x1cb0);
        try std.testing.expect(@offsetOf(@This(), "m_lifetime") == 0x1cb4);
        try std.testing.expect(@offsetOf(@This(), "m_fSpeed") == 0x1cb8);
        try std.testing.expect(@offsetOf(@This(), "m_homingSpeed") == 0x1cbc);
        try std.testing.expect(@offsetOf(@This(), "m_homingSpeedDodgingPlayer") == 0x1cc0);
        try std.testing.expect(@offsetOf(@This(), "m_launchDir") == 0x1cc4);
        try std.testing.expect(@offsetOf(@This(), "m_hSpecificTarget") == 0x1cd0);
        try std.testing.expect(@offsetOf(@This(), "m_targetOffset") == 0x1cd4);
        try std.testing.expect(@offsetOf(@This(), "m_targetPosition") == 0x1ce0);
        try std.testing.expect(@offsetOf(@This(), "m_useTargetPosition") == 0x1cec);
        try std.testing.expect(@offsetOf(@This(), "m_postIgnitionSpeed") == 0x1cf0);
        try std.testing.expect(@offsetOf(@This(), "m_flGracePeriodEndsAt") == 0x1cf4);
        try std.testing.expect(@offsetOf(@This(), "m_pathSettingsInitialized") == 0x1cf8);
        try std.testing.expect(@offsetOf(@This(), "m_expandContractMissile") == 0x1cf9);
        try std.testing.expect(@offsetOf(@This(), "m_spiralMissile") == 0x1cfa);
        try std.testing.expect(@offsetOf(@This(), "m_spiralSettings") == 0x1cfc);
        try std.testing.expect(@offsetOf(@This(), "m_expandContractSettings") == 0x1d20);
        try std.testing.expect(@offsetOf(@This(), "m_lastThinkTime") == 0x1d58);
        try std.testing.expect(@offsetOf(@This(), "m_explosionIgnoreEntity") == 0x1d5c);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
