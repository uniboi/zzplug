pub const CEnvWindShared = extern struct {
    vtable: *anyopaque,
    m_flStartTime: f32, // +0x8 size: 0x4 (0x1 * 0x4) type 1
    m_iWindSeed: i32, // +0xc size: 0x4 (0x1 * 0x4) type 5
    m_iMinWind: i32, // +0x10 size: 0x4 (0x1 * 0x4) type 5
    m_iMaxWind: i32, // +0x14 size: 0x4 (0x1 * 0x4) type 5
    m_windRadius: i32, // +0x18 size: 0x4 (0x1 * 0x4) type 5
    m_iMinGust: i32, // +0x1c size: 0x4 (0x1 * 0x4) type 5
    m_iMaxGust: i32, // +0x20 size: 0x4 (0x1 * 0x4) type 5
    m_flMinGustDelay: f32, // +0x24 size: 0x4 (0x1 * 0x4) type 1
    m_flMaxGustDelay: f32, // +0x28 size: 0x4 (0x1 * 0x4) type 1
    m_flGustDuration: f32, // +0x2c size: 0x4 (0x1 * 0x4) type 1
    m_iGustDirChange: i32, // +0x30 size: 0x4 (0x1 * 0x4) type 5
    m_location: m.Vector3, // +0x34 size: 0xc (0x1 * 0xc) type 3
    m_iszGustSound: i32, // +0x40 size: 0x4 (0x1 * 0x4) type 5
    m_iWindDir: i32, // +0x44 size: 0x4 (0x1 * 0x4) type 5
    m_flWindSpeed: f32, // +0x48 size: 0x4 (0x1 * 0x4) type 1
    m_currentWindVector: m.Vector3, // +0x4c size: 0xc (0x1 * 0xc) type 3
    m_CurrentSwayVector: m.Vector3, // +0x58 size: 0xc (0x1 * 0xc) type 3
    m_PrevSwayVector: m.Vector3, // +0x64 size: 0xc (0x1 * 0xc) type 3
    m_iInitialWindDir: i32, // +0x70 size: 0x4 (0x1 * 0x4) type 5
    m_flInitialWindSpeed: f32, // +0x74 size: 0x4 (0x1 * 0x4) type 1
    m_OnGustStart: [40]abi.undefined, // +0x78 size: 0x28 (0x1 * 0x28) type 11
    m_OnGustEnd: [40]abi.undefined, // +0xa0 size: 0x28 (0x1 * 0x28) type 11
    m_flVariationTime: f32, // +0xc8 size: 0x4 (0x1 * 0x4) type 1
    m_flSimTime: f32, // +0xcc size: 0x4 (0x1 * 0x4) type 1
    m_flSwitchTime: f32, // +0xd0 size: 0x4 (0x1 * 0x4) type 1
    m_flAveWindSpeed: f32, // +0xd4 size: 0x4 (0x1 * 0x4) type 1
    m_bGusting: bool, // +0xd8 size: 0x1 (0x1 * 0x1) type 6
    gap_d9: [3]abi.undefined,
    m_flWindAngleVariation: f32, // +0xdc size: 0x4 (0x1 * 0x4) type 1
    m_flWindSpeedVariation: f32, // +0xe0 size: 0x4 (0x1 * 0x4) type 1
    m_iEntIndex: i32, // +0xe4 size: 0x4 (0x1 * 0x4) type 5
    m_Stream: [56]abi.undefined, // +0xe8 size: 0x38 (0x1 * 0x38) type 0
    m_WindVariationStream: [56]abi.undefined, // +0x120 size: 0x38 (0x1 * 0x38) type 0
    m_WindAveQueue: [56]abi.undefined, // +0x158 size: 0x38 (0x1 * 0x38) type 0
    m_WindVariationQueue: [56]abi.undefined, // +0x190 size: 0x38 (0x1 * 0x38) type 0

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x1c8);
        try std.testing.expect(@offsetOf(@This(), "m_flStartTime") == 0x8);
        try std.testing.expect(@offsetOf(@This(), "m_iWindSeed") == 0xc);
        try std.testing.expect(@offsetOf(@This(), "m_iMinWind") == 0x10);
        try std.testing.expect(@offsetOf(@This(), "m_iMaxWind") == 0x14);
        try std.testing.expect(@offsetOf(@This(), "m_windRadius") == 0x18);
        try std.testing.expect(@offsetOf(@This(), "m_iMinGust") == 0x1c);
        try std.testing.expect(@offsetOf(@This(), "m_iMaxGust") == 0x20);
        try std.testing.expect(@offsetOf(@This(), "m_flMinGustDelay") == 0x24);
        try std.testing.expect(@offsetOf(@This(), "m_flMaxGustDelay") == 0x28);
        try std.testing.expect(@offsetOf(@This(), "m_flGustDuration") == 0x2c);
        try std.testing.expect(@offsetOf(@This(), "m_iGustDirChange") == 0x30);
        try std.testing.expect(@offsetOf(@This(), "m_location") == 0x34);
        try std.testing.expect(@offsetOf(@This(), "m_iszGustSound") == 0x40);
        try std.testing.expect(@offsetOf(@This(), "m_iWindDir") == 0x44);
        try std.testing.expect(@offsetOf(@This(), "m_flWindSpeed") == 0x48);
        try std.testing.expect(@offsetOf(@This(), "m_currentWindVector") == 0x4c);
        try std.testing.expect(@offsetOf(@This(), "m_CurrentSwayVector") == 0x58);
        try std.testing.expect(@offsetOf(@This(), "m_PrevSwayVector") == 0x64);
        try std.testing.expect(@offsetOf(@This(), "m_iInitialWindDir") == 0x70);
        try std.testing.expect(@offsetOf(@This(), "m_flInitialWindSpeed") == 0x74);
        try std.testing.expect(@offsetOf(@This(), "m_OnGustStart") == 0x78);
        try std.testing.expect(@offsetOf(@This(), "m_OnGustEnd") == 0xa0);
        try std.testing.expect(@offsetOf(@This(), "m_flVariationTime") == 0xc8);
        try std.testing.expect(@offsetOf(@This(), "m_flSimTime") == 0xcc);
        try std.testing.expect(@offsetOf(@This(), "m_flSwitchTime") == 0xd0);
        try std.testing.expect(@offsetOf(@This(), "m_flAveWindSpeed") == 0xd4);
        try std.testing.expect(@offsetOf(@This(), "m_bGusting") == 0xd8);
        try std.testing.expect(@offsetOf(@This(), "m_flWindAngleVariation") == 0xdc);
        try std.testing.expect(@offsetOf(@This(), "m_flWindSpeedVariation") == 0xe0);
        try std.testing.expect(@offsetOf(@This(), "m_iEntIndex") == 0xe4);
        try std.testing.expect(@offsetOf(@This(), "m_Stream") == 0xe8);
        try std.testing.expect(@offsetOf(@This(), "m_WindVariationStream") == 0x120);
        try std.testing.expect(@offsetOf(@This(), "m_WindAveQueue") == 0x158);
        try std.testing.expect(@offsetOf(@This(), "m_WindVariationQueue") == 0x190);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
