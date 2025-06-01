pub const IServerNetworkable = extern struct {
    vtable: *anyopaque,
    m_pOuter: *server.CBaseEntity, // +0x8 size: 0x8 (0x1 * 0x8) type 12
    m_pServerClass: *anyopaque, // +0x10 size: 0x8 (0x1 * 0x8) type 31
    m_edict: i16, // +0x18 size: 0x2 (0x1 * 0x2) type 5

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x20);
        try std.testing.expect(@offsetOf(@This(), "m_pOuter") == 0x8);
        try std.testing.expect(@offsetOf(@This(), "m_pServerClass") == 0x10);
        try std.testing.expect(@offsetOf(@This(), "m_edict") == 0x18);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");