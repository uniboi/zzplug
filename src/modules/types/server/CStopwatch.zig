pub const CStopwatch = extern struct {
    CStopwatchBase: abi.Inherit(server.CStopwatchBase),

    m_interval: f32, // +0x8 size: 0x4 (0x1 * 0x4) type 1

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xc);
        try std.testing.expect(@offsetOf(@This(), "m_interval") == 0x8);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
