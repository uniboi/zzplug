pub const CPhysicsSpring = extern struct {
    vtable: *anyopaque,
    CBaseEntity: abi.Inherit(server.CBaseEntity),

    m_pSpring: [8]abi.undefined, // +0x9e0 size: 0x8 (0x1 * 0x8) type 11
    m_isLocal: bool, // +0x9e8 size: 0x1 (0x1 * 0x1) type 6
    gap_9e9: [3]abi.undefined,
    m_tempConstant: f32, // +0x9ec size: 0x4 (0x1 * 0x4) type 1
    m_tempLength: f32, // +0x9f0 size: 0x4 (0x1 * 0x4) type 1
    m_tempDamping: f32, // +0x9f4 size: 0x4 (0x1 * 0x4) type 1
    m_tempRelativeDamping: f32, // +0x9f8 size: 0x4 (0x1 * 0x4) type 1
    gap_9fc: [4]abi.undefined,
    m_nameAttachStart: [*:0]u8, // +0xa00 size: 0x8 (0x1 * 0x8) type 2
    m_nameAttachEnd: [*:0]u8, // +0xa08 size: 0x8 (0x1 * 0x8) type 2
    m_start: m.Vector3, // +0xa10 size: 0xc (0x1 * 0xc) type 15
    m_end: m.Vector3, // +0xa1c size: 0xc (0x1 * 0xc) type 15
    m_teleportTick: i32, // +0xa28 size: 0x4 (0x1 * 0x4) type 5

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xa30);
        try std.testing.expect(@offsetOf(@This(), "m_pSpring") == 0x9e0);
        try std.testing.expect(@offsetOf(@This(), "m_isLocal") == 0x9e8);
        try std.testing.expect(@offsetOf(@This(), "m_tempConstant") == 0x9ec);
        try std.testing.expect(@offsetOf(@This(), "m_tempLength") == 0x9f0);
        try std.testing.expect(@offsetOf(@This(), "m_tempDamping") == 0x9f4);
        try std.testing.expect(@offsetOf(@This(), "m_tempRelativeDamping") == 0x9f8);
        try std.testing.expect(@offsetOf(@This(), "m_nameAttachStart") == 0xa00);
        try std.testing.expect(@offsetOf(@This(), "m_nameAttachEnd") == 0xa08);
        try std.testing.expect(@offsetOf(@This(), "m_start") == 0xa10);
        try std.testing.expect(@offsetOf(@This(), "m_end") == 0xa1c);
        try std.testing.expect(@offsetOf(@This(), "m_teleportTick") == 0xa28);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
