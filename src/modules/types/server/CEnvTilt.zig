pub const CEnvTilt = extern struct {
    vtable: *anyopaque,
    CBaseEntity: abi.Inherit(server.CBaseEntity),

    m_Duration: f32, // +0x9e0 size: 0x4 (0x1 * 0x4) type 1
    m_Radius: f32, // +0x9e4 size: 0x4 (0x1 * 0x4) type 1
    m_TiltTime: valve.time, // +0x9e8 size: 0x4 (0x1 * 0x4) type 16
    m_stopTime: valve.time, // +0x9ec size: 0x4 (0x1 * 0x4) type 16

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x9f0);
        try std.testing.expect(@offsetOf(@This(), "m_Duration") == 0x9e0);
        try std.testing.expect(@offsetOf(@This(), "m_Radius") == 0x9e4);
        try std.testing.expect(@offsetOf(@This(), "m_TiltTime") == 0x9e8);
        try std.testing.expect(@offsetOf(@This(), "m_stopTime") == 0x9ec);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
