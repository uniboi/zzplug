pub const CStopwatchBase = extern struct {
    CSimpleSimTimer: abi.Inherit(server.CSimpleSimTimer),

    m_fIsRunning: bool, // +0x4 size: 0x1 (0x1 * 0x1) type 6

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x8);
        try std.testing.expect(@offsetOf(@This(), "m_fIsRunning") == 0x4);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
