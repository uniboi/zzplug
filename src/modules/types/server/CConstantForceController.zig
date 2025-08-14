pub const CConstantForceController = extern struct {
    vtable: *anyopaque,
    m_controlType: i32, // +0x8 size: 0x4 (0x1 * 0x4) type 5
    m_linear: m.Vector3, // +0xc size: 0xc (0x1 * 0xc) type 3
    m_angular: m.Vector3, // +0x18 size: 0xc (0x1 * 0xc) type 3
    m_linearSave: m.Vector3, // +0x24 size: 0xc (0x1 * 0xc) type 3
    m_angularSave: m.Vector3, // +0x30 size: 0xc (0x1 * 0xc) type 3

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x40);
        try std.testing.expect(@offsetOf(@This(), "m_controlType") == 0x8);
        try std.testing.expect(@offsetOf(@This(), "m_linear") == 0xc);
        try std.testing.expect(@offsetOf(@This(), "m_angular") == 0x18);
        try std.testing.expect(@offsetOf(@This(), "m_linearSave") == 0x24);
        try std.testing.expect(@offsetOf(@This(), "m_angularSave") == 0x30);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
