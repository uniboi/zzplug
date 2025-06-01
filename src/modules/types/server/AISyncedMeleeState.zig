pub const AISyncedMeleeState = extern struct {
    desiredMelee: *anyopaque, // +0x0 size: 0x8 (0x1 * 0x8) type 0
    additionalYaw: f32, // +0x8 size: 0x4 (0x1 * 0x4) type 1
    meleePartner: valve.EHANDLE, // +0xc size: 0x4 (0x1 * 0x4) type 13
    ragdollOnInterrupt: bool, // +0x10 size: 0x1 (0x1 * 0x1) type 6
    continueAnimToFinish: bool, // +0x11 size: 0x1 (0x1 * 0x1) type 6
    gap_12: [6]abi.undefined,
    debouncedMelees: [48]abi.undefined, // +0x18 size: 0x30 (0x1 * 0x30) type 11
    pressToInitiate_debounceExpireTime: valve.time, // +0x48 size: 0x4 (0x1 * 0x4) type 16
    pressToInitiate_pos: m.Vector3, // +0x4c size: 0xc (0x1 * 0xc) type 15
    pressToInitiate_dist: f32, // +0x58 size: 0x4 (0x1 * 0x4) type 1

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x60);
        try std.testing.expect(@offsetOf(@This(), "desiredMelee") == 0x0);
        try std.testing.expect(@offsetOf(@This(), "additionalYaw") == 0x8);
        try std.testing.expect(@offsetOf(@This(), "meleePartner") == 0xc);
        try std.testing.expect(@offsetOf(@This(), "ragdollOnInterrupt") == 0x10);
        try std.testing.expect(@offsetOf(@This(), "continueAnimToFinish") == 0x11);
        try std.testing.expect(@offsetOf(@This(), "debouncedMelees") == 0x18);
        try std.testing.expect(@offsetOf(@This(), "pressToInitiate_debounceExpireTime") == 0x48);
        try std.testing.expect(@offsetOf(@This(), "pressToInitiate_pos") == 0x4c);
        try std.testing.expect(@offsetOf(@This(), "pressToInitiate_dist") == 0x58);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
