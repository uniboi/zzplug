pub const CMovieDisplay = extern struct {
    vtable: *anyopaque,
    CBaseEntity: abi.Inherit(server.CBaseEntity),

    m_bEnabled: bool, // +0x9e0 size: 0x1 (0x1 * 0x1) type 6
    m_bLooping: bool, // +0x9e1 size: 0x1 (0x1 * 0x1) type 6
    m_bStretchToFill: bool, // +0x9e2 size: 0x1 (0x1 * 0x1) type 6
    m_bForcedSlave: bool, // +0x9e3 size: 0x1 (0x1 * 0x1) type 6
    m_bForcePrecache: bool, // +0x9e4 size: 0x1 (0x1 * 0x1) type 6
    m_bUseCustomUVs: bool, // +0x9e5 size: 0x1 (0x1 * 0x1) type 6
    gap_9e6: [2]abi.undefined,
    m_flUMin: f32, // +0x9e8 size: 0x4 (0x1 * 0x4) type 1
    m_flUMax: f32, // +0x9ec size: 0x4 (0x1 * 0x4) type 1
    m_flVMin: f32, // +0x9f0 size: 0x4 (0x1 * 0x4) type 1
    m_flVMax: f32, // +0x9f4 size: 0x4 (0x1 * 0x4) type 1
    m_szDisplayText: [128]u8, // +0x9f8 size: 0x80 (0x80 * 0x1) type 8
    m_szMovieFilename: [128]u8, // +0xa78 size: 0x80 (0x80 * 0x1) type 8
    m_strMovieFilename: [*:0]u8, // +0xaf8 size: 0x8 (0x1 * 0x8) type 2
    m_szGroupName: [128]u8, // +0xb00 size: 0x80 (0x80 * 0x1) type 8
    m_strGroupName: [*:0]u8, // +0xb80 size: 0x8 (0x1 * 0x8) type 2
    m_iScreenWidth: i32, // +0xb88 size: 0x4 (0x1 * 0x4) type 5
    m_iScreenHeight: i32, // +0xb8c size: 0x4 (0x1 * 0x4) type 5
    m_bDoFullTransmit: bool, // +0xb90 size: 0x1 (0x1 * 0x1) type 6
    gap_b91: [3]abi.undefined,
    m_hScreen: valve.EHANDLE, // +0xb94 size: 0x4 (0x1 * 0x4) type 13

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xb98);
        try std.testing.expect(@offsetOf(@This(), "m_bEnabled") == 0x9e0);
        try std.testing.expect(@offsetOf(@This(), "m_bLooping") == 0x9e1);
        try std.testing.expect(@offsetOf(@This(), "m_bStretchToFill") == 0x9e2);
        try std.testing.expect(@offsetOf(@This(), "m_bForcedSlave") == 0x9e3);
        try std.testing.expect(@offsetOf(@This(), "m_bForcePrecache") == 0x9e4);
        try std.testing.expect(@offsetOf(@This(), "m_bUseCustomUVs") == 0x9e5);
        try std.testing.expect(@offsetOf(@This(), "m_flUMin") == 0x9e8);
        try std.testing.expect(@offsetOf(@This(), "m_flUMax") == 0x9ec);
        try std.testing.expect(@offsetOf(@This(), "m_flVMin") == 0x9f0);
        try std.testing.expect(@offsetOf(@This(), "m_flVMax") == 0x9f4);
        try std.testing.expect(@offsetOf(@This(), "m_szDisplayText") == 0x9f8);
        try std.testing.expect(@offsetOf(@This(), "m_szMovieFilename") == 0xa78);
        try std.testing.expect(@offsetOf(@This(), "m_strMovieFilename") == 0xaf8);
        try std.testing.expect(@offsetOf(@This(), "m_szGroupName") == 0xb00);
        try std.testing.expect(@offsetOf(@This(), "m_strGroupName") == 0xb80);
        try std.testing.expect(@offsetOf(@This(), "m_iScreenWidth") == 0xb88);
        try std.testing.expect(@offsetOf(@This(), "m_iScreenHeight") == 0xb8c);
        try std.testing.expect(@offsetOf(@This(), "m_bDoFullTransmit") == 0xb90);
        try std.testing.expect(@offsetOf(@This(), "m_hScreen") == 0xb94);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
