pub const PushHistoryEntry = extern struct {
    time: f32, // +0x0 size: 0x4 (0x1 * 0x4) type 1
    pushed: m.Vector3, // +0x4 size: 0xc (0x1 * 0xc) type 3

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x10);
        try std.testing.expect(@offsetOf(@This(), "time") == 0x0);
        try std.testing.expect(@offsetOf(@This(), "pushed") == 0x4);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
