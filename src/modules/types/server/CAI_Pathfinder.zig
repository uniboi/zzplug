pub const CAI_Pathfinder = extern struct {
    vtable: *anyopaque,
    CAI_Component: abi.Inherit(server.CAI_Component),

    m_TriDebugOverlay: *anyopaque, // +0x10 size: 0x8 (0x1 * 0x8) type 0
    m_flLimitDistFactor: f32, // +0x18 size: 0x4 (0x1 * 0x4) type 1
    m_flLastStaleLinkCheckTime: valve.time, // +0x1c size: 0x4 (0x1 * 0x4) type 16
    m_bIgnoreStaleLinks: [1]abi.undefined, // +0x20 size: 0x1 (0x1 * 0x1) type 0
    gap_21: [7]abi.undefined,
    m_pNetwork: *anyopaque, // +0x28 size: 0x8 (0x1 * 0x8) type 31
    m_navQuery: [96]abi.undefined, // +0x30 size: 0x60 (0x1 * 0x60) type 0
    m_navFilter: [136]abi.undefined, // +0x90 size: 0x88 (0x1 * 0x88) type 0
    m_useClusterExclusions: bool, // +0x118 size: 0x1 (0x1 * 0x1) type 6
    gap_119: [3]abi.undefined,
    m_clusterPathMaxDetourBase: f32, // +0x11c size: 0x4 (0x1 * 0x4) type 1
    m_clusterPathMaxDetourMultiplier: f32, // +0x120 size: 0x4 (0x1 * 0x4) type 1
    gap_124: [4]abi.undefined,
    m_excludedClusterNodes: [32]abi.undefined, // +0x128 size: 0x20 (0x1 * 0x20) type 11
    m_excludedClusterLinks: [32]abi.undefined, // +0x148 size: 0x20 (0x1 * 0x20) type 11
    m_pClusterPath: *anyopaque, // +0x168 size: 0x8 (0x1 * 0x8) type 31
    m_pClusterNoExclusionPath: *anyopaque, // +0x170 size: 0x8 (0x1 * 0x8) type 31
    m_buildFlags: i32, // +0x178 size: 0x4 (0x1 * 0x4) type 5
    m_failReason: i32, // +0x17c size: 0x4 (0x1 * 0x4) type 5

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x180);
        try std.testing.expect(@offsetOf(@This(), "m_TriDebugOverlay") == 0x10);
        try std.testing.expect(@offsetOf(@This(), "m_flLimitDistFactor") == 0x18);
        try std.testing.expect(@offsetOf(@This(), "m_flLastStaleLinkCheckTime") == 0x1c);
        try std.testing.expect(@offsetOf(@This(), "m_bIgnoreStaleLinks") == 0x20);
        try std.testing.expect(@offsetOf(@This(), "m_pNetwork") == 0x28);
        try std.testing.expect(@offsetOf(@This(), "m_navQuery") == 0x30);
        try std.testing.expect(@offsetOf(@This(), "m_navFilter") == 0x90);
        try std.testing.expect(@offsetOf(@This(), "m_useClusterExclusions") == 0x118);
        try std.testing.expect(@offsetOf(@This(), "m_clusterPathMaxDetourBase") == 0x11c);
        try std.testing.expect(@offsetOf(@This(), "m_clusterPathMaxDetourMultiplier") == 0x120);
        try std.testing.expect(@offsetOf(@This(), "m_excludedClusterNodes") == 0x128);
        try std.testing.expect(@offsetOf(@This(), "m_excludedClusterLinks") == 0x148);
        try std.testing.expect(@offsetOf(@This(), "m_pClusterPath") == 0x168);
        try std.testing.expect(@offsetOf(@This(), "m_pClusterNoExclusionPath") == 0x170);
        try std.testing.expect(@offsetOf(@This(), "m_buildFlags") == 0x178);
        try std.testing.expect(@offsetOf(@This(), "m_failReason") == 0x17c);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
