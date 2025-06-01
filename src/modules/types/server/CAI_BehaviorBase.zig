pub const CAI_BehaviorBase = extern struct {
    vtable: *anyopaque,
    CAI_Component: abi.Inherit(server.CAI_Component),

    IAI_BehaviorBridge: *anyopaque, // +0x10 size: 0x8 (0x0 * 0x8) type 0
    m_ScheduleChannels: [32]abi.undefined, // +0x18 size: 0x20 (0x1 * 0x20) type 11
    m_fOverrode: bool, // +0x38 size: 0x1 (0x1 * 0x1) type 6
    gap_39: [7]abi.undefined,
    m_pBackBridge: *anyopaque, // +0x40 size: 0x8 (0x1 * 0x8) type 31
    m_bAllocated: bool, // +0x48 size: 0x1 (0x1 * 0x1) type 6
    m_bBehaviorEnabled: bool, // +0x49 size: 0x1 (0x1 * 0x1) type 6
    gap_4a: [2]abi.undefined,
    m_behaviorType: i32, // +0x4c size: 0x4 (0x1 * 0x4) type 5

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x50);
        try std.testing.expect(@offsetOf(@This(), "IAI_BehaviorBridge") == 0x10);
        try std.testing.expect(@offsetOf(@This(), "m_ScheduleChannels") == 0x18);
        try std.testing.expect(@offsetOf(@This(), "m_fOverrode") == 0x38);
        try std.testing.expect(@offsetOf(@This(), "m_pBackBridge") == 0x40);
        try std.testing.expect(@offsetOf(@This(), "m_bAllocated") == 0x48);
        try std.testing.expect(@offsetOf(@This(), "m_bBehaviorEnabled") == 0x49);
        try std.testing.expect(@offsetOf(@This(), "m_behaviorType") == 0x4c);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
