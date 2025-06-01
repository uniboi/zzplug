pub const CColorCorrection = extern struct {
    vtable: *anyopaque,
    CBaseEntity: abi.Inherit(server.CBaseEntity),

    m_flFadeInDuration: f32, // +0x9e0 size: 0x4 (0x1 * 0x4) type 1
    m_flFadeOutDuration: f32, // +0x9e4 size: 0x4 (0x1 * 0x4) type 1
    m_flStartFadeInWeight: f32, // +0x9e8 size: 0x4 (0x1 * 0x4) type 1
    m_flStartFadeOutWeight: f32, // +0x9ec size: 0x4 (0x1 * 0x4) type 1
    m_flTimeStartFadeIn: f32, // +0x9f0 size: 0x4 (0x1 * 0x4) type 1
    m_flTimeStartFadeOut: f32, // +0x9f4 size: 0x4 (0x1 * 0x4) type 1
    m_flMaxWeight: f32, // +0x9f8 size: 0x4 (0x1 * 0x4) type 1
    m_bStartDisabled: bool, // +0x9fc size: 0x1 (0x1 * 0x1) type 6
    m_bEnabled: bool, // +0x9fd size: 0x1 (0x1 * 0x1) type 6
    m_bMaster: bool, // +0x9fe size: 0x1 (0x1 * 0x1) type 6
    m_bClientSide: bool, // +0x9ff size: 0x1 (0x1 * 0x1) type 6
    m_bExclusive: bool, // +0xa00 size: 0x1 (0x1 * 0x1) type 6
    gap_a01: [3]abi.undefined,
    m_MinFalloff: f32, // +0xa04 size: 0x4 (0x1 * 0x4) type 1
    m_MaxFalloff: f32, // +0xa08 size: 0x4 (0x1 * 0x4) type 1
    m_flCurWeight: f32, // +0xa0c size: 0x4 (0x1 * 0x4) type 1
    m_netLookupFilename: [260]u8, // +0xa10 size: 0x104 (0x104 * 0x1) type 8
    gap_b14: [4]abi.undefined,
    m_lookupFilename: [*:0]u8, // +0xb18 size: 0x8 (0x1 * 0x8) type 2

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xb20);
        try std.testing.expect(@offsetOf(@This(), "m_flFadeInDuration") == 0x9e0);
        try std.testing.expect(@offsetOf(@This(), "m_flFadeOutDuration") == 0x9e4);
        try std.testing.expect(@offsetOf(@This(), "m_flStartFadeInWeight") == 0x9e8);
        try std.testing.expect(@offsetOf(@This(), "m_flStartFadeOutWeight") == 0x9ec);
        try std.testing.expect(@offsetOf(@This(), "m_flTimeStartFadeIn") == 0x9f0);
        try std.testing.expect(@offsetOf(@This(), "m_flTimeStartFadeOut") == 0x9f4);
        try std.testing.expect(@offsetOf(@This(), "m_flMaxWeight") == 0x9f8);
        try std.testing.expect(@offsetOf(@This(), "m_bStartDisabled") == 0x9fc);
        try std.testing.expect(@offsetOf(@This(), "m_bEnabled") == 0x9fd);
        try std.testing.expect(@offsetOf(@This(), "m_bMaster") == 0x9fe);
        try std.testing.expect(@offsetOf(@This(), "m_bClientSide") == 0x9ff);
        try std.testing.expect(@offsetOf(@This(), "m_bExclusive") == 0xa00);
        try std.testing.expect(@offsetOf(@This(), "m_MinFalloff") == 0xa04);
        try std.testing.expect(@offsetOf(@This(), "m_MaxFalloff") == 0xa08);
        try std.testing.expect(@offsetOf(@This(), "m_flCurWeight") == 0xa0c);
        try std.testing.expect(@offsetOf(@This(), "m_netLookupFilename") == 0xa10);
        try std.testing.expect(@offsetOf(@This(), "m_lookupFilename") == 0xb18);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
