pub const CAI_LocalNavigator = extern struct {
    vtable: *anyopaque,
    CAI_Component: abi.cpp.Inherit(server.CAI_Component),

    CAI_ProxyMovementSink: [16]abi.undefined, // +0x10 size: 0x10 (0x0 * 0x10) type 0
    m_bLastWasClear: bool, // +0x20 size: 0x1 (0x1 * 0x1) type 6
    gap_21: [7]abi.undefined,
    m_LastMoveGoal: [216]abi.undefined, // +0x28 size: 0xd8 (0x1 * 0xd8) type 10
    m_FullDirectTimer: [4]abi.undefined, // +0x100 size: 0x4 (0x1 * 0x4) type 10
    gap_104: [4]abi.undefined,
    m_pPlaneSolver: *anyopaque, // +0x108 size: 0x8 (0x1 * 0x8) type 31
    m_pMoveProbe: *anyopaque, // +0x110 size: 0x8 (0x1 * 0x8) type 31

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x118);
        try std.testing.expect(@offsetOf(@This(), "CAI_ProxyMovementSink") == 0x10);
        try std.testing.expect(@offsetOf(@This(), "m_bLastWasClear") == 0x20);
        try std.testing.expect(@offsetOf(@This(), "m_LastMoveGoal") == 0x28);
        try std.testing.expect(@offsetOf(@This(), "m_FullDirectTimer") == 0x100);
        try std.testing.expect(@offsetOf(@This(), "m_pPlaneSolver") == 0x108);
        try std.testing.expect(@offsetOf(@This(), "m_pMoveProbe") == 0x110);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
