pub const StatusEffectTimedData = extern struct {
    vtable: *anyopaque,
    seComboVars: i32, // +0x8 size: 0x4 (0x1 * 0x4) type 5
    seTimeEnd: valve.time, // +0xc size: 0x4 (0x1 * 0x4) type 16
    seEaseOut: f32, // +0x10 size: 0x4 (0x1 * 0x4) type 1

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x18);
        try std.testing.expect(@offsetOf(@This(), "seComboVars") == 0x8);
        try std.testing.expect(@offsetOf(@This(), "seTimeEnd") == 0xc);
        try std.testing.expect(@offsetOf(@This(), "seEaseOut") == 0x10);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
