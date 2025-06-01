pub const MagneticGrenadeData = extern struct {
    isMagnetic: bool, // +0x0 size: 0x1 (0x1 * 0x1) type 6
    lockOnSoundRequested: bool, // +0x1 size: 0x1 (0x1 * 0x1) type 6
    lockOnSoundIndex: u8, // +0x2 size: 0x1 (0x1 * 0x1) type 8
    gap_3: [1]abi.undefined,
    speed: f32, // +0x4 size: 0x4 (0x1 * 0x4) type 1

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x8);
        try std.testing.expect(@offsetOf(@This(), "isMagnetic") == 0x0);
        try std.testing.expect(@offsetOf(@This(), "lockOnSoundRequested") == 0x1);
        try std.testing.expect(@offsetOf(@This(), "lockOnSoundIndex") == 0x2);
        try std.testing.expect(@offsetOf(@This(), "speed") == 0x4);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
