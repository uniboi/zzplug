pub const PlayerZiplineData = extern struct {
    vtable: *anyopaque,
    m_ziplineReenableWeapons: bool, // +0x8 size: 0x1 (0x1 * 0x1) type 6
    gap_9: [3]abi.undefined,
    m_mountingZiplineDuration: f32, // +0xc size: 0x4 (0x1 * 0x4) type 1
    m_mountingZiplineAlpha: f32, // +0x10 size: 0x4 (0x1 * 0x4) type 1
    m_ziplineStartTime: valve.time, // +0x14 size: 0x4 (0x1 * 0x4) type 16
    m_ziplineEndTime: valve.time, // +0x18 size: 0x4 (0x1 * 0x4) type 16
    m_mountingZiplineSourcePosition: m.Vector3, // +0x1c size: 0xc (0x1 * 0xc) type 3
    m_mountingZiplineSourceVelocity: m.Vector3, // +0x28 size: 0xc (0x1 * 0xc) type 3
    m_mountingZiplineTargetPosition: m.Vector3, // +0x34 size: 0xc (0x1 * 0xc) type 3
    m_ziplineUsePosition: m.Vector3, // +0x40 size: 0xc (0x1 * 0xc) type 3

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x50);
        try std.testing.expect(@offsetOf(@This(), "m_ziplineReenableWeapons") == 0x8);
        try std.testing.expect(@offsetOf(@This(), "m_mountingZiplineDuration") == 0xc);
        try std.testing.expect(@offsetOf(@This(), "m_mountingZiplineAlpha") == 0x10);
        try std.testing.expect(@offsetOf(@This(), "m_ziplineStartTime") == 0x14);
        try std.testing.expect(@offsetOf(@This(), "m_ziplineEndTime") == 0x18);
        try std.testing.expect(@offsetOf(@This(), "m_mountingZiplineSourcePosition") == 0x1c);
        try std.testing.expect(@offsetOf(@This(), "m_mountingZiplineSourceVelocity") == 0x28);
        try std.testing.expect(@offsetOf(@This(), "m_mountingZiplineTargetPosition") == 0x34);
        try std.testing.expect(@offsetOf(@This(), "m_ziplineUsePosition") == 0x40);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
