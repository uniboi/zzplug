pub const CAI_TacticalServices = extern struct {
    vtable: *anyopaque,
    CAI_Component: abi.Inherit(server.CAI_Component),

    m_LOSSearchDataIndex: i32, // +0x10 size: 0x4 (0x1 * 0x4) type 5
    m_strafeActivity: i32, // +0x14 size: 0x4 (0x1 * 0x4) type 5
    m_firstIterationOfFindLos: bool, // +0x18 size: 0x1 (0x1 * 0x1) type 6
    gap_19: [7]abi.undefined,
    m_pNetwork: *anyopaque, // +0x20 size: 0x8 (0x1 * 0x8) type 31
    m_pPathfinder: *anyopaque, // +0x28 size: 0x8 (0x1 * 0x8) type 31
    m_prevLOSCheckSuccess: bool, // +0x30 size: 0x1 (0x1 * 0x1) type 6
    gap_31: [3]abi.undefined,
    m_prevLOSCheckTime: f32, // +0x34 size: 0x4 (0x1 * 0x4) type 1
    m_prevThreatPos: m.Vector3, // +0x38 size: 0xc (0x1 * 0xc) type 3
    m_prevSearchPos: m.Vector3, // +0x44 size: 0xc (0x1 * 0xc) type 3

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x50);
        try std.testing.expect(@offsetOf(@This(), "m_LOSSearchDataIndex") == 0x10);
        try std.testing.expect(@offsetOf(@This(), "m_strafeActivity") == 0x14);
        try std.testing.expect(@offsetOf(@This(), "m_firstIterationOfFindLos") == 0x18);
        try std.testing.expect(@offsetOf(@This(), "m_pNetwork") == 0x20);
        try std.testing.expect(@offsetOf(@This(), "m_pPathfinder") == 0x28);
        try std.testing.expect(@offsetOf(@This(), "m_prevLOSCheckSuccess") == 0x30);
        try std.testing.expect(@offsetOf(@This(), "m_prevLOSCheckTime") == 0x34);
        try std.testing.expect(@offsetOf(@This(), "m_prevThreatPos") == 0x38);
        try std.testing.expect(@offsetOf(@This(), "m_prevSearchPos") == 0x44);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
