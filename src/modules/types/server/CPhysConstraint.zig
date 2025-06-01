pub const CPhysConstraint = extern struct {
    vtable: *anyopaque,
    CBaseEntity: abi.Inherit(server.CBaseEntity),

    m_pConstraint: [8]abi.undefined, // +0x9e0 size: 0x8 (0x1 * 0x8) type 11
    m_nameAttach1: [*:0]u8, // +0x9e8 size: 0x8 (0x1 * 0x8) type 2
    m_nameAttach2: [*:0]u8, // +0x9f0 size: 0x8 (0x1 * 0x8) type 2
    m_breakSound: valve.SoundName, // +0x9f8 size: 0x8 (0x1 * 0x8) type 19
    m_nameSystem: [*:0]u8, // +0xa00 size: 0x8 (0x1 * 0x8) type 2
    m_forceLimit: f32, // +0xa08 size: 0x4 (0x1 * 0x4) type 1
    m_torqueLimit: f32, // +0xa0c size: 0x4 (0x1 * 0x4) type 1
    m_teleportTick: i32, // +0xa10 size: 0x4 (0x1 * 0x4) type 5
    m_minTeleportDistance: f32, // +0xa14 size: 0x4 (0x1 * 0x4) type 1
    m_OnBreak: [40]abi.undefined, // +0xa18 size: 0x28 (0x1 * 0x28) type 11

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xa40);
        try std.testing.expect(@offsetOf(@This(), "m_pConstraint") == 0x9e0);
        try std.testing.expect(@offsetOf(@This(), "m_nameAttach1") == 0x9e8);
        try std.testing.expect(@offsetOf(@This(), "m_nameAttach2") == 0x9f0);
        try std.testing.expect(@offsetOf(@This(), "m_breakSound") == 0x9f8);
        try std.testing.expect(@offsetOf(@This(), "m_nameSystem") == 0xa00);
        try std.testing.expect(@offsetOf(@This(), "m_forceLimit") == 0xa08);
        try std.testing.expect(@offsetOf(@This(), "m_torqueLimit") == 0xa0c);
        try std.testing.expect(@offsetOf(@This(), "m_teleportTick") == 0xa10);
        try std.testing.expect(@offsetOf(@This(), "m_minTeleportDistance") == 0xa14);
        try std.testing.expect(@offsetOf(@This(), "m_OnBreak") == 0xa18);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
