pub const constraint_axislimit_t = extern struct {
    minRotation: f32, // +0x0 size: 0x4 (0x1 * 0x4) type 1
    maxRotation: f32, // +0x4 size: 0x4 (0x1 * 0x4) type 1
    angularVelocity: f32, // +0x8 size: 0x4 (0x1 * 0x4) type 1
    torque: f32, // +0xc size: 0x4 (0x1 * 0x4) type 1

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x10);
        try std.testing.expect(@offsetOf(@This(), "minRotation") == 0x0);
        try std.testing.expect(@offsetOf(@This(), "maxRotation") == 0x4);
        try std.testing.expect(@offsetOf(@This(), "angularVelocity") == 0x8);
        try std.testing.expect(@offsetOf(@This(), "torque") == 0xc);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
