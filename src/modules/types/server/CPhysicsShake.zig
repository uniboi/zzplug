pub const CPhysicsShake = extern struct {
    vtable: *anyopaque,
    m_force: m.Vector3, // +0x8 size: 0xc (0x1 * 0xc) type 3

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x18);
        try std.testing.expect(@offsetOf(@This(), "m_force") == 0x8);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
