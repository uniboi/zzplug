pub const CTeam = extern struct {
    vtable: *anyopaque,
    CBaseEntity: abi.Inherit(server.CBaseEntity),

    m_aSpawnPoints: [32]abi.undefined, // +0x9e0 size: 0x20 (0x1 * 0x20) type 11
    m_aPlayers: [32]abi.undefined, // +0xa00 size: 0x20 (0x1 * 0x20) type 11
    m_matchmakingParamsAsInt: [5]i32, // +0xa20 size: 0x14 (0x5 * 0x4) type 5
    m_szTeamname: [256]u8, // +0xa34 size: 0x100 (0x100 * 0x1) type 8
    m_score: i32, // +0xb34 size: 0x4 (0x1 * 0x4) type 5
    m_score2: i32, // +0xb38 size: 0x4 (0x1 * 0x4) type 5
    m_kills: i32, // +0xb3c size: 0x4 (0x1 * 0x4) type 5
    m_deaths: i32, // +0xb40 size: 0x4 (0x1 * 0x4) type 5
    m_iRoundsWon: i32, // +0xb44 size: 0x4 (0x1 * 0x4) type 5
    m_reservedPlayerCount: i32, // +0xb48 size: 0x4 (0x1 * 0x4) type 5
    m_connectingPlayerCount: i32, // +0xb4c size: 0x4 (0x1 * 0x4) type 5
    m_loadingPlayerCount: i32, // +0xb50 size: 0x4 (0x1 * 0x4) type 5
    m_iDeaths: i32, // +0xb54 size: 0x4 (0x1 * 0x4) type 5
    m_mu: f32, // +0xb58 size: 0x4 (0x1 * 0x4) type 1
    m_iLastSpawn: i32, // +0xb5c size: 0x4 (0x1 * 0x4) type 5
    m_playersAdded: i32, // +0xb60 size: 0x4 (0x1 * 0x4) type 5
    m_playersRemoved: i32, // +0xb64 size: 0x4 (0x1 * 0x4) type 5
    m_statPlayerCounts: [50]i64, // +0xb68 size: 0x190 (0x32 * 0x8) type 29
    m_statSnapshotCount: i64, // +0xcf8 size: 0x8 (0x1 * 0x8) type 29
    m_iTeamTeamNum: i32, // +0xd00 size: 0x4 (0x1 * 0x4) type 5

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xd08);
        try std.testing.expect(@offsetOf(@This(), "m_aSpawnPoints") == 0x9e0);
        try std.testing.expect(@offsetOf(@This(), "m_aPlayers") == 0xa00);
        try std.testing.expect(@offsetOf(@This(), "m_matchmakingParamsAsInt") == 0xa20);
        try std.testing.expect(@offsetOf(@This(), "m_szTeamname") == 0xa34);
        try std.testing.expect(@offsetOf(@This(), "m_score") == 0xb34);
        try std.testing.expect(@offsetOf(@This(), "m_score2") == 0xb38);
        try std.testing.expect(@offsetOf(@This(), "m_kills") == 0xb3c);
        try std.testing.expect(@offsetOf(@This(), "m_deaths") == 0xb40);
        try std.testing.expect(@offsetOf(@This(), "m_iRoundsWon") == 0xb44);
        try std.testing.expect(@offsetOf(@This(), "m_reservedPlayerCount") == 0xb48);
        try std.testing.expect(@offsetOf(@This(), "m_connectingPlayerCount") == 0xb4c);
        try std.testing.expect(@offsetOf(@This(), "m_loadingPlayerCount") == 0xb50);
        try std.testing.expect(@offsetOf(@This(), "m_iDeaths") == 0xb54);
        try std.testing.expect(@offsetOf(@This(), "m_mu") == 0xb58);
        try std.testing.expect(@offsetOf(@This(), "m_iLastSpawn") == 0xb5c);
        try std.testing.expect(@offsetOf(@This(), "m_playersAdded") == 0xb60);
        try std.testing.expect(@offsetOf(@This(), "m_playersRemoved") == 0xb64);
        try std.testing.expect(@offsetOf(@This(), "m_statPlayerCounts") == 0xb68);
        try std.testing.expect(@offsetOf(@This(), "m_statSnapshotCount") == 0xcf8);
        try std.testing.expect(@offsetOf(@This(), "m_iTeamTeamNum") == 0xd00);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
