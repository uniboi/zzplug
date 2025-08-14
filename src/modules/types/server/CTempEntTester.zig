pub const CTempEntTester = extern struct {
    vtable: *anyopaque,
    CBaseEntity: abi.Inherit(server.CBaseEntity),

    m_pCurrent: *server.CBaseEntity, // +0x9e0 size: 0x8 (0x1 * 0x8) type 12
    m_fLifeTime: f32, // +0x9e8 size: 0x4 (0x1 * 0x4) type 1
    m_szClass: [64]u8, // +0x9ec size: 0x40 (0x40 * 0x1) type 8

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xa30);
        try std.testing.expect(@offsetOf(@This(), "m_pCurrent") == 0x9e0);
        try std.testing.expect(@offsetOf(@This(), "m_fLifeTime") == 0x9e8);
        try std.testing.expect(@offsetOf(@This(), "m_szClass") == 0x9ec);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
