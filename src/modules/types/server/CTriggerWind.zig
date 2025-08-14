pub const CTriggerWind = extern struct {
    vtable: *anyopaque,
    CBaseVPhysicsTrigger: abi.cpp.Inherit(server.CBaseVPhysicsTrigger),

    m_nSpeedBase: i32, // +0x9f0 size: 0x4 (0x1 * 0x4) type 5
    m_nSpeedNoise: i32, // +0x9f4 size: 0x4 (0x1 * 0x4) type 5
    m_nSpeedCurrent: i32, // +0x9f8 size: 0x4 (0x1 * 0x4) type 5
    m_nSpeedTarget: i32, // +0x9fc size: 0x4 (0x1 * 0x4) type 5
    m_nDirBase: i32, // +0xa00 size: 0x4 (0x1 * 0x4) type 5
    m_nDirNoise: i32, // +0xa04 size: 0x4 (0x1 * 0x4) type 5
    m_nDirCurrent: i32, // +0xa08 size: 0x4 (0x1 * 0x4) type 5
    m_nDirTarget: i32, // +0xa0c size: 0x4 (0x1 * 0x4) type 5
    m_nHoldBase: i32, // +0xa10 size: 0x4 (0x1 * 0x4) type 5
    m_nHoldNoise: i32, // +0xa14 size: 0x4 (0x1 * 0x4) type 5
    m_bSwitch: bool, // +0xa18 size: 0x1 (0x1 * 0x1) type 6
    gap_a19: [7]abi.undefined,
    m_pWindController: [8]abi.undefined, // +0xa20 size: 0x8 (0x1 * 0x8) type 11
    m_WindCallback: server.CPhysicsWind, // +0xa28 size: 0x10 (0x1 * 0x10) type 10

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xa38);
        try std.testing.expect(@offsetOf(@This(), "m_nSpeedBase") == 0x9f0);
        try std.testing.expect(@offsetOf(@This(), "m_nSpeedNoise") == 0x9f4);
        try std.testing.expect(@offsetOf(@This(), "m_nSpeedCurrent") == 0x9f8);
        try std.testing.expect(@offsetOf(@This(), "m_nSpeedTarget") == 0x9fc);
        try std.testing.expect(@offsetOf(@This(), "m_nDirBase") == 0xa00);
        try std.testing.expect(@offsetOf(@This(), "m_nDirNoise") == 0xa04);
        try std.testing.expect(@offsetOf(@This(), "m_nDirCurrent") == 0xa08);
        try std.testing.expect(@offsetOf(@This(), "m_nDirTarget") == 0xa0c);
        try std.testing.expect(@offsetOf(@This(), "m_nHoldBase") == 0xa10);
        try std.testing.expect(@offsetOf(@This(), "m_nHoldNoise") == 0xa14);
        try std.testing.expect(@offsetOf(@This(), "m_bSwitch") == 0xa18);
        try std.testing.expect(@offsetOf(@This(), "m_pWindController") == 0xa20);
        try std.testing.expect(@offsetOf(@This(), "m_WindCallback") == 0xa28);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
