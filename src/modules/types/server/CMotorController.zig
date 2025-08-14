pub const CMotorController = extern struct {
    vtable: *anyopaque,
    m_speed: f32, // +0x8 size: 0x4 (0x1 * 0x4) type 1
    m_maxTorque: f32, // +0xc size: 0x4 (0x1 * 0x4) type 1
    m_axis: m.Vector3, // +0x10 size: 0xc (0x1 * 0xc) type 3
    m_inertiaFactor: f32, // +0x1c size: 0x4 (0x1 * 0x4) type 1
    m_lastSpeed: f32, // +0x20 size: 0x4 (0x1 * 0x4) type 1
    m_lastAcceleration: f32, // +0x24 size: 0x4 (0x1 * 0x4) type 1
    m_lastForce: f32, // +0x28 size: 0x4 (0x1 * 0x4) type 1
    m_restistanceDamping: f32, // +0x2c size: 0x4 (0x1 * 0x4) type 1

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x30);
        try std.testing.expect(@offsetOf(@This(), "m_speed") == 0x8);
        try std.testing.expect(@offsetOf(@This(), "m_maxTorque") == 0xc);
        try std.testing.expect(@offsetOf(@This(), "m_axis") == 0x10);
        try std.testing.expect(@offsetOf(@This(), "m_inertiaFactor") == 0x1c);
        try std.testing.expect(@offsetOf(@This(), "m_lastSpeed") == 0x20);
        try std.testing.expect(@offsetOf(@This(), "m_lastAcceleration") == 0x24);
        try std.testing.expect(@offsetOf(@This(), "m_lastForce") == 0x28);
        try std.testing.expect(@offsetOf(@This(), "m_restistanceDamping") == 0x2c);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
