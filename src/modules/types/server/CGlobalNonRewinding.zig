pub const CGlobalNonRewinding = extern struct {
    vtable: *anyopaque,
    CBaseEntity: abi.Inherit(server.CBaseEntity),

    m_playerObserver: [32]server.CObserverMode, // +0x9e0 size: 0x10 (0x20 * 0x0) type 10

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xbe0);
        try std.testing.expect(@offsetOf(@This(), "m_playerObserver") == 0x9e0);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");