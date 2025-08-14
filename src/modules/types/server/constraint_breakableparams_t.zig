pub const constraint_breakableparams_t = extern struct {
    strength: f32, // +0x0 size: 0x4 (0x1 * 0x4) type 1
    forceLimit: f32, // +0x4 size: 0x4 (0x1 * 0x4) type 1
    torqueLimit: f32, // +0x8 size: 0x4 (0x1 * 0x4) type 1
    bodyMassScale: [2]f32, // +0xc size: 0x8 (0x2 * 0x4) type 1
    isActive: bool, // +0x14 size: 0x1 (0x1 * 0x1) type 6

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x18);
        try std.testing.expect(@offsetOf(@This(), "strength") == 0x0);
        try std.testing.expect(@offsetOf(@This(), "forceLimit") == 0x4);
        try std.testing.expect(@offsetOf(@This(), "torqueLimit") == 0x8);
        try std.testing.expect(@offsetOf(@This(), "bodyMassScale") == 0xc);
        try std.testing.expect(@offsetOf(@This(), "isActive") == 0x14);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
