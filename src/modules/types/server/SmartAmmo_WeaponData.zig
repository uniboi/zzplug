pub const SmartAmmo_WeaponData = extern struct {
    vtable: *anyopaque,
    numTargetEntities: i32, // +0x8 size: 0x4 (0x1 * 0x4) type 5
    targetEntities: [8]valve.EHANDLE, // +0xc size: 0x20 (0x8 * 0x4) type 13
    fractions: [8]f32, // +0x2c size: 0x20 (0x8 * 0x4) type 1
    previousFractions: [8]f32, // +0x4c size: 0x20 (0x8 * 0x4) type 1
    currentFractions: [8]f32, // +0x6c size: 0x20 (0x8 * 0x4) type 1
    visiblePoints: [8]i32, // +0x8c size: 0x20 (0x8 * 0x4) type 5
    lastVisibleTimes: [8]f32, // +0xac size: 0x20 (0x8 * 0x4) type 1
    lastFullLockTimes: [8]f32, // +0xcc size: 0x20 (0x8 * 0x4) type 1
    storedTargets: [8]valve.EHANDLE, // +0xec size: 0x20 (0x8 * 0x4) type 13
    lastNewTargetTime: f32, // +0x10c size: 0x4 (0x1 * 0x4) type 1
    trackerCount: i32, // +0x110 size: 0x4 (0x1 * 0x4) type 5
    trackerEntities: [8]valve.EHANDLE, // +0x114 size: 0x20 (0x8 * 0x4) type 13
    trackerLocks: [8]i32, // +0x134 size: 0x20 (0x8 * 0x4) type 5
    trackerTimes: [8]f32, // +0x154 size: 0x20 (0x8 * 0x4) type 1
    gap_174: [4]abi.undefined,
    previousTargetEntities: [10]valve.EHANDLE, // +0x178 size: 0x28 (0x8 * 0x5) type 13
    previousTrackerEntities: [10]valve.EHANDLE, // +0x1a0 size: 0x28 (0x8 * 0x5) type 13
    previousTrackerLocks: [8][5]abi.undefined, // +0x1c8 size: 0x28 (0x8 * 0x5) type 5

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x1f0);
        try std.testing.expect(@offsetOf(@This(), "numTargetEntities") == 0x8);
        try std.testing.expect(@offsetOf(@This(), "targetEntities") == 0xc);
        try std.testing.expect(@offsetOf(@This(), "fractions") == 0x2c);
        try std.testing.expect(@offsetOf(@This(), "previousFractions") == 0x4c);
        try std.testing.expect(@offsetOf(@This(), "currentFractions") == 0x6c);
        try std.testing.expect(@offsetOf(@This(), "visiblePoints") == 0x8c);
        try std.testing.expect(@offsetOf(@This(), "lastVisibleTimes") == 0xac);
        try std.testing.expect(@offsetOf(@This(), "lastFullLockTimes") == 0xcc);
        try std.testing.expect(@offsetOf(@This(), "storedTargets") == 0xec);
        try std.testing.expect(@offsetOf(@This(), "lastNewTargetTime") == 0x10c);
        try std.testing.expect(@offsetOf(@This(), "trackerCount") == 0x110);
        try std.testing.expect(@offsetOf(@This(), "trackerEntities") == 0x114);
        try std.testing.expect(@offsetOf(@This(), "trackerLocks") == 0x134);
        try std.testing.expect(@offsetOf(@This(), "trackerTimes") == 0x154);
        try std.testing.expect(@offsetOf(@This(), "previousTargetEntities") == 0x178);
        try std.testing.expect(@offsetOf(@This(), "previousTrackerEntities") == 0x1a0);
        try std.testing.expect(@offsetOf(@This(), "previousTrackerLocks") == 0x1c8);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
