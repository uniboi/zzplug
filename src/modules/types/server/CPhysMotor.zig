pub const CPhysMotor = extern struct {
    vtable: *anyopaque,
    CBaseEntity: abi.Inherit(server.CBaseEntity),

    m_nameAttach: [*:0]u8, // +0x9e0 size: 0x8 (0x1 * 0x8) type 2
    m_attachedObject: valve.EHANDLE, // +0x9e8 size: 0x4 (0x1 * 0x4) type 13
    m_spinUp: f32, // +0x9ec size: 0x4 (0x1 * 0x4) type 1
    m_additionalAcceleration: f32, // +0x9f0 size: 0x4 (0x1 * 0x4) type 1
    m_angularAcceleration: f32, // +0x9f4 size: 0x4 (0x1 * 0x4) type 1
    m_lastTime: valve.time, // +0x9f8 size: 0x4 (0x1 * 0x4) type 16
    gap_9fc: [4]abi.undefined,
    m_pHinge: [8]abi.undefined, // +0xa00 size: 0x8 (0x1 * 0x8) type 11
    m_pController: [8]abi.undefined, // +0xa08 size: 0x8 (0x1 * 0x8) type 11
    m_motor: server.CMotorController, // +0xa10 size: 0x30 (0x1 * 0x30) type 10

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xa40);
        try std.testing.expect(@offsetOf(@This(), "m_nameAttach") == 0x9e0);
        try std.testing.expect(@offsetOf(@This(), "m_attachedObject") == 0x9e8);
        try std.testing.expect(@offsetOf(@This(), "m_spinUp") == 0x9ec);
        try std.testing.expect(@offsetOf(@This(), "m_additionalAcceleration") == 0x9f0);
        try std.testing.expect(@offsetOf(@This(), "m_angularAcceleration") == 0x9f4);
        try std.testing.expect(@offsetOf(@This(), "m_lastTime") == 0x9f8);
        try std.testing.expect(@offsetOf(@This(), "m_pHinge") == 0xa00);
        try std.testing.expect(@offsetOf(@This(), "m_pController") == 0xa08);
        try std.testing.expect(@offsetOf(@This(), "m_motor") == 0xa10);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
