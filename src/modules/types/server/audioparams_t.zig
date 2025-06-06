pub const audioparams_t = extern struct {
    vtable: *anyopaque,
    localSound: [8]m.Vector3, // +0x8 size: 0x60 (0x8 * 0xc) type 3
    soundscapeIndex: i32, // +0x68 size: 0x4 (0x1 * 0x4) type 5
    localBits: i32, // +0x6c size: 0x4 (0x1 * 0x4) type 5
    entIndex: i32, // +0x70 size: 0x4 (0x1 * 0x4) type 5

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x78);
        try std.testing.expect(@offsetOf(@This(), "localSound") == 0x8);
        try std.testing.expect(@offsetOf(@This(), "soundscapeIndex") == 0x68);
        try std.testing.expect(@offsetOf(@This(), "localBits") == 0x6c);
        try std.testing.expect(@offsetOf(@This(), "entIndex") == 0x70);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
