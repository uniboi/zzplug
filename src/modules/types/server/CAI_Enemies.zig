pub const CAI_Enemies = extern struct {
    vtable: *anyopaque,
    CAI_Component: abi.Inherit(server.CAI_Component),

    m_playerEnemyClass: i32, // +0x10 size: 0x4 (0x1 * 0x4) type 5
    gap_14: [4]abi.undefined,
    m_Map: [48]abi.undefined, // +0x18 size: 0x30 (0x1 * 0x30) type 11
    m_flFreeKnowledgeDuration: f32, // +0x48 size: 0x4 (0x1 * 0x4) type 1
    m_flEnemyDiscardTime: f32, // +0x4c size: 0x4 (0x1 * 0x4) type 1
    m_vecDefaultLKP: m.Vector3, // +0x50 size: 0xc (0x1 * 0xc) type 15
    m_vecDefaultLSP: m.Vector3, // +0x5c size: 0xc (0x1 * 0xc) type 15
    m_serial: i32, // +0x68 size: 0x4 (0x1 * 0x4) type 5

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x70);
        try std.testing.expect(@offsetOf(@This(), "m_playerEnemyClass") == 0x10);
        try std.testing.expect(@offsetOf(@This(), "m_Map") == 0x18);
        try std.testing.expect(@offsetOf(@This(), "m_flFreeKnowledgeDuration") == 0x48);
        try std.testing.expect(@offsetOf(@This(), "m_flEnemyDiscardTime") == 0x4c);
        try std.testing.expect(@offsetOf(@This(), "m_vecDefaultLKP") == 0x50);
        try std.testing.expect(@offsetOf(@This(), "m_vecDefaultLSP") == 0x5c);
        try std.testing.expect(@offsetOf(@This(), "m_serial") == 0x68);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
