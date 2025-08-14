pub const sky3dparams_t = extern struct {
    vtable: *anyopaque,
    scale: i32, // +0x8 size: 0x4 (0x1 * 0x4) type 5
    cellNum: i32, // +0xc size: 0x4 (0x1 * 0x4) type 5
    useWorldFog: bool, // +0x10 size: 0x1 (0x1 * 0x1) type 6
    gap_11: [7]abi.undefined,
    fog: server.fogparams_t, // +0x18 size: 0x50 (0x1 * 0x50) type 10

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x68);
        try std.testing.expect(@offsetOf(@This(), "scale") == 0x8);
        try std.testing.expect(@offsetOf(@This(), "cellNum") == 0xc);
        try std.testing.expect(@offsetOf(@This(), "useWorldFog") == 0x10);
        try std.testing.expect(@offsetOf(@This(), "fog") == 0x18);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
