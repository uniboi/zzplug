pub const CAI_RadialLinkController = extern struct {
    vtable: *anyopaque,
    CBaseEntity: abi.Inherit(server.CBaseEntity),

    m_flRadius: f32, // +0x9e0 size: 0x4 (0x1 * 0x4) type 1
    m_vecAtRestOrigin: m.Vector3, // +0x9e4 size: 0xc (0x1 * 0xc) type 15
    m_bAtRest: bool, // +0x9f0 size: 0x1 (0x1 * 0x1) type 6

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x9f8);
        try std.testing.expect(@offsetOf(@This(), "m_flRadius") == 0x9e0);
        try std.testing.expect(@offsetOf(@This(), "m_vecAtRestOrigin") == 0x9e4);
        try std.testing.expect(@offsetOf(@This(), "m_bAtRest") == 0x9f0);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
