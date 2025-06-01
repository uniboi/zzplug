pub const CLogicAuto = extern struct {
    vtable: *anyopaque,
    CBaseEntity: abi.Inherit(server.CBaseEntity),

    m_OnMapSpawn: [40]abi.undefined, // +0x9e0 size: 0x28 (0x1 * 0x28) type 11
    m_OnNewGame: [40]abi.undefined, // +0xa08 size: 0x28 (0x1 * 0x28) type 11
    m_OnLoadGame: [40]abi.undefined, // +0xa30 size: 0x28 (0x1 * 0x28) type 11
    m_OnBackgroundMap: [40]abi.undefined, // +0xa58 size: 0x28 (0x1 * 0x28) type 11
    m_OnMultiNewMap: [40]abi.undefined, // +0xa80 size: 0x28 (0x1 * 0x28) type 11
    m_OnMultiNewRound: [40]abi.undefined, // +0xaa8 size: 0x28 (0x1 * 0x28) type 11
    m_globalstate: [*:0]u8, // +0xad0 size: 0x8 (0x1 * 0x8) type 2

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xad8);
        try std.testing.expect(@offsetOf(@This(), "m_OnMapSpawn") == 0x9e0);
        try std.testing.expect(@offsetOf(@This(), "m_OnNewGame") == 0xa08);
        try std.testing.expect(@offsetOf(@This(), "m_OnLoadGame") == 0xa30);
        try std.testing.expect(@offsetOf(@This(), "m_OnBackgroundMap") == 0xa58);
        try std.testing.expect(@offsetOf(@This(), "m_OnMultiNewMap") == 0xa80);
        try std.testing.expect(@offsetOf(@This(), "m_OnMultiNewRound") == 0xaa8);
        try std.testing.expect(@offsetOf(@This(), "m_globalstate") == 0xad0);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
