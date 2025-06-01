pub const CPlayerState = extern struct {
    vtable: *anyopaque,
    currentClass: i32, // +0x8 size: 0x4 (0x1 * 0x4) type 5
    requestedClass: i32, // +0xc size: 0x4 (0x1 * 0x4) type 5
    onDeathClass: i32, // +0x10 size: 0x4 (0x1 * 0x4) type 5
    oldClass: i32, // +0x14 size: 0x4 (0x1 * 0x4) type 5
    a_angle: m.Vector3, // +0x18 size: 0xc (0x1 * 0xc) type 3
    gap_24: [4]abi.undefined,
    netname: [*:0]u8, // +0x28 size: 0x8 (0x1 * 0x8) type 2
    fixangle: i32, // +0x30 size: 0x4 (0x1 * 0x4) type 5
    anglechange: m.Vector3, // +0x34 size: 0xc (0x1 * 0xc) type 3
    index: i32, // +0x40 size: 0x4 (0x1 * 0x4) type 5
    replay: bool, // +0x44 size: 0x1 (0x1 * 0x1) type 6
    gap_45: [3]abi.undefined,
    lastPlayerView_tickcount: i32, // +0x48 size: 0x4 (0x1 * 0x4) type 5
    lastPlayerView_origin: m.Vector3, // +0x4c size: 0xc (0x1 * 0xc) type 3
    lastPlayerView_angle: m.Vector3, // +0x58 size: 0xc (0x1 * 0xc) type 3
    deadflag: bool, // +0x64 size: 0x1 (0x1 * 0x1) type 6
    gap_65: [3]abi.undefined,
    localViewAngles: m.Vector3, // +0x68 size: 0xc (0x1 * 0xc) type 3
    worldViewAngles: m.Vector3, // +0x74 size: 0xc (0x1 * 0xc) type 3

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x80);
        try std.testing.expect(@offsetOf(@This(), "currentClass") == 0x8);
        try std.testing.expect(@offsetOf(@This(), "requestedClass") == 0xc);
        try std.testing.expect(@offsetOf(@This(), "onDeathClass") == 0x10);
        try std.testing.expect(@offsetOf(@This(), "oldClass") == 0x14);
        try std.testing.expect(@offsetOf(@This(), "a_angle") == 0x18);
        try std.testing.expect(@offsetOf(@This(), "netname") == 0x28);
        try std.testing.expect(@offsetOf(@This(), "fixangle") == 0x30);
        try std.testing.expect(@offsetOf(@This(), "anglechange") == 0x34);
        try std.testing.expect(@offsetOf(@This(), "index") == 0x40);
        try std.testing.expect(@offsetOf(@This(), "replay") == 0x44);
        try std.testing.expect(@offsetOf(@This(), "lastPlayerView_tickcount") == 0x48);
        try std.testing.expect(@offsetOf(@This(), "lastPlayerView_origin") == 0x4c);
        try std.testing.expect(@offsetOf(@This(), "lastPlayerView_angle") == 0x58);
        try std.testing.expect(@offsetOf(@This(), "deadflag") == 0x64);
        try std.testing.expect(@offsetOf(@This(), "localViewAngles") == 0x68);
        try std.testing.expect(@offsetOf(@This(), "worldViewAngles") == 0x74);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
