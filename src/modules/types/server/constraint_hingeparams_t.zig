pub const constraint_hingeparams_t = extern struct {
    worldPosition: m.Vector3, // +0x0 size: 0xc (0x1 * 0xc) type 3
    worldAxisDirection: m.Vector3, // +0xc size: 0xc (0x1 * 0xc) type 3
    hingeAxis: server.constraint_axislimit_t, // +0x18 size: 0x10 (0x1 * 0x10) type 10
    constraint: server.constraint_breakableparams_t, // +0x28 size: 0x18 (0x1 * 0x18) type 10

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x40);
        try std.testing.expect(@offsetOf(@This(), "worldPosition") == 0x0);
        try std.testing.expect(@offsetOf(@This(), "worldAxisDirection") == 0xc);
        try std.testing.expect(@offsetOf(@This(), "hingeAxis") == 0x18);
        try std.testing.expect(@offsetOf(@This(), "constraint") == 0x28);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
