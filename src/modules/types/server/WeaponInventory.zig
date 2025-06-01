pub const WeaponInventory = extern struct {
    vtable: *anyopaque,
    weapons: [4]valve.EHANDLE, // +0x8 size: 0x10 (0x4 * 0x4) type 13
    activeWeapon: valve.EHANDLE, // +0x18 size: 0x4 (0x1 * 0x4) type 13
    offhandWeapons: [6]valve.EHANDLE, // +0x1c size: 0x18 (0x6 * 0x4) type 13

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x38);
        try std.testing.expect(@offsetOf(@This(), "weapons") == 0x8);
        try std.testing.expect(@offsetOf(@This(), "activeWeapon") == 0x18);
        try std.testing.expect(@offsetOf(@This(), "offhandWeapons") == 0x1c);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");