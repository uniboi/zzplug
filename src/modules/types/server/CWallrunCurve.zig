pub const CWallrunCurve = extern struct {
    vtable: *anyopaque,
    CGameplayHint: abi.Inherit(server.CGameplayHint),

    width: i32, // +0x9e8 size: 0x4 (0x1 * 0x4) type 5
    height: i32, // +0x9ec size: 0x4 (0x1 * 0x4) type 5
    controlPoints: [32]abi.undefined, // +0x9f0 size: 0x20 (0x1 * 0x20) type 11

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xa10);
        try std.testing.expect(@offsetOf(@This(), "width") == 0x9e8);
        try std.testing.expect(@offsetOf(@This(), "height") == 0x9ec);
        try std.testing.expect(@offsetOf(@This(), "controlPoints") == 0x9f0);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
