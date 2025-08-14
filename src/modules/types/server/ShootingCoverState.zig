pub const ShootingCoverState = extern struct {
    lockedHint: *server.CBaseEntity, // +0x0 size: 0x8 (0x1 * 0x8) type 12
    advancesLeftFromLockedHint: i32, // +0x8 size: 0x4 (0x1 * 0x4) type 5
    burstCount: i32, // +0xc size: 0x4 (0x1 * 0x4) type 5
    burstStartTime: valve.time, // +0x10 size: 0x4 (0x1 * 0x4) type 16
    burstCompletedSuccessfully: bool, // +0x14 size: 0x1 (0x1 * 0x1) type 6
    burstUsingLeanAnims: bool, // +0x15 size: 0x1 (0x1 * 0x1) type 6
    usingPotentialThreatPos: bool, // +0x16 size: 0x1 (0x1 * 0x1) type 6
    gap_17: [1]abi.undefined,
    potentialThreatPos: m.Vector3, // +0x18 size: 0xc (0x1 * 0xc) type 3
    nextMoveToCoverRetryTime: valve.time, // +0x24 size: 0x4 (0x1 * 0x4) type 16
    hasApproxLOSToEnemy_expireTime: valve.time, // +0x28 size: 0x4 (0x1 * 0x4) type 16
    hasApproxLOSToEnemy_checkTime: valve.time, // +0x2c size: 0x4 (0x1 * 0x4) type 16
    recentlyUsedCover: [5]server.RecentlyUsedCover, // +0x30 size: 0x10 (0x5 * 0x3) type 10
    recentlyUsedCoverNewestIdx: i32, // +0x80 size: 0x4 (0x1 * 0x4) type 5
    consecutiveIdleSchedCount: i32, // +0x84 size: 0x4 (0x1 * 0x4) type 5
    numberOfIdlesBeforeSchedCheck: i32, // +0x88 size: 0x4 (0x1 * 0x4) type 5
    onPathToShootingCoverFail_retryTime: valve.time, // +0x8c size: 0x4 (0x1 * 0x4) type 16
    onTooCloseForCover_expireTime: valve.time, // +0x90 size: 0x4 (0x1 * 0x4) type 16

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x98);
        try std.testing.expect(@offsetOf(@This(), "lockedHint") == 0x0);
        try std.testing.expect(@offsetOf(@This(), "advancesLeftFromLockedHint") == 0x8);
        try std.testing.expect(@offsetOf(@This(), "burstCount") == 0xc);
        try std.testing.expect(@offsetOf(@This(), "burstStartTime") == 0x10);
        try std.testing.expect(@offsetOf(@This(), "burstCompletedSuccessfully") == 0x14);
        try std.testing.expect(@offsetOf(@This(), "burstUsingLeanAnims") == 0x15);
        try std.testing.expect(@offsetOf(@This(), "usingPotentialThreatPos") == 0x16);
        try std.testing.expect(@offsetOf(@This(), "potentialThreatPos") == 0x18);
        try std.testing.expect(@offsetOf(@This(), "nextMoveToCoverRetryTime") == 0x24);
        try std.testing.expect(@offsetOf(@This(), "hasApproxLOSToEnemy_expireTime") == 0x28);
        try std.testing.expect(@offsetOf(@This(), "hasApproxLOSToEnemy_checkTime") == 0x2c);
        try std.testing.expect(@offsetOf(@This(), "recentlyUsedCover") == 0x30);
        try std.testing.expect(@offsetOf(@This(), "recentlyUsedCoverNewestIdx") == 0x80);
        try std.testing.expect(@offsetOf(@This(), "consecutiveIdleSchedCount") == 0x84);
        try std.testing.expect(@offsetOf(@This(), "numberOfIdlesBeforeSchedCheck") == 0x88);
        try std.testing.expect(@offsetOf(@This(), "onPathToShootingCoverFail_retryTime") == 0x8c);
        try std.testing.expect(@offsetOf(@This(), "onTooCloseForCover_expireTime") == 0x90);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
