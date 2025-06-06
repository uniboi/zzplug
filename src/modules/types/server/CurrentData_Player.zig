pub const CurrentData_Player = extern struct {
    vtable: *anyopaque,
    m_flHullHeight: f32, // +0x8 size: 0x4 (0x1 * 0x4) type 1
    m_traversalAnimProgress: f32, // +0xc size: 0x4 (0x1 * 0x4) type 1
    m_sprintTiltFrac: f32, // +0x10 size: 0x4 (0x1 * 0x4) type 1
    m_angEyeAngles: m.Vector3, // +0x14 size: 0xc (0x1 * 0xc) type 3

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x20);
        try std.testing.expect(@offsetOf(@This(), "m_flHullHeight") == 0x8);
        try std.testing.expect(@offsetOf(@This(), "m_traversalAnimProgress") == 0xc);
        try std.testing.expect(@offsetOf(@This(), "m_sprintTiltFrac") == 0x10);
        try std.testing.expect(@offsetOf(@This(), "m_angEyeAngles") == 0x14);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
