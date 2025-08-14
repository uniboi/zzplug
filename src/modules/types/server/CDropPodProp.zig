pub const CDropPodProp = extern struct {
    vtable: *anyopaque,
    CDynamicProp: abi.Inherit(server.CDynamicProp),

    m_Speed: f32, // +0x1028 size: 0x4 (0x1 * 0x4) type 1
    m_BoostSpeed: f32, // +0x102c size: 0x4 (0x1 * 0x4) type 1
    m_minArc: f32, // +0x1030 size: 0x4 (0x1 * 0x4) type 1
    m_maxArc: f32, // +0x1034 size: 0x4 (0x1 * 0x4) type 1
    m_explosionMagnitude: f32, // +0x1038 size: 0x4 (0x1 * 0x4) type 1
    m_outerRadius: f32, // +0x103c size: 0x4 (0x1 * 0x4) type 1
    m_innerRadius: f32, // +0x1040 size: 0x4 (0x1 * 0x4) type 1
    m_boostEnabled: bool, // +0x1044 size: 0x1 (0x1 * 0x1) type 6
    gap_1045: [3]abi.undefined,
    m_attachActivator: i32, // +0x1048 size: 0x4 (0x1 * 0x4) type 5
    gap_104c: [4]abi.undefined,
    m_iszLaunchParent: [*:0]u8, // +0x1050 size: 0x8 (0x1 * 0x8) type 2
    m_pOutputOnLaunched: [40]abi.undefined, // +0x1058 size: 0x28 (0x1 * 0x28) type 11
    m_pOutputOnImpact: [40]abi.undefined, // +0x1080 size: 0x28 (0x1 * 0x28) type 11

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x10a8);
        try std.testing.expect(@offsetOf(@This(), "m_Speed") == 0x1028);
        try std.testing.expect(@offsetOf(@This(), "m_BoostSpeed") == 0x102c);
        try std.testing.expect(@offsetOf(@This(), "m_minArc") == 0x1030);
        try std.testing.expect(@offsetOf(@This(), "m_maxArc") == 0x1034);
        try std.testing.expect(@offsetOf(@This(), "m_explosionMagnitude") == 0x1038);
        try std.testing.expect(@offsetOf(@This(), "m_outerRadius") == 0x103c);
        try std.testing.expect(@offsetOf(@This(), "m_innerRadius") == 0x1040);
        try std.testing.expect(@offsetOf(@This(), "m_boostEnabled") == 0x1044);
        try std.testing.expect(@offsetOf(@This(), "m_attachActivator") == 0x1048);
        try std.testing.expect(@offsetOf(@This(), "m_iszLaunchParent") == 0x1050);
        try std.testing.expect(@offsetOf(@This(), "m_pOutputOnLaunched") == 0x1058);
        try std.testing.expect(@offsetOf(@This(), "m_pOutputOnImpact") == 0x1080);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
