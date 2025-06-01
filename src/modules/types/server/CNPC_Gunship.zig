pub const CNPC_Gunship = extern struct {
    vtable: *anyopaque,
    CBaseHelicopter: abi.Inherit(server.CBaseHelicopter),

    m_accel: m.Vector3, // +0x24e0 size: 0xc (0x1 * 0xc) type 3
    m_vecAttackPosition: m.Vector3, // +0x24ec size: 0xc (0x1 * 0xc) type 3
    m_vecAttackVelocity: m.Vector3, // +0x24f8 size: 0xc (0x1 * 0xc) type 3

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x2508);
        try std.testing.expect(@offsetOf(@This(), "m_accel") == 0x24e0);
        try std.testing.expect(@offsetOf(@This(), "m_vecAttackPosition") == 0x24ec);
        try std.testing.expect(@offsetOf(@This(), "m_vecAttackVelocity") == 0x24f8);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");