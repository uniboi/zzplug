pub const WeaponDropInfo = extern struct {
    weaponPosition: m.Vector3, // +0x0 size: 0xc (0x1 * 0xc) type 3
    prevDropFrameCounter: u8, // +0xc size: 0x1 (0x1 * 0x1) type 8
    dropFrameCounter: u8, // +0xd size: 0x1 (0x1 * 0x1) type 8
    gap_e: [2]abi.undefined,
    weaponAngles: m.Vector3, // +0x10 size: 0xc (0x1 * 0xc) type 3
    weaponPositionTime: valve.time, // +0x1c size: 0x4 (0x1 * 0x4) type 16

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x20);
        try std.testing.expect(@offsetOf(@This(), "weaponPosition") == 0x0);
        try std.testing.expect(@offsetOf(@This(), "prevDropFrameCounter") == 0xc);
        try std.testing.expect(@offsetOf(@This(), "dropFrameCounter") == 0xd);
        try std.testing.expect(@offsetOf(@This(), "weaponAngles") == 0x10);
        try std.testing.expect(@offsetOf(@This(), "weaponPositionTime") == 0x1c);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
