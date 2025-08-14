pub const PlayerMelee_PlayerData = extern struct {
    vtable: *anyopaque,
    attackActive: bool, // +0x8 size: 0x1 (0x1 * 0x1) type 6
    attackRecoveryShouldBeQuick: bool, // +0x9 size: 0x1 (0x1 * 0x1) type 6
    gap_a: [2]abi.undefined,
    attackStartTime: valve.time, // +0xc size: 0x4 (0x1 * 0x4) type 16
    attackHitEntity: valve.EHANDLE, // +0x10 size: 0x4 (0x1 * 0x4) type 13
    attackHitEntityTime: valve.time, // +0x14 size: 0x4 (0x1 * 0x4) type 16
    attackLastHitNonWorldEntity: valve.time, // +0x18 size: 0x4 (0x1 * 0x4) type 16
    scriptedState: i32, // +0x1c size: 0x4 (0x1 * 0x4) type 5
    pendingMeleePress: bool, // +0x20 size: 0x1 (0x1 * 0x1) type 6

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x28);
        try std.testing.expect(@offsetOf(@This(), "attackActive") == 0x8);
        try std.testing.expect(@offsetOf(@This(), "attackRecoveryShouldBeQuick") == 0x9);
        try std.testing.expect(@offsetOf(@This(), "attackStartTime") == 0xc);
        try std.testing.expect(@offsetOf(@This(), "attackHitEntity") == 0x10);
        try std.testing.expect(@offsetOf(@This(), "attackHitEntityTime") == 0x14);
        try std.testing.expect(@offsetOf(@This(), "attackLastHitNonWorldEntity") == 0x18);
        try std.testing.expect(@offsetOf(@This(), "scriptedState") == 0x1c);
        try std.testing.expect(@offsetOf(@This(), "pendingMeleePress") == 0x20);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
