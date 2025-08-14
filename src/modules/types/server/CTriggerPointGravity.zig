pub const CTriggerPointGravity = extern struct {
    vtable: *anyopaque,
    CTriggerCylinder: abi.Inherit(server.CTriggerCylinder),

    m_pullOuterRadius: f32, // +0xc70 size: 0x4 (0x1 * 0x4) type 1
    m_pullInnerRadius: f32, // +0xc74 size: 0x4 (0x1 * 0x4) type 1
    m_reduceSpeedOuterRadius: f32, // +0xc78 size: 0x4 (0x1 * 0x4) type 1
    m_reduceSpeedInnerRadius: f32, // +0xc7c size: 0x4 (0x1 * 0x4) type 1
    m_pullAccel: f32, // +0xc80 size: 0x4 (0x1 * 0x4) type 1
    m_pullSpeed: f32, // +0xc84 size: 0x4 (0x1 * 0x4) type 1

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xc88);
        try std.testing.expect(@offsetOf(@This(), "m_pullOuterRadius") == 0xc70);
        try std.testing.expect(@offsetOf(@This(), "m_pullInnerRadius") == 0xc74);
        try std.testing.expect(@offsetOf(@This(), "m_reduceSpeedOuterRadius") == 0xc78);
        try std.testing.expect(@offsetOf(@This(), "m_reduceSpeedInnerRadius") == 0xc7c);
        try std.testing.expect(@offsetOf(@This(), "m_pullAccel") == 0xc80);
        try std.testing.expect(@offsetOf(@This(), "m_pullSpeed") == 0xc84);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
