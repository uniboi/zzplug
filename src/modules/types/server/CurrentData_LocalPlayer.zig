pub const CurrentData_LocalPlayer = extern struct {
    vtable: *anyopaque,
    m_viewConeAngleMin: m.Vector3, // +0x8 size: 0xc (0x1 * 0xc) type 3
    m_viewConeAngleMax: m.Vector3, // +0x14 size: 0xc (0x1 * 0xc) type 3
    m_stepSmoothingOffset: m.Vector3, // +0x20 size: 0xc (0x1 * 0xc) type 3
    m_vecPunchBase_Angle: m.Vector3, // +0x2c size: 0xc (0x1 * 0xc) type 3
    m_vecPunchBase_AngleVel: m.Vector3, // +0x38 size: 0xc (0x1 * 0xc) type 3
    m_vecPunchWeapon_Angle: m.Vector3, // +0x44 size: 0xc (0x1 * 0xc) type 3
    m_vecPunchWeapon_AngleVel: m.Vector3, // +0x50 size: 0xc (0x1 * 0xc) type 3

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x60);
        try std.testing.expect(@offsetOf(@This(), "m_viewConeAngleMin") == 0x8);
        try std.testing.expect(@offsetOf(@This(), "m_viewConeAngleMax") == 0x14);
        try std.testing.expect(@offsetOf(@This(), "m_stepSmoothingOffset") == 0x20);
        try std.testing.expect(@offsetOf(@This(), "m_vecPunchBase_Angle") == 0x2c);
        try std.testing.expect(@offsetOf(@This(), "m_vecPunchBase_AngleVel") == 0x38);
        try std.testing.expect(@offsetOf(@This(), "m_vecPunchWeapon_Angle") == 0x44);
        try std.testing.expect(@offsetOf(@This(), "m_vecPunchWeapon_AngleVel") == 0x50);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
