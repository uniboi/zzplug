pub const fogplayerparamsstate_t = extern struct {
    vtable: *anyopaque,
    enable: bool, // +0x8 size: 0x1 (0x1 * 0x1) type 6
    gap_9: [3]abi.undefined,
    botAlt: f32, // +0xc size: 0x4 (0x1 * 0x4) type 1
    topAlt: f32, // +0x10 size: 0x4 (0x1 * 0x4) type 1
    halfDistBot: f32, // +0x14 size: 0x4 (0x1 * 0x4) type 1
    halfDistTop: f32, // +0x18 size: 0x4 (0x1 * 0x4) type 1
    distOffset: f32, // +0x1c size: 0x4 (0x1 * 0x4) type 1
    densityScale: f32, // +0x20 size: 0x4 (0x1 * 0x4) type 1
    halfAngleDeg: f32, // +0x24 size: 0x4 (0x1 * 0x4) type 1
    distColorStr: f32, // +0x28 size: 0x4 (0x1 * 0x4) type 1
    dirColorStr: f32, // +0x2c size: 0x4 (0x1 * 0x4) type 1
    HDRColorScale: f32, // +0x30 size: 0x4 (0x1 * 0x4) type 1
    minFadeTime: f32, // +0x34 size: 0x4 (0x1 * 0x4) type 1
    forceOntoSky: bool, // +0x38 size: 0x1 (0x1 * 0x1) type 6
    distColor: valve.Color32, // +0x39 size: 0x4 (0x1 * 0x4) type 9
    dirColor: valve.Color32, // +0x3d size: 0x4 (0x1 * 0x4) type 9
    gap_41: [3]abi.undefined,
    direction: m.Vector3, // +0x44 size: 0xc (0x1 * 0xc) type 3
    id: i32, // +0x50 size: 0x4 (0x1 * 0x4) type 5

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x58);
        try std.testing.expect(@offsetOf(@This(), "enable") == 0x8);
        try std.testing.expect(@offsetOf(@This(), "botAlt") == 0xc);
        try std.testing.expect(@offsetOf(@This(), "topAlt") == 0x10);
        try std.testing.expect(@offsetOf(@This(), "halfDistBot") == 0x14);
        try std.testing.expect(@offsetOf(@This(), "halfDistTop") == 0x18);
        try std.testing.expect(@offsetOf(@This(), "distOffset") == 0x1c);
        try std.testing.expect(@offsetOf(@This(), "densityScale") == 0x20);
        try std.testing.expect(@offsetOf(@This(), "halfAngleDeg") == 0x24);
        try std.testing.expect(@offsetOf(@This(), "distColorStr") == 0x28);
        try std.testing.expect(@offsetOf(@This(), "dirColorStr") == 0x2c);
        try std.testing.expect(@offsetOf(@This(), "HDRColorScale") == 0x30);
        try std.testing.expect(@offsetOf(@This(), "minFadeTime") == 0x34);
        try std.testing.expect(@offsetOf(@This(), "forceOntoSky") == 0x38);
        try std.testing.expect(@offsetOf(@This(), "distColor") == 0x39);
        try std.testing.expect(@offsetOf(@This(), "dirColor") == 0x3d);
        try std.testing.expect(@offsetOf(@This(), "direction") == 0x44);
        try std.testing.expect(@offsetOf(@This(), "id") == 0x50);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
