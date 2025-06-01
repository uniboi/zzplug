pub const HintNodeData = extern struct {
    strEntityName: [*:0]u8, // +0x0 size: 0x8 (0x1 * 0x8) type 2
    vecPosition: m.Vector3, // +0x8 size: 0xc (0x1 * 0xc) type 3
    nHintType: i16, // +0x14 size: 0x2 (0x1 * 0x2) type 7
    gap_16: [2]abi.undefined,
    nNodeID: i32, // +0x18 size: 0x4 (0x1 * 0x4) type 5
    gap_1c: [4]abi.undefined,
    strGroup: [*:0]u8, // +0x20 size: 0x8 (0x1 * 0x8) type 2
    iszGenericType: [*:0]u8, // +0x28 size: 0x8 (0x1 * 0x8) type 2
    iszActivityName: [*:0]u8, // +0x30 size: 0x8 (0x1 * 0x8) type 2
    nTargetWCNodeID: i32, // +0x38 size: 0x4 (0x1 * 0x4) type 5
    fIgnoreFacing: i32, // +0x3c size: 0x4 (0x1 * 0x4) type 5
    minState: i32, // +0x40 size: 0x4 (0x1 * 0x4) type 5
    maxState: i32, // +0x44 size: 0x4 (0x1 * 0x4) type 5
    nRadius: i32, // +0x48 size: 0x4 (0x1 * 0x4) type 5
    nWCNodeID: i32, // +0x4c size: 0x4 (0x1 * 0x4) type 5

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x50);
        try std.testing.expect(@offsetOf(@This(), "strEntityName") == 0x0);
        try std.testing.expect(@offsetOf(@This(), "vecPosition") == 0x8);
        try std.testing.expect(@offsetOf(@This(), "nHintType") == 0x14);
        try std.testing.expect(@offsetOf(@This(), "nNodeID") == 0x18);
        try std.testing.expect(@offsetOf(@This(), "strGroup") == 0x20);
        try std.testing.expect(@offsetOf(@This(), "iszGenericType") == 0x28);
        try std.testing.expect(@offsetOf(@This(), "iszActivityName") == 0x30);
        try std.testing.expect(@offsetOf(@This(), "nTargetWCNodeID") == 0x38);
        try std.testing.expect(@offsetOf(@This(), "fIgnoreFacing") == 0x3c);
        try std.testing.expect(@offsetOf(@This(), "minState") == 0x40);
        try std.testing.expect(@offsetOf(@This(), "maxState") == 0x44);
        try std.testing.expect(@offsetOf(@This(), "nRadius") == 0x48);
        try std.testing.expect(@offsetOf(@This(), "nWCNodeID") == 0x4c);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
