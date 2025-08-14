pub const CRandSimTimer = extern struct {
    CSimpleSimTimer: abi.Inherit(server.CSimpleSimTimer),

    m_minInterval: f32, // +0x4 size: 0x4 (0x1 * 0x4) type 1
    m_maxInterval: f32, // +0x8 size: 0x4 (0x1 * 0x4) type 1

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xc);
        try std.testing.expect(@offsetOf(@This(), "m_minInterval") == 0x4);
        try std.testing.expect(@offsetOf(@This(), "m_maxInterval") == 0x8);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
