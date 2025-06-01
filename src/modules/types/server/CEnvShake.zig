pub const CEnvShake = extern struct {
    vtable: *anyopaque,
    CBaseEntity: abi.Inherit(server.CBaseEntity),

    m_Amplitude: f32, // +0x9e0 size: 0x4 (0x1 * 0x4) type 1
    m_Frequency: f32, // +0x9e4 size: 0x4 (0x1 * 0x4) type 1
    m_Duration: f32, // +0x9e8 size: 0x4 (0x1 * 0x4) type 1
    m_Radius: f32, // +0x9ec size: 0x4 (0x1 * 0x4) type 1
    m_stopTime: valve.time, // +0x9f0 size: 0x4 (0x1 * 0x4) type 16
    m_nextShake: valve.time, // +0x9f4 size: 0x4 (0x1 * 0x4) type 16
    m_currentAmp: f32, // +0x9f8 size: 0x4 (0x1 * 0x4) type 1
    m_maxForce: m.Vector3, // +0x9fc size: 0xc (0x1 * 0xc) type 3
    m_pShakeController: [8]abi.undefined, // +0xa08 size: 0x8 (0x1 * 0x8) type 11
    m_shakeCallback: server.CPhysicsShake, // +0xa10 size: 0x18 (0x1 * 0x18) type 10

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xa28);
        try std.testing.expect(@offsetOf(@This(), "m_Amplitude") == 0x9e0);
        try std.testing.expect(@offsetOf(@This(), "m_Frequency") == 0x9e4);
        try std.testing.expect(@offsetOf(@This(), "m_Duration") == 0x9e8);
        try std.testing.expect(@offsetOf(@This(), "m_Radius") == 0x9ec);
        try std.testing.expect(@offsetOf(@This(), "m_stopTime") == 0x9f0);
        try std.testing.expect(@offsetOf(@This(), "m_nextShake") == 0x9f4);
        try std.testing.expect(@offsetOf(@This(), "m_currentAmp") == 0x9f8);
        try std.testing.expect(@offsetOf(@This(), "m_maxForce") == 0x9fc);
        try std.testing.expect(@offsetOf(@This(), "m_pShakeController") == 0xa08);
        try std.testing.expect(@offsetOf(@This(), "m_shakeCallback") == 0xa10);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
