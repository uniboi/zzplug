pub const CTriggerViewProxy = extern struct {
    vtable: *anyopaque,
    CBaseEntity: abi.Inherit(server.CBaseEntity),

    m_hPlayer: valve.EHANDLE, // +0x9e0 size: 0x4 (0x1 * 0x4) type 13
    gap_9e4: [4]abi.undefined,
    m_pProxy: *server.CBaseEntity, // +0x9e8 size: 0x8 (0x1 * 0x8) type 12
    m_sProxy: [*:0]u8, // +0x9f0 size: 0x8 (0x1 * 0x8) type 2
    m_sProxyAttachment: [*:0]u8, // +0x9f8 size: 0x8 (0x1 * 0x8) type 2
    m_nParentAttachment: i32, // +0xa00 size: 0x4 (0x1 * 0x4) type 5
    m_state: i32, // +0xa04 size: 0x4 (0x1 * 0x4) type 5
    m_nOffsetType: i32, // +0xa08 size: 0x4 (0x1 * 0x4) type 5
    m_vecInitialPosition: m.Vector3, // +0xa0c size: 0xc (0x1 * 0xc) type 3
    m_vecLastPosition: m.Vector3, // +0xa18 size: 0xc (0x1 * 0xc) type 3
    m_vecLastVelocity: m.Vector3, // +0xa24 size: 0xc (0x1 * 0xc) type 3
    m_vecInitialOffset: m.Vector3, // +0xa30 size: 0xc (0x1 * 0xc) type 3
    m_flTiltFraction: f32, // +0xa3c size: 0x4 (0x1 * 0x4) type 1
    m_flStartTime: f32, // +0xa40 size: 0x4 (0x1 * 0x4) type 1
    m_bUseFakeAcceleration: bool, // +0xa44 size: 0x1 (0x1 * 0x1) type 6
    m_bSkewAccelerationForward: bool, // +0xa45 size: 0x1 (0x1 * 0x1) type 6
    gap_a46: [2]abi.undefined,
    m_flAccelerationScalar: f32, // +0xa48 size: 0x4 (0x1 * 0x4) type 1
    m_bEaseAnglesToCamera: bool, // +0xa4c size: 0x1 (0x1 * 0x1) type 6
    gap_a4d: [3]abi.undefined,
    m_nPlayerButtons: i32, // +0xa50 size: 0x4 (0x1 * 0x4) type 5
    m_oldTakeDamage: u8, // +0xa54 size: 0x1 (0x1 * 0x1) type 8
    m_oldLifeState: u8, // +0xa55 size: 0x1 (0x1 * 0x1) type 8

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xa58);
        try std.testing.expect(@offsetOf(@This(), "m_hPlayer") == 0x9e0);
        try std.testing.expect(@offsetOf(@This(), "m_pProxy") == 0x9e8);
        try std.testing.expect(@offsetOf(@This(), "m_sProxy") == 0x9f0);
        try std.testing.expect(@offsetOf(@This(), "m_sProxyAttachment") == 0x9f8);
        try std.testing.expect(@offsetOf(@This(), "m_nParentAttachment") == 0xa00);
        try std.testing.expect(@offsetOf(@This(), "m_state") == 0xa04);
        try std.testing.expect(@offsetOf(@This(), "m_nOffsetType") == 0xa08);
        try std.testing.expect(@offsetOf(@This(), "m_vecInitialPosition") == 0xa0c);
        try std.testing.expect(@offsetOf(@This(), "m_vecLastPosition") == 0xa18);
        try std.testing.expect(@offsetOf(@This(), "m_vecLastVelocity") == 0xa24);
        try std.testing.expect(@offsetOf(@This(), "m_vecInitialOffset") == 0xa30);
        try std.testing.expect(@offsetOf(@This(), "m_flTiltFraction") == 0xa3c);
        try std.testing.expect(@offsetOf(@This(), "m_flStartTime") == 0xa40);
        try std.testing.expect(@offsetOf(@This(), "m_bUseFakeAcceleration") == 0xa44);
        try std.testing.expect(@offsetOf(@This(), "m_bSkewAccelerationForward") == 0xa45);
        try std.testing.expect(@offsetOf(@This(), "m_flAccelerationScalar") == 0xa48);
        try std.testing.expect(@offsetOf(@This(), "m_bEaseAnglesToCamera") == 0xa4c);
        try std.testing.expect(@offsetOf(@This(), "m_nPlayerButtons") == 0xa50);
        try std.testing.expect(@offsetOf(@This(), "m_oldTakeDamage") == 0xa54);
        try std.testing.expect(@offsetOf(@This(), "m_oldLifeState") == 0xa55);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
