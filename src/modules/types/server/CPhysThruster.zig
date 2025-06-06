pub const CPhysThruster = extern struct {
    vtable: *anyopaque,
    CPhysForce: abi.Inherit(server.CPhysForce),

    m_localOrigin: m.Vector3, // +0xa40 size: 0xc (0x1 * 0xc) type 3

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xa50);
        try std.testing.expect(@offsetOf(@This(), "m_localOrigin") == 0xa40);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
