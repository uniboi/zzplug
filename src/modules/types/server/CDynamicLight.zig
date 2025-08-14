pub const CDynamicLight = extern struct {
    vtable: *anyopaque,
    CBaseEntity: abi.cpp.Inherit(server.CBaseEntity),

    m_ActualFlags: u8, // +0x9e0 size: 0x1 (0x1 * 0x1) type 8
    m_Flags: u8, // +0x9e1 size: 0x1 (0x1 * 0x1) type 8
    m_LightStyle: u8, // +0x9e2 size: 0x1 (0x1 * 0x1) type 8
    m_On: bool, // +0x9e3 size: 0x1 (0x1 * 0x1) type 6
    m_Radius: f32, // +0x9e4 size: 0x4 (0x1 * 0x4) type 1
    m_Exponent: i32, // +0x9e8 size: 0x4 (0x1 * 0x4) type 5
    m_InnerAngle: f32, // +0x9ec size: 0x4 (0x1 * 0x4) type 1
    m_OuterAngle: f32, // +0x9f0 size: 0x4 (0x1 * 0x4) type 1
    m_SpotRadius: f32, // +0x9f4 size: 0x4 (0x1 * 0x4) type 1

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x9f8);
        try std.testing.expect(@offsetOf(@This(), "m_ActualFlags") == 0x9e0);
        try std.testing.expect(@offsetOf(@This(), "m_Flags") == 0x9e1);
        try std.testing.expect(@offsetOf(@This(), "m_LightStyle") == 0x9e2);
        try std.testing.expect(@offsetOf(@This(), "m_On") == 0x9e3);
        try std.testing.expect(@offsetOf(@This(), "m_Radius") == 0x9e4);
        try std.testing.expect(@offsetOf(@This(), "m_Exponent") == 0x9e8);
        try std.testing.expect(@offsetOf(@This(), "m_InnerAngle") == 0x9ec);
        try std.testing.expect(@offsetOf(@This(), "m_OuterAngle") == 0x9f0);
        try std.testing.expect(@offsetOf(@This(), "m_SpotRadius") == 0x9f4);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
