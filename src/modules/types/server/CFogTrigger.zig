pub const CFogTrigger = extern struct {
    vtable: *anyopaque,
    CBaseTrigger: abi.cpp.Inherit(server.CBaseTrigger),

    m_fog: server.fogparams_t, // +0xc60 size: 0x50 (0x1 * 0x50) type 10

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xcb0);
        try std.testing.expect(@offsetOf(@This(), "m_fog") == 0xc60);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
