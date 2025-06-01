pub const CPhysicsWind = extern struct {
    vtable: *anyopaque,
    m_nWindYaw: i32, // +0x8 size: 0x4 (0x1 * 0x4) type 5
    m_flWindSpeed: f32, // +0xc size: 0x4 (0x1 * 0x4) type 1

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x10);
        try std.testing.expect(@offsetOf(@This(), "m_nWindYaw") == 0x8);
        try std.testing.expect(@offsetOf(@This(), "m_flWindSpeed") == 0xc);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");