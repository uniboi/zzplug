pub const CPlayerResource = extern struct {
    vtable: *anyopaque,
    CBaseEntity: abi.cpp.Inherit(server.CBaseEntity),

    m_iPing: [33]i32, // +0x9e0 size: 0x84 (0x21 * 0x4) type 5
    m_iTeam: [33]i32, // +0xa64 size: 0x84 (0x21 * 0x4) type 5
    m_iPRHealth: [33]i32, // +0xae8 size: 0x84 (0x21 * 0x4) type 5
    m_bConnected: [33]i32, // +0xb6c size: 0x84 (0x21 * 0x4) type 5
    m_bAlive: [33]i32, // +0xbf0 size: 0x84 (0x21 * 0x4) type 5
    m_boolStats: [33]i32, // +0xc74 size: 0x84 (0x21 * 0x4) type 5
    m_killStats: [198]i32, // +0xcf8 size: 0x318 (0xc6 * 0x4) type 5
    m_scoreStats: [165]i32, // +0x1010 size: 0x294 (0xa5 * 0x4) type 5
    m_nUpdateCounter: i32, // +0x12a4 size: 0x4 (0x1 * 0x4) type 5

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x12a8);
        try std.testing.expect(@offsetOf(@This(), "m_iPing") == 0x9e0);
        try std.testing.expect(@offsetOf(@This(), "m_iTeam") == 0xa64);
        try std.testing.expect(@offsetOf(@This(), "m_iPRHealth") == 0xae8);
        try std.testing.expect(@offsetOf(@This(), "m_bConnected") == 0xb6c);
        try std.testing.expect(@offsetOf(@This(), "m_bAlive") == 0xbf0);
        try std.testing.expect(@offsetOf(@This(), "m_boolStats") == 0xc74);
        try std.testing.expect(@offsetOf(@This(), "m_killStats") == 0xcf8);
        try std.testing.expect(@offsetOf(@This(), "m_scoreStats") == 0x1010);
        try std.testing.expect(@offsetOf(@This(), "m_nUpdateCounter") == 0x12a4);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
