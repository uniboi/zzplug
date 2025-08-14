pub const MissilePathExpandContractSettings = extern struct {
    launchOutVec: m.Vector3, // +0x0 size: 0xc (0x1 * 0xc) type 3
    launchInVec: m.Vector3, // +0xc size: 0xc (0x1 * 0xc) type 3
    launchOutTime: valve.time, // +0x18 size: 0x4 (0x1 * 0x4) type 16
    launchInLerpTime: valve.time, // +0x1c size: 0x4 (0x1 * 0x4) type 16
    launchInTime: valve.time, // +0x20 size: 0x4 (0x1 * 0x4) type 16
    launchStraightLerpTime: valve.time, // +0x24 size: 0x4 (0x1 * 0x4) type 16
    endPos: m.Vector3, // +0x28 size: 0xc (0x1 * 0xc) type 3
    applyRandSpread: bool, // +0x34 size: 0x1 (0x1 * 0x1) type 6

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x38);
        try std.testing.expect(@offsetOf(@This(), "launchOutVec") == 0x0);
        try std.testing.expect(@offsetOf(@This(), "launchInVec") == 0xc);
        try std.testing.expect(@offsetOf(@This(), "launchOutTime") == 0x18);
        try std.testing.expect(@offsetOf(@This(), "launchInLerpTime") == 0x1c);
        try std.testing.expect(@offsetOf(@This(), "launchInTime") == 0x20);
        try std.testing.expect(@offsetOf(@This(), "launchStraightLerpTime") == 0x24);
        try std.testing.expect(@offsetOf(@This(), "endPos") == 0x28);
        try std.testing.expect(@offsetOf(@This(), "applyRandSpread") == 0x34);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
