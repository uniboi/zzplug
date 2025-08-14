pub const CWindowHint = extern struct {
    vtable: *anyopaque,
    CGameplayHint: abi.cpp.Inherit(server.CGameplayHint),

    normal: m.Vector3, // +0x9e8 size: 0xc (0x1 * 0xc) type 3
    right: m.Vector3, // +0x9f4 size: 0xc (0x1 * 0xc) type 3
    halfSize: [2]f32, // +0xa00 size: 0x8 (0x2 * 0x4) type 1

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xa08);
        try std.testing.expect(@offsetOf(@This(), "normal") == 0x9e8);
        try std.testing.expect(@offsetOf(@This(), "right") == 0x9f4);
        try std.testing.expect(@offsetOf(@This(), "halfSize") == 0xa00);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
