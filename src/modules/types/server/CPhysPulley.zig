pub const CPhysPulley = extern struct {
    vtable: *anyopaque,
    CPhysConstraint: abi.cpp.Inherit(server.CPhysConstraint),

    m_position2: m.Vector3, // +0xa40 size: 0xc (0x1 * 0xc) type 15
    m_offset: [2]m.Vector3, // +0xa4c size: 0x18 (0x2 * 0xc) type 3
    m_addLength: f32, // +0xa64 size: 0x4 (0x1 * 0x4) type 1
    m_gearRatio: f32, // +0xa68 size: 0x4 (0x1 * 0x4) type 1

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xa70);
        try std.testing.expect(@offsetOf(@This(), "m_position2") == 0xa40);
        try std.testing.expect(@offsetOf(@This(), "m_offset") == 0xa4c);
        try std.testing.expect(@offsetOf(@This(), "m_addLength") == 0xa64);
        try std.testing.expect(@offsetOf(@This(), "m_gearRatio") == 0xa68);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
