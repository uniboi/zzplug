pub const Rodeo_PlayerData = extern struct {
    vtable: *anyopaque,
    stage: i32, // +0x8 size: 0x4 (0x1 * 0x4) type 5
    canRodeo: bool, // +0xc size: 0x1 (0x1 * 0x1) type 6
    gap_d: [3]abi.undefined,
    rodeoCountParity: i32, // +0x10 size: 0x4 (0x1 * 0x4) type 5
    startTime: valve.time, // +0x14 size: 0x4 (0x1 * 0x4) type 16
    endTime: valve.time, // +0x18 size: 0x4 (0x1 * 0x4) type 16
    targetEnt: valve.EHANDLE, // +0x1c size: 0x4 (0x1 * 0x4) type 13
    prevEnt: valve.EHANDLE, // +0x20 size: 0x4 (0x1 * 0x4) type 13
    prevEntCooldown: f32, // +0x24 size: 0x4 (0x1 * 0x4) type 1
    pilot1pSequenceIndex: i32, // +0x28 size: 0x4 (0x1 * 0x4) type 5
    pilot3pSequenceIndex: i32, // +0x2c size: 0x4 (0x1 * 0x4) type 5
    targetAttachmentIndex: i32, // +0x30 size: 0x4 (0x1 * 0x4) type 5
    rodeoStabilizeStrength: f32, // +0x34 size: 0x4 (0x1 * 0x4) type 1
    rodeoStabilizeViewFirstFrame: bool, // +0x38 size: 0x1 (0x1 * 0x1) type 6
    gap_39: [3]abi.undefined,
    lastPlayerToWorld: valve.Matrix3x4, // +0x3c size: 0x30 (0x1 * 0x30) type 24
    initialCameraCorrection: m.Quaternion, // +0x6c size: 0x10 (0x1 * 0x10) type 4

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x80);
        try std.testing.expect(@offsetOf(@This(), "stage") == 0x8);
        try std.testing.expect(@offsetOf(@This(), "canRodeo") == 0xc);
        try std.testing.expect(@offsetOf(@This(), "rodeoCountParity") == 0x10);
        try std.testing.expect(@offsetOf(@This(), "startTime") == 0x14);
        try std.testing.expect(@offsetOf(@This(), "endTime") == 0x18);
        try std.testing.expect(@offsetOf(@This(), "targetEnt") == 0x1c);
        try std.testing.expect(@offsetOf(@This(), "prevEnt") == 0x20);
        try std.testing.expect(@offsetOf(@This(), "prevEntCooldown") == 0x24);
        try std.testing.expect(@offsetOf(@This(), "pilot1pSequenceIndex") == 0x28);
        try std.testing.expect(@offsetOf(@This(), "pilot3pSequenceIndex") == 0x2c);
        try std.testing.expect(@offsetOf(@This(), "targetAttachmentIndex") == 0x30);
        try std.testing.expect(@offsetOf(@This(), "rodeoStabilizeStrength") == 0x34);
        try std.testing.expect(@offsetOf(@This(), "rodeoStabilizeViewFirstFrame") == 0x38);
        try std.testing.expect(@offsetOf(@This(), "lastPlayerToWorld") == 0x3c);
        try std.testing.expect(@offsetOf(@This(), "initialCameraCorrection") == 0x6c);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
