pub const CTether = extern struct {
    vtable: *anyopaque,
    pos: m.Vector3, // +0x8 size: 0xc (0x1 * 0xc) type 3
    health: f32, // +0x14 size: 0x4 (0x1 * 0x4) type 1
    nextSoundTime: valve.time, // +0x18 size: 0x4 (0x1 * 0x4) type 16
    creationTime: f32, // +0x1c size: 0x4 (0x1 * 0x4) type 1
    scriptID: i32, // +0x20 size: 0x4 (0x1 * 0x4) type 5

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x28);
        try std.testing.expect(@offsetOf(@This(), "pos") == 0x8);
        try std.testing.expect(@offsetOf(@This(), "health") == 0x14);
        try std.testing.expect(@offsetOf(@This(), "nextSoundTime") == 0x18);
        try std.testing.expect(@offsetOf(@This(), "creationTime") == 0x1c);
        try std.testing.expect(@offsetOf(@This(), "scriptID") == 0x20);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
