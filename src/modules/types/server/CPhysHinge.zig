pub const CPhysHinge = extern struct {
    vtable: *anyopaque,
    CPhysConstraint: abi.Inherit(server.CPhysConstraint),

    m_hinge: server.constraint_hingeparams_t, // +0xa40 size: 0x40 (0x1 * 0x40) type 10
    m_hingeFriction: f32, // +0xa80 size: 0x4 (0x1 * 0x4) type 1
    m_systemLoadScale: f32, // +0xa84 size: 0x4 (0x1 * 0x4) type 1

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xa88);
        try std.testing.expect(@offsetOf(@This(), "m_hinge") == 0xa40);
        try std.testing.expect(@offsetOf(@This(), "m_hingeFriction") == 0xa80);
        try std.testing.expect(@offsetOf(@This(), "m_systemLoadScale") == 0xa84);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
