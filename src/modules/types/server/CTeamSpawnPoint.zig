pub const CTeamSpawnPoint = extern struct {
    vtable: *anyopaque,
    CBaseEntity: abi.cpp.Inherit(server.CBaseEntity),

    m_OnPlayerSpawn: [40]abi.undefined, // +0x9e0 size: 0x28 (0x1 * 0x28) type 11
    m_bStartOnlySpawn: bool, // +0xa08 size: 0x1 (0x1 * 0x1) type 6
    gap_a09: [3]abi.undefined,
    m_fRating: f32, // +0xa0c size: 0x4 (0x1 * 0x4) type 1
    m_iDisabled: i32, // +0xa10 size: 0x4 (0x1 * 0x4) type 5
    m_petTitanScore: f32, // +0xa14 size: 0x4 (0x1 * 0x4) type 1
    m_lastTeamUpdateTime: valve.time, // +0xa18 size: 0x4 (0x1 * 0x4) type 16
    m_lastRecentlySpawnedPlayerIndex: valve.time, // +0xa1c size: 0x4 (0x1 * 0x4) type 16
    m_teamData: [1488]abi.undefined, // +0xa20 size: 0x5d0 (0x1 * 0x5d0) type 0

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xff0);
        try std.testing.expect(@offsetOf(@This(), "m_OnPlayerSpawn") == 0x9e0);
        try std.testing.expect(@offsetOf(@This(), "m_bStartOnlySpawn") == 0xa08);
        try std.testing.expect(@offsetOf(@This(), "m_fRating") == 0xa0c);
        try std.testing.expect(@offsetOf(@This(), "m_iDisabled") == 0xa10);
        try std.testing.expect(@offsetOf(@This(), "m_petTitanScore") == 0xa14);
        try std.testing.expect(@offsetOf(@This(), "m_lastTeamUpdateTime") == 0xa18);
        try std.testing.expect(@offsetOf(@This(), "m_lastRecentlySpawnedPlayerIndex") == 0xa1c);
        try std.testing.expect(@offsetOf(@This(), "m_teamData") == 0xa20);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
