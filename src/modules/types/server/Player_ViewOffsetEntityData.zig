pub const Player_ViewOffsetEntityData = extern struct {
    vtable: *anyopaque,
    viewOffsetEntityHandle: valve.EHANDLE, // +0x8 size: 0x4 (0x1 * 0x4) type 13
    lerpInDuration: f32, // +0xc size: 0x4 (0x1 * 0x4) type 1
    lerpOutDuration: f32, // +0x10 size: 0x4 (0x1 * 0x4) type 1
    stabilizePlayerEyeAngles: bool, // +0x14 size: 0x1 (0x1 * 0x1) type 6

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x18);
        try std.testing.expect(@offsetOf(@This(), "viewOffsetEntityHandle") == 0x8);
        try std.testing.expect(@offsetOf(@This(), "lerpInDuration") == 0xc);
        try std.testing.expect(@offsetOf(@This(), "lerpOutDuration") == 0x10);
        try std.testing.expect(@offsetOf(@This(), "stabilizePlayerEyeAngles") == 0x14);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
