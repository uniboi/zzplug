pub const CPhysImpact = extern struct {
    vtable: *anyopaque,
    CBaseEntity: abi.Inherit(server.CBaseEntity),

    m_damage: f32, // +0x9e0 size: 0x4 (0x1 * 0x4) type 1
    m_distance: f32, // +0x9e4 size: 0x4 (0x1 * 0x4) type 1
    m_directionEntityName: [*:0]u8, // +0x9e8 size: 0x8 (0x1 * 0x8) type 2

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x9f0);
        try std.testing.expect(@offsetOf(@This(), "m_damage") == 0x9e0);
        try std.testing.expect(@offsetOf(@This(), "m_distance") == 0x9e4);
        try std.testing.expect(@offsetOf(@This(), "m_directionEntityName") == 0x9e8);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");