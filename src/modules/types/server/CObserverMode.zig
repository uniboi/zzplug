pub const CObserverMode = extern struct {
    vtable: *anyopaque,
    m_observerMode: i32, // +0x8 size: 0x4 (0x1 * 0x4) type 5
    m_observerTarget: valve.EHANDLE, // +0xc size: 0x4 (0x1 * 0x4) type 13

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x10);
        try std.testing.expect(@offsetOf(@This(), "m_observerMode") == 0x8);
        try std.testing.expect(@offsetOf(@This(), "m_observerTarget") == 0xc);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
