pub const CEnvLaser = extern struct {
    vtable: *anyopaque,
    CBeam: abi.cpp.Inherit(server.CBeam),

    m_iszLaserTarget: [*:0]u8, // +0xa88 size: 0x8 (0x1 * 0x8) type 2
    m_pSprite: *server.CBaseEntity, // +0xa90 size: 0x8 (0x1 * 0x8) type 12
    m_iszSpriteName: [*:0]u8, // +0xa98 size: 0x8 (0x1 * 0x8) type 2
    m_firePosition: m.Vector3, // +0xaa0 size: 0xc (0x1 * 0xc) type 3
    m_flStartFrame: f32, // +0xaac size: 0x4 (0x1 * 0x4) type 1
    m_OnTouchedByEntity: [40]abi.undefined, // +0xab0 size: 0x28 (0x1 * 0x28) type 11

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xad8);
        try std.testing.expect(@offsetOf(@This(), "m_iszLaserTarget") == 0xa88);
        try std.testing.expect(@offsetOf(@This(), "m_pSprite") == 0xa90);
        try std.testing.expect(@offsetOf(@This(), "m_iszSpriteName") == 0xa98);
        try std.testing.expect(@offsetOf(@This(), "m_firePosition") == 0xaa0);
        try std.testing.expect(@offsetOf(@This(), "m_flStartFrame") == 0xaac);
        try std.testing.expect(@offsetOf(@This(), "m_OnTouchedByEntity") == 0xab0);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
