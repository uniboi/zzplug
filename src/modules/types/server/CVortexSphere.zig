pub const CVortexSphere = extern struct {
    vtable: *anyopaque,
    CBaseEntity: abi.Inherit(server.CBaseEntity),

    m_enabled: bool, // +0x9e0 size: 0x1 (0x1 * 0x1) type 6
    gap_9e1: [3]abi.undefined,
    m_radius: f32, // +0x9e4 size: 0x4 (0x1 * 0x4) type 1
    m_height: f32, // +0x9e8 size: 0x4 (0x1 * 0x4) type 1
    m_bulletFov: f32, // +0x9ec size: 0x4 (0x1 * 0x4) type 1
    m_bulletAbsorbedCount: i32, // +0x9f0 size: 0x4 (0x1 * 0x4) type 5
    m_projectileAbsorbedCount: i32, // +0x9f4 size: 0x4 (0x1 * 0x4) type 5
    m_ownerWeapon: valve.EHANDLE, // +0x9f8 size: 0x4 (0x1 * 0x4) type 13
    m_vortexEffect: valve.EHANDLE, // +0x9fc size: 0x4 (0x1 * 0x4) type 13
    m_vortexGunAngles: m.Vector3, // +0xa00 size: 0xc (0x1 * 0xc) type 3
    gap_a0c: [4]abi.undefined,
    m_gunAttachment: [*:0]u8, // +0xa10 size: 0x8 (0x1 * 0x8) type 2
    m_listPrev: *anyopaque, // +0xa18 size: 0x8 (0x1 * 0x8) type 31
    m_listNext: *anyopaque, // +0xa20 size: 0x8 (0x1 * 0x8) type 31
    m_startTime: f32, // +0xa28 size: 0x4 (0x1 * 0x4) type 1
    m_prevRadius: f32, // +0xa2c size: 0x4 (0x1 * 0x4) type 1
    m_prevHeight: f32, // +0xa30 size: 0x4 (0x1 * 0x4) type 1

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xa38);
        try std.testing.expect(@offsetOf(@This(), "m_enabled") == 0x9e0);
        try std.testing.expect(@offsetOf(@This(), "m_radius") == 0x9e4);
        try std.testing.expect(@offsetOf(@This(), "m_height") == 0x9e8);
        try std.testing.expect(@offsetOf(@This(), "m_bulletFov") == 0x9ec);
        try std.testing.expect(@offsetOf(@This(), "m_bulletAbsorbedCount") == 0x9f0);
        try std.testing.expect(@offsetOf(@This(), "m_projectileAbsorbedCount") == 0x9f4);
        try std.testing.expect(@offsetOf(@This(), "m_ownerWeapon") == 0x9f8);
        try std.testing.expect(@offsetOf(@This(), "m_vortexEffect") == 0x9fc);
        try std.testing.expect(@offsetOf(@This(), "m_vortexGunAngles") == 0xa00);
        try std.testing.expect(@offsetOf(@This(), "m_gunAttachment") == 0xa10);
        try std.testing.expect(@offsetOf(@This(), "m_listPrev") == 0xa18);
        try std.testing.expect(@offsetOf(@This(), "m_listNext") == 0xa20);
        try std.testing.expect(@offsetOf(@This(), "m_startTime") == 0xa28);
        try std.testing.expect(@offsetOf(@This(), "m_prevRadius") == 0xa2c);
        try std.testing.expect(@offsetOf(@This(), "m_prevHeight") == 0xa30);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
