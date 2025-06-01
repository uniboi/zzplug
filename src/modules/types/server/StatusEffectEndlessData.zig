pub const StatusEffectEndlessData = extern struct {
    vtable: *anyopaque,
    seComboVars: i32, // +0x8 size: 0x4 (0x1 * 0x4) type 5

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x10);
        try std.testing.expect(@offsetOf(@This(), "seComboVars") == 0x8);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");