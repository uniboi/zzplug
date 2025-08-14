pub const CPhysConstraintSystem = extern struct {
    vtable: *anyopaque,
    CBaseEntity: abi.Inherit(server.CBaseEntity),

    m_pMachine: [8]abi.undefined, // +0x9e0 size: 0x8 (0x1 * 0x8) type 11
    m_additionalIterations: i32, // +0x9e8 size: 0x4 (0x1 * 0x4) type 5

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x9f0);
        try std.testing.expect(@offsetOf(@This(), "m_pMachine") == 0x9e0);
        try std.testing.expect(@offsetOf(@This(), "m_additionalIterations") == 0x9e8);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
