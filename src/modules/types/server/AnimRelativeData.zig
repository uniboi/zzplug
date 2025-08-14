pub const AnimRelativeData = extern struct {
    vtable: *anyopaque,
    m_animInitialPos: m.Vector3, // +0x8 size: 0xc (0x1 * 0xc) type 3
    m_animInitialVel: m.Vector3, // +0x14 size: 0xc (0x1 * 0xc) type 3
    m_animInitialRot: m.Quaternion, // +0x20 size: 0x10 (0x1 * 0x10) type 4
    m_animInitialCorrectPos: m.Vector3, // +0x30 size: 0xc (0x1 * 0xc) type 3
    m_animInitialCorrectRot: m.Quaternion, // +0x3c size: 0x10 (0x1 * 0x10) type 4
    m_animEntityToRefOffset: m.Vector3, // +0x4c size: 0xc (0x1 * 0xc) type 3
    m_animEntityToRefRotation: m.Quaternion, // +0x58 size: 0x10 (0x1 * 0x10) type 4
    m_animBeginTime: f32, // +0x68 size: 0x4 (0x1 * 0x4) type 1
    m_animEndTime: f32, // +0x6c size: 0x4 (0x1 * 0x4) type 1
    m_animScriptSequence: i32, // +0x70 size: 0x4 (0x1 * 0x4) type 5
    m_animScriptModel: i32, // +0x74 size: 0x4 (0x1 * 0x4) type 5
    m_animIgnoreParentRot: bool, // +0x78 size: 0x1 (0x1 * 0x1) type 6
    gap_79: [3]abi.undefined,
    m_animMotionMode: i32, // +0x7c size: 0x4 (0x1 * 0x4) type 5

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x80);
        try std.testing.expect(@offsetOf(@This(), "m_animInitialPos") == 0x8);
        try std.testing.expect(@offsetOf(@This(), "m_animInitialVel") == 0x14);
        try std.testing.expect(@offsetOf(@This(), "m_animInitialRot") == 0x20);
        try std.testing.expect(@offsetOf(@This(), "m_animInitialCorrectPos") == 0x30);
        try std.testing.expect(@offsetOf(@This(), "m_animInitialCorrectRot") == 0x3c);
        try std.testing.expect(@offsetOf(@This(), "m_animEntityToRefOffset") == 0x4c);
        try std.testing.expect(@offsetOf(@This(), "m_animEntityToRefRotation") == 0x58);
        try std.testing.expect(@offsetOf(@This(), "m_animBeginTime") == 0x68);
        try std.testing.expect(@offsetOf(@This(), "m_animEndTime") == 0x6c);
        try std.testing.expect(@offsetOf(@This(), "m_animScriptSequence") == 0x70);
        try std.testing.expect(@offsetOf(@This(), "m_animScriptModel") == 0x74);
        try std.testing.expect(@offsetOf(@This(), "m_animIgnoreParentRot") == 0x78);
        try std.testing.expect(@offsetOf(@This(), "m_animMotionMode") == 0x7c);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
