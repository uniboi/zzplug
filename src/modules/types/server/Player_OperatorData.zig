pub const Player_OperatorData = extern struct {
    vtable: *anyopaque,
    diving: bool, // +0x8 size: 0x1 (0x1 * 0x1) type 6
    cameraEnabled: bool, // +0x9 size: 0x1 (0x1 * 0x1) type 6
    gap_a: [2]abi.undefined,
    minPitch: f32, // +0xc size: 0x4 (0x1 * 0x4) type 1
    maxPitch: f32, // +0x10 size: 0x4 (0x1 * 0x4) type 1
    followDistance: f32, // +0x14 size: 0x4 (0x1 * 0x4) type 1
    followHeight: f32, // +0x18 size: 0x4 (0x1 * 0x4) type 1
    shootFromPlayer: bool, // +0x1c size: 0x1 (0x1 * 0x1) type 6
    gap_1d: [3]abi.undefined,
    smoothDuration: f32, // +0x20 size: 0x4 (0x1 * 0x4) type 1
    smoothFollowDistanceStartTime: valve.time, // +0x24 size: 0x4 (0x1 * 0x4) type 16
    smoothFollowDistanceStartValue: f32, // +0x28 size: 0x4 (0x1 * 0x4) type 1
    smoothFollowDistanceEndValue: f32, // +0x2c size: 0x4 (0x1 * 0x4) type 1
    smoothFollowHeightStartTime: valve.time, // +0x30 size: 0x4 (0x1 * 0x4) type 16
    smoothFollowHeightStartValue: f32, // +0x34 size: 0x4 (0x1 * 0x4) type 1
    smoothFollowHeightEndValue: f32, // +0x38 size: 0x4 (0x1 * 0x4) type 1
    smoothMinPitchStartTime: valve.time, // +0x3c size: 0x4 (0x1 * 0x4) type 16
    smoothMinPitchStartValue: f32, // +0x40 size: 0x4 (0x1 * 0x4) type 1
    smoothMinPitchEndValue: f32, // +0x44 size: 0x4 (0x1 * 0x4) type 1
    smoothMaxPitchStartTime: valve.time, // +0x48 size: 0x4 (0x1 * 0x4) type 16
    smoothMaxPitchStartValue: f32, // +0x4c size: 0x4 (0x1 * 0x4) type 1
    smoothMaxPitchEndValue: f32, // +0x50 size: 0x4 (0x1 * 0x4) type 1
    forceDefaultFloorHeight: bool, // +0x54 size: 0x1 (0x1 * 0x1) type 6
    gap_55: [3]abi.undefined,
    defaultFloorHeight: f32, // +0x58 size: 0x4 (0x1 * 0x4) type 1
    ignoreWorldForMovement: bool, // +0x5c size: 0x1 (0x1 * 0x1) type 6
    ignoreWorldForFloorTrace: bool, // +0x5d size: 0x1 (0x1 * 0x1) type 6
    gap_5e: [2]abi.undefined,
    moveGridSizeScale: f32, // +0x60 size: 0x4 (0x1 * 0x4) type 1
    moveFloorHeightOffset: f32, // +0x64 size: 0x4 (0x1 * 0x4) type 1
    jumpIsDodge: bool, // +0x68 size: 0x1 (0x1 * 0x1) type 6
    gap_69: [3]abi.undefined,
    jumpAcceleration: f32, // +0x6c size: 0x4 (0x1 * 0x4) type 1
    jumpMaxSpeed: f32, // +0x70 size: 0x4 (0x1 * 0x4) type 1
    hoverAcceleration: f32, // +0x74 size: 0x4 (0x1 * 0x4) type 1
    hoverMaxSpeed: f32, // +0x78 size: 0x4 (0x1 * 0x4) type 1

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x80);
        try std.testing.expect(@offsetOf(@This(), "diving") == 0x8);
        try std.testing.expect(@offsetOf(@This(), "cameraEnabled") == 0x9);
        try std.testing.expect(@offsetOf(@This(), "minPitch") == 0xc);
        try std.testing.expect(@offsetOf(@This(), "maxPitch") == 0x10);
        try std.testing.expect(@offsetOf(@This(), "followDistance") == 0x14);
        try std.testing.expect(@offsetOf(@This(), "followHeight") == 0x18);
        try std.testing.expect(@offsetOf(@This(), "shootFromPlayer") == 0x1c);
        try std.testing.expect(@offsetOf(@This(), "smoothDuration") == 0x20);
        try std.testing.expect(@offsetOf(@This(), "smoothFollowDistanceStartTime") == 0x24);
        try std.testing.expect(@offsetOf(@This(), "smoothFollowDistanceStartValue") == 0x28);
        try std.testing.expect(@offsetOf(@This(), "smoothFollowDistanceEndValue") == 0x2c);
        try std.testing.expect(@offsetOf(@This(), "smoothFollowHeightStartTime") == 0x30);
        try std.testing.expect(@offsetOf(@This(), "smoothFollowHeightStartValue") == 0x34);
        try std.testing.expect(@offsetOf(@This(), "smoothFollowHeightEndValue") == 0x38);
        try std.testing.expect(@offsetOf(@This(), "smoothMinPitchStartTime") == 0x3c);
        try std.testing.expect(@offsetOf(@This(), "smoothMinPitchStartValue") == 0x40);
        try std.testing.expect(@offsetOf(@This(), "smoothMinPitchEndValue") == 0x44);
        try std.testing.expect(@offsetOf(@This(), "smoothMaxPitchStartTime") == 0x48);
        try std.testing.expect(@offsetOf(@This(), "smoothMaxPitchStartValue") == 0x4c);
        try std.testing.expect(@offsetOf(@This(), "smoothMaxPitchEndValue") == 0x50);
        try std.testing.expect(@offsetOf(@This(), "forceDefaultFloorHeight") == 0x54);
        try std.testing.expect(@offsetOf(@This(), "defaultFloorHeight") == 0x58);
        try std.testing.expect(@offsetOf(@This(), "ignoreWorldForMovement") == 0x5c);
        try std.testing.expect(@offsetOf(@This(), "ignoreWorldForFloorTrace") == 0x5d);
        try std.testing.expect(@offsetOf(@This(), "moveGridSizeScale") == 0x60);
        try std.testing.expect(@offsetOf(@This(), "moveFloorHeightOffset") == 0x64);
        try std.testing.expect(@offsetOf(@This(), "jumpIsDodge") == 0x68);
        try std.testing.expect(@offsetOf(@This(), "jumpAcceleration") == 0x6c);
        try std.testing.expect(@offsetOf(@This(), "jumpMaxSpeed") == 0x70);
        try std.testing.expect(@offsetOf(@This(), "hoverAcceleration") == 0x74);
        try std.testing.expect(@offsetOf(@This(), "hoverMaxSpeed") == 0x78);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
