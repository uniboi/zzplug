pub const CEnvSoundscape = extern struct {
    vtable: *anyopaque,
    CBaseEntity: abi.cpp.Inherit(server.CBaseEntity),

    m_OnPlay: [40]abi.undefined, // +0x9e0 size: 0x28 (0x1 * 0x28) type 11
    m_flRadius: f32, // +0xa08 size: 0x4 (0x1 * 0x4) type 1
    gap_a0c: [4]abi.undefined,
    m_soundscapeName: [*:0]u8, // +0xa10 size: 0x8 (0x1 * 0x8) type 2
    m_soundscapeIndex: i32, // +0xa18 size: 0x4 (0x1 * 0x4) type 5
    m_soundscapeEntityId: i32, // +0xa1c size: 0x4 (0x1 * 0x4) type 5
    m_positionNames_0_: [*:0]u8, // +0xa20 size: 0x8 (0x1 * 0x8) type 2
    m_positionNames_1_: [*:0]u8, // +0xa28 size: 0x8 (0x1 * 0x8) type 2
    m_positionNames_2_: [*:0]u8, // +0xa30 size: 0x8 (0x1 * 0x8) type 2
    m_positionNames_3_: [*:0]u8, // +0xa38 size: 0x8 (0x1 * 0x8) type 2
    m_positionNames_4_: [*:0]u8, // +0xa40 size: 0x8 (0x1 * 0x8) type 2
    m_positionNames_5_: [*:0]u8, // +0xa48 size: 0x8 (0x1 * 0x8) type 2
    m_positionNames_6_: [*:0]u8, // +0xa50 size: 0x8 (0x1 * 0x8) type 2
    m_positionNames_7_: [*:0]u8, // +0xa58 size: 0x8 (0x1 * 0x8) type 2
    m_hProxySoundscape: valve.EHANDLE, // +0xa60 size: 0x4 (0x1 * 0x4) type 13
    m_bRequireLOS: bool, // +0xa64 size: 0x1 (0x1 * 0x1) type 6
    m_bDisabled: bool, // +0xa65 size: 0x1 (0x1 * 0x1) type 6

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xa68);
        try std.testing.expect(@offsetOf(@This(), "m_OnPlay") == 0x9e0);
        try std.testing.expect(@offsetOf(@This(), "m_flRadius") == 0xa08);
        try std.testing.expect(@offsetOf(@This(), "m_soundscapeName") == 0xa10);
        try std.testing.expect(@offsetOf(@This(), "m_soundscapeIndex") == 0xa18);
        try std.testing.expect(@offsetOf(@This(), "m_soundscapeEntityId") == 0xa1c);
        try std.testing.expect(@offsetOf(@This(), "m_positionNames_0_") == 0xa20);
        try std.testing.expect(@offsetOf(@This(), "m_positionNames_1_") == 0xa28);
        try std.testing.expect(@offsetOf(@This(), "m_positionNames_2_") == 0xa30);
        try std.testing.expect(@offsetOf(@This(), "m_positionNames_3_") == 0xa38);
        try std.testing.expect(@offsetOf(@This(), "m_positionNames_4_") == 0xa40);
        try std.testing.expect(@offsetOf(@This(), "m_positionNames_5_") == 0xa48);
        try std.testing.expect(@offsetOf(@This(), "m_positionNames_6_") == 0xa50);
        try std.testing.expect(@offsetOf(@This(), "m_positionNames_7_") == 0xa58);
        try std.testing.expect(@offsetOf(@This(), "m_hProxySoundscape") == 0xa60);
        try std.testing.expect(@offsetOf(@This(), "m_bRequireLOS") == 0xa64);
        try std.testing.expect(@offsetOf(@This(), "m_bDisabled") == 0xa65);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
