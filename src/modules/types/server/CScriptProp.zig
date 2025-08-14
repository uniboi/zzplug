pub const CScriptProp = extern struct {
    vtable: *anyopaque,
    CDynamicProp: abi.Inherit(server.CDynamicProp),

    m_title: [32]u8, // +0x1028 size: 0x20 (0x20 * 0x1) type 8
    m_footstepType: [64]u8, // +0x1048 size: 0x40 (0x40 * 0x1) type 8
    m_renderColorFriendlyIsValid: bool, // +0x1088 size: 0x1 (0x1 * 0x1) type 6
    m_renderColorFriendly: valve.Color32, // +0x1089 size: 0x4 (0x1 * 0x4) type 9
    gap_108d: [3]abi.undefined,
    m_armorType: i32, // +0x1090 size: 0x4 (0x1 * 0x4) type 5
    m_scriptPropFlags: i32, // +0x1094 size: 0x4 (0x1 * 0x4) type 5
    m_scriptPropSmartAmmoLockType: i32, // +0x1098 size: 0x4 (0x1 * 0x4) type 5

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x10a0);
        try std.testing.expect(@offsetOf(@This(), "m_title") == 0x1028);
        try std.testing.expect(@offsetOf(@This(), "m_footstepType") == 0x1048);
        try std.testing.expect(@offsetOf(@This(), "m_renderColorFriendlyIsValid") == 0x1088);
        try std.testing.expect(@offsetOf(@This(), "m_renderColorFriendly") == 0x1089);
        try std.testing.expect(@offsetOf(@This(), "m_armorType") == 0x1090);
        try std.testing.expect(@offsetOf(@This(), "m_scriptPropFlags") == 0x1094);
        try std.testing.expect(@offsetOf(@This(), "m_scriptPropSmartAmmoLockType") == 0x1098);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
