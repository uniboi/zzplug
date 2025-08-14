pub const CAI_SkitNode = extern struct {
    vtable: *anyopaque,
    CBaseEntity: abi.cpp.Inherit(server.CBaseEntity),

    m_distanceFromRef: f32, // +0x9e0 size: 0x4 (0x1 * 0x4) type 1
    m_reserved: bool, // +0x9e4 size: 0x1 (0x1 * 0x1) type 6

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x9e8);
        try std.testing.expect(@offsetOf(@This(), "m_distanceFromRef") == 0x9e0);
        try std.testing.expect(@offsetOf(@This(), "m_reserved") == 0x9e4);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
