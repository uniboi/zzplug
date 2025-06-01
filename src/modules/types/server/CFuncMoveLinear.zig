pub const CFuncMoveLinear = extern struct {
    vtable: *anyopaque,
    CBaseToggle: abi.Inherit(server.CBaseToggle),

    m_vecMoveDir: m.Vector3, // +0xa60 size: 0xc (0x1 * 0xc) type 3
    gap_a6c: [4]abi.undefined,
    m_soundStart: valve.SoundName, // +0xa70 size: 0x8 (0x1 * 0x8) type 19
    m_soundStop: valve.SoundName, // +0xa78 size: 0x8 (0x1 * 0x8) type 19
    m_currentSound: valve.SoundName, // +0xa80 size: 0x8 (0x1 * 0x8) type 19
    m_flBlockDamage: f32, // +0xa88 size: 0x4 (0x1 * 0x4) type 1
    m_flStartPosition: f32, // +0xa8c size: 0x4 (0x1 * 0x4) type 1
    m_flMoveDistance: f32, // +0xa90 size: 0x4 (0x1 * 0x4) type 1
    gap_a94: [4]abi.undefined,
    m_pFluidController: [8]abi.undefined, // +0xa98 size: 0x8 (0x1 * 0x8) type 11
    m_OnFullyOpen: [40]abi.undefined, // +0xaa0 size: 0x28 (0x1 * 0x28) type 11
    m_OnFullyClosed: [40]abi.undefined, // +0xac8 size: 0x28 (0x1 * 0x28) type 11

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xaf0);
        try std.testing.expect(@offsetOf(@This(), "m_vecMoveDir") == 0xa60);
        try std.testing.expect(@offsetOf(@This(), "m_soundStart") == 0xa70);
        try std.testing.expect(@offsetOf(@This(), "m_soundStop") == 0xa78);
        try std.testing.expect(@offsetOf(@This(), "m_currentSound") == 0xa80);
        try std.testing.expect(@offsetOf(@This(), "m_flBlockDamage") == 0xa88);
        try std.testing.expect(@offsetOf(@This(), "m_flStartPosition") == 0xa8c);
        try std.testing.expect(@offsetOf(@This(), "m_flMoveDistance") == 0xa90);
        try std.testing.expect(@offsetOf(@This(), "m_pFluidController") == 0xa98);
        try std.testing.expect(@offsetOf(@This(), "m_OnFullyOpen") == 0xaa0);
        try std.testing.expect(@offsetOf(@This(), "m_OnFullyClosed") == 0xac8);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
