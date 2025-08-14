pub const CPointTemplate = extern struct {
    vtable: *anyopaque,
    CBaseEntity: abi.Inherit(server.CBaseEntity),

    m_iszTemplateEntityNames_0_: [*:0]u8, // +0x9e0 size: 0x8 (0x1 * 0x8) type 2
    m_iszTemplateEntityNames_1_: [*:0]u8, // +0x9e8 size: 0x8 (0x1 * 0x8) type 2
    m_iszTemplateEntityNames_2_: [*:0]u8, // +0x9f0 size: 0x8 (0x1 * 0x8) type 2
    m_iszTemplateEntityNames_3_: [*:0]u8, // +0x9f8 size: 0x8 (0x1 * 0x8) type 2
    m_iszTemplateEntityNames_4_: [*:0]u8, // +0xa00 size: 0x8 (0x1 * 0x8) type 2
    m_iszTemplateEntityNames_5_: [*:0]u8, // +0xa08 size: 0x8 (0x1 * 0x8) type 2
    m_iszTemplateEntityNames_6_: [*:0]u8, // +0xa10 size: 0x8 (0x1 * 0x8) type 2
    m_iszTemplateEntityNames_7_: [*:0]u8, // +0xa18 size: 0x8 (0x1 * 0x8) type 2
    m_iszTemplateEntityNames_8_: [*:0]u8, // +0xa20 size: 0x8 (0x1 * 0x8) type 2
    m_iszTemplateEntityNames_9_: [*:0]u8, // +0xa28 size: 0x8 (0x1 * 0x8) type 2
    m_iszTemplateEntityNames_10_: [*:0]u8, // +0xa30 size: 0x8 (0x1 * 0x8) type 2
    m_iszTemplateEntityNames_11_: [*:0]u8, // +0xa38 size: 0x8 (0x1 * 0x8) type 2
    m_iszTemplateEntityNames_12_: [*:0]u8, // +0xa40 size: 0x8 (0x1 * 0x8) type 2
    m_iszTemplateEntityNames_13_: [*:0]u8, // +0xa48 size: 0x8 (0x1 * 0x8) type 2
    m_iszTemplateEntityNames_14_: [*:0]u8, // +0xa50 size: 0x8 (0x1 * 0x8) type 2
    m_iszTemplateEntityNames_15_: [*:0]u8, // +0xa58 size: 0x8 (0x1 * 0x8) type 2
    m_hTemplateEntities: [32]abi.undefined, // +0xa60 size: 0x20 (0x1 * 0x20) type 11
    m_hTemplates: [32]abi.undefined, // +0xa80 size: 0x20 (0x1 * 0x20) type 11
    m_pOutputOnSpawned: [40]abi.undefined, // +0xaa0 size: 0x28 (0x1 * 0x28) type 11

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xac8);
        try std.testing.expect(@offsetOf(@This(), "m_iszTemplateEntityNames_0_") == 0x9e0);
        try std.testing.expect(@offsetOf(@This(), "m_iszTemplateEntityNames_1_") == 0x9e8);
        try std.testing.expect(@offsetOf(@This(), "m_iszTemplateEntityNames_2_") == 0x9f0);
        try std.testing.expect(@offsetOf(@This(), "m_iszTemplateEntityNames_3_") == 0x9f8);
        try std.testing.expect(@offsetOf(@This(), "m_iszTemplateEntityNames_4_") == 0xa00);
        try std.testing.expect(@offsetOf(@This(), "m_iszTemplateEntityNames_5_") == 0xa08);
        try std.testing.expect(@offsetOf(@This(), "m_iszTemplateEntityNames_6_") == 0xa10);
        try std.testing.expect(@offsetOf(@This(), "m_iszTemplateEntityNames_7_") == 0xa18);
        try std.testing.expect(@offsetOf(@This(), "m_iszTemplateEntityNames_8_") == 0xa20);
        try std.testing.expect(@offsetOf(@This(), "m_iszTemplateEntityNames_9_") == 0xa28);
        try std.testing.expect(@offsetOf(@This(), "m_iszTemplateEntityNames_10_") == 0xa30);
        try std.testing.expect(@offsetOf(@This(), "m_iszTemplateEntityNames_11_") == 0xa38);
        try std.testing.expect(@offsetOf(@This(), "m_iszTemplateEntityNames_12_") == 0xa40);
        try std.testing.expect(@offsetOf(@This(), "m_iszTemplateEntityNames_13_") == 0xa48);
        try std.testing.expect(@offsetOf(@This(), "m_iszTemplateEntityNames_14_") == 0xa50);
        try std.testing.expect(@offsetOf(@This(), "m_iszTemplateEntityNames_15_") == 0xa58);
        try std.testing.expect(@offsetOf(@This(), "m_hTemplateEntities") == 0xa60);
        try std.testing.expect(@offsetOf(@This(), "m_hTemplates") == 0xa80);
        try std.testing.expect(@offsetOf(@This(), "m_pOutputOnSpawned") == 0xaa0);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
