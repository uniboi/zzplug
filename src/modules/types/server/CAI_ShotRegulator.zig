pub const CAI_ShotRegulator = extern struct {
    m_nBurstShotsRemaining: i32, // +0x0 size: 0x4 (0x1 * 0x4) type 5
    m_nMinBurstShots: i32, // +0x4 size: 0x4 (0x1 * 0x4) type 5
    m_nMaxBurstShots: i32, // +0x8 size: 0x4 (0x1 * 0x4) type 5
    m_flNextShotTime: valve.time, // +0xc size: 0x4 (0x1 * 0x4) type 16
    m_flFireRateDelay: f32, // +0x10 size: 0x4 (0x1 * 0x4) type 1
    m_flMinRestInterval: f32, // +0x14 size: 0x4 (0x1 * 0x4) type 1
    m_flMaxRestInterval: f32, // +0x18 size: 0x4 (0x1 * 0x4) type 1
    m_flLastPreFireDelayTime: valve.time, // +0x1c size: 0x4 (0x1 * 0x4) type 16
    m_bInRestInterval: bool, // +0x20 size: 0x1 (0x1 * 0x1) type 6
    m_bFirstShot: bool, // +0x21 size: 0x1 (0x1 * 0x1) type 6
    gap_22: [6]abi.undefined,
    m_ai: *anyopaque, // +0x28 size: 0x8 (0x1 * 0x8) type 31

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x30);
        try std.testing.expect(@offsetOf(@This(), "m_nBurstShotsRemaining") == 0x0);
        try std.testing.expect(@offsetOf(@This(), "m_nMinBurstShots") == 0x4);
        try std.testing.expect(@offsetOf(@This(), "m_nMaxBurstShots") == 0x8);
        try std.testing.expect(@offsetOf(@This(), "m_flNextShotTime") == 0xc);
        try std.testing.expect(@offsetOf(@This(), "m_flFireRateDelay") == 0x10);
        try std.testing.expect(@offsetOf(@This(), "m_flMinRestInterval") == 0x14);
        try std.testing.expect(@offsetOf(@This(), "m_flMaxRestInterval") == 0x18);
        try std.testing.expect(@offsetOf(@This(), "m_flLastPreFireDelayTime") == 0x1c);
        try std.testing.expect(@offsetOf(@This(), "m_bInRestInterval") == 0x20);
        try std.testing.expect(@offsetOf(@This(), "m_bFirstShot") == 0x21);
        try std.testing.expect(@offsetOf(@This(), "m_ai") == 0x28);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
