pub const CSimpleSimTimer = extern struct {
    m_next: valve.time, // +0x0 size: 0x4 (0x1 * 0x4) type 16

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x4);
        try std.testing.expect(@offsetOf(@This(), "m_next") == 0x0);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
