pub const CSkyboxSwapper = extern struct {
    vtable: *anyopaque,
    CBaseEntity: abi.Inherit(server.CBaseEntity),

    m_iszSkyboxName: [*:0]u8, // +0x9e0 size: 0x8 (0x1 * 0x8) type 2

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x9e8);
        try std.testing.expect(@offsetOf(@This(), "m_iszSkyboxName") == 0x9e0);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");