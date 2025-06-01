pub const CTurret = extern struct {
    vtable: *anyopaque,
    CBaseCombatCharacter: abi.Inherit(server.CBaseCombatCharacter),

    m_settings: [*:0]u8, // +0x1498 size: 0x8 (0x1 * 0x8) type 2
    m_settingsIndex: i32, // +0x14a0 size: 0x4 (0x1 * 0x4) type 5
    m_driverAttachmentIndex: i32, // +0x14a4 size: 0x4 (0x1 * 0x4) type 5
    m_weaponAttachmentIndex: i32, // +0x14a8 size: 0x4 (0x1 * 0x4) type 5
    m_yawPoseParameterIndex: i32, // +0x14ac size: 0x4 (0x1 * 0x4) type 5
    m_pitchPoseParameterIndex: i32, // +0x14b0 size: 0x4 (0x1 * 0x4) type 5
    m_origPlayerMoveType: i32, // +0x14b4 size: 0x4 (0x1 * 0x4) type 5
    m_driver: valve.EHANDLE, // +0x14b8 size: 0x4 (0x1 * 0x4) type 13
    m_aimAngle: m.Vector3, // +0x14bc size: 0xc (0x1 * 0xc) type 3
    m_forceAimPitch: f32, // +0x14c8 size: 0x4 (0x1 * 0x4) type 1
    m_forceAimYaw: f32, // +0x14cc size: 0x4 (0x1 * 0x4) type 1
    m_driverTimeStart: valve.time, // +0x14d0 size: 0x4 (0x1 * 0x4) type 16
    m_title: [32]u8, // +0x14d4 size: 0x20 (0x20 * 0x1) type 8

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x14f8);
        try std.testing.expect(@offsetOf(@This(), "m_settings") == 0x1498);
        try std.testing.expect(@offsetOf(@This(), "m_settingsIndex") == 0x14a0);
        try std.testing.expect(@offsetOf(@This(), "m_driverAttachmentIndex") == 0x14a4);
        try std.testing.expect(@offsetOf(@This(), "m_weaponAttachmentIndex") == 0x14a8);
        try std.testing.expect(@offsetOf(@This(), "m_yawPoseParameterIndex") == 0x14ac);
        try std.testing.expect(@offsetOf(@This(), "m_pitchPoseParameterIndex") == 0x14b0);
        try std.testing.expect(@offsetOf(@This(), "m_origPlayerMoveType") == 0x14b4);
        try std.testing.expect(@offsetOf(@This(), "m_driver") == 0x14b8);
        try std.testing.expect(@offsetOf(@This(), "m_aimAngle") == 0x14bc);
        try std.testing.expect(@offsetOf(@This(), "m_forceAimPitch") == 0x14c8);
        try std.testing.expect(@offsetOf(@This(), "m_forceAimYaw") == 0x14cc);
        try std.testing.expect(@offsetOf(@This(), "m_driverTimeStart") == 0x14d0);
        try std.testing.expect(@offsetOf(@This(), "m_title") == 0x14d4);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");