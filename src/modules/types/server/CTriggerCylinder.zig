pub const CTriggerCylinder = extern struct {
    vtable: *anyopaque,
    CBaseTrigger: abi.cpp.Inherit(server.CBaseTrigger),

    m_radius: f32, // +0xc60 size: 0x4 (0x1 * 0x4) type 1
    m_aboveHeight: f32, // +0xc64 size: 0x4 (0x1 * 0x4) type 1
    m_belowHeight: f32, // +0xc68 size: 0x4 (0x1 * 0x4) type 1
    m_losCheckIndex: i32, // +0xc6c size: 0x4 (0x1 * 0x4) type 5

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xc70);
        try std.testing.expect(@offsetOf(@This(), "m_radius") == 0xc60);
        try std.testing.expect(@offsetOf(@This(), "m_aboveHeight") == 0xc64);
        try std.testing.expect(@offsetOf(@This(), "m_belowHeight") == 0xc68);
        try std.testing.expect(@offsetOf(@This(), "m_losCheckIndex") == 0xc6c);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
