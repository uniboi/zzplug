pub const CGameOperator = extern struct {
    vtable: *anyopaque,
    CGameUI: abi.cpp.Inherit(server.CGameUI),

    m_iszPrimaryDropPod: [*:0]u8, // +0x10b0 size: 0x8 (0x1 * 0x8) type 2
    m_iszSecondaryDropPod: [*:0]u8, // +0x10b8 size: 0x8 (0x1 * 0x8) type 2

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x10c0);
        try std.testing.expect(@offsetOf(@This(), "m_iszPrimaryDropPod") == 0x10b0);
        try std.testing.expect(@offsetOf(@This(), "m_iszSecondaryDropPod") == 0x10b8);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
