pub const CPhysTorque = extern struct {
    vtable: *anyopaque,
    CPhysForce: abi.cpp.Inherit(server.CPhysForce),

    m_axis: m.Vector3, // +0xa40 size: 0xc (0x1 * 0xc) type 3

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xa50);
        try std.testing.expect(@offsetOf(@This(), "m_axis") == 0xa40);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
