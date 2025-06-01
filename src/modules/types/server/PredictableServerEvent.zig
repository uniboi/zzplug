pub const PredictableServerEvent = extern struct {
    type: i32, // +0x0 size: 0x4 (0x1 * 0x4) type 5
    deadlineTime: valve.time, // +0x4 size: 0x4 (0x1 * 0x4) type 16
    fullSizeOfUnion: [4]i32, // +0x8 size: 0x10 (0x4 * 0x4) type 5

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x18);
        try std.testing.expect(@offsetOf(@This(), "type") == 0x0);
        try std.testing.expect(@offsetOf(@This(), "deadlineTime") == 0x4);
        try std.testing.expect(@offsetOf(@This(), "fullSizeOfUnion") == 0x8);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");