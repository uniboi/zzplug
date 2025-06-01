pub const DefensivePlacement = extern struct {
    size: f32, // +0x0 size: 0x4 (0x1 * 0x4) type 1
    endTime: valve.time, // +0x4 size: 0x4 (0x1 * 0x4) type 16
    effectiveAngleCos: f32, // +0x8 size: 0x4 (0x1 * 0x4) type 1
    blocksProjectile: bool, // +0xc size: 0x1 (0x1 * 0x1) type 6
    attached: bool, // +0xd size: 0x1 (0x1 * 0x1) type 6
    handlePlacement: bool, // +0xe size: 0x1 (0x1 * 0x1) type 6
    gap_f: [1]abi.undefined,
    pos: m.Vector3, // +0x10 size: 0xc (0x1 * 0xc) type 3
    dir: m.Vector3, // +0x1c size: 0xc (0x1 * 0xc) type 3

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x28);
        try std.testing.expect(@offsetOf(@This(), "size") == 0x0);
        try std.testing.expect(@offsetOf(@This(), "endTime") == 0x4);
        try std.testing.expect(@offsetOf(@This(), "effectiveAngleCos") == 0x8);
        try std.testing.expect(@offsetOf(@This(), "blocksProjectile") == 0xc);
        try std.testing.expect(@offsetOf(@This(), "attached") == 0xd);
        try std.testing.expect(@offsetOf(@This(), "handlePlacement") == 0xe);
        try std.testing.expect(@offsetOf(@This(), "pos") == 0x10);
        try std.testing.expect(@offsetOf(@This(), "dir") == 0x1c);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
