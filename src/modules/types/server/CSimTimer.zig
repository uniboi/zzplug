pub const CSimTimer = extern struct {
    CSimpleSimTimer: abi.Inherit(server.CSimpleSimTimer),

    m_interval: f32, // +0x4 size: 0x4 (0x1 * 0x4) type 1

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x8);
        try std.testing.expect(@offsetOf(@This(), "m_interval") == 0x4);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");