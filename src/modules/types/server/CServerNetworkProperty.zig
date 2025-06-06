pub const CServerNetworkProperty = extern struct {
    vtable: *anyopaque,
    IServerNetworkable: abi.Inherit(server.IServerNetworkable),

    m_hParent: valve.EHANDLE, // +0x20 size: 0x4 (0x1 * 0x4) type 13

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x28);
        try std.testing.expect(@offsetOf(@This(), "m_hParent") == 0x20);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
