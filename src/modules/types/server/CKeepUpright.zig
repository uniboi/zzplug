pub const CKeepUpright = extern struct {
    vtable: *anyopaque,
    CBaseEntity: abi.Inherit(server.CBaseEntity),

    IMotionEvent: *anyopaque, // +0x9e0 size: 0x8 (0x0 * 0x8) type 0
    m_worldGoalAxis: m.Vector3, // +0x9e8 size: 0xc (0x1 * 0xc) type 3
    m_localTestAxis: m.Vector3, // +0x9f4 size: 0xc (0x1 * 0xc) type 3
    m_pController: [8]abi.undefined, // +0xa00 size: 0x8 (0x1 * 0x8) type 11
    m_nameAttach: [*:0]u8, // +0xa08 size: 0x8 (0x1 * 0x8) type 2
    m_attachedObject: valve.EHANDLE, // +0xa10 size: 0x4 (0x1 * 0x4) type 13
    m_angularLimit: f32, // +0xa14 size: 0x4 (0x1 * 0x4) type 1
    m_bActive: bool, // +0xa18 size: 0x1 (0x1 * 0x1) type 6

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xa20);
        try std.testing.expect(@offsetOf(@This(), "IMotionEvent") == 0x9e0);
        try std.testing.expect(@offsetOf(@This(), "m_worldGoalAxis") == 0x9e8);
        try std.testing.expect(@offsetOf(@This(), "m_localTestAxis") == 0x9f4);
        try std.testing.expect(@offsetOf(@This(), "m_pController") == 0xa00);
        try std.testing.expect(@offsetOf(@This(), "m_nameAttach") == 0xa08);
        try std.testing.expect(@offsetOf(@This(), "m_attachedObject") == 0xa10);
        try std.testing.expect(@offsetOf(@This(), "m_angularLimit") == 0xa14);
        try std.testing.expect(@offsetOf(@This(), "m_bActive") == 0xa18);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
