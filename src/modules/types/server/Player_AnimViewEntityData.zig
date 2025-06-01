pub const Player_AnimViewEntityData = extern struct {
    vtable: *anyopaque,
    animViewEntityHandle: valve.EHANDLE, // +0x8 size: 0x4 (0x1 * 0x4) type 13
    animViewEntityAngleLerpInDuration: f32, // +0xc size: 0x4 (0x1 * 0x4) type 1
    animViewEntityOriginLerpInDuration: f32, // +0x10 size: 0x4 (0x1 * 0x4) type 1
    animViewEntityLerpOutDuration: f32, // +0x14 size: 0x4 (0x1 * 0x4) type 1
    animViewEntityStabilizePlayerEyeAngles: bool, // +0x18 size: 0x1 (0x1 * 0x1) type 6
    gap_19: [3]abi.undefined,
    animViewEntityThirdPersonCameraParity: i32, // +0x1c size: 0x4 (0x1 * 0x4) type 5
    animViewEntityThirdPersonCameraAttachment: [6]i32, // +0x20 size: 0x18 (0x6 * 0x4) type 5
    animViewEntityNumThirdPersonCameraAttachments: i32, // +0x38 size: 0x4 (0x1 * 0x4) type 5
    animViewEntityThirdPersonCameraVisibilityChecks: bool, // +0x3c size: 0x1 (0x1 * 0x1) type 6
    gap_3d: [3]abi.undefined,
    animViewEntityParity: i32, // +0x40 size: 0x4 (0x1 * 0x4) type 5
    lastAnimViewEntityParity: i32, // +0x44 size: 0x4 (0x1 * 0x4) type 5
    animViewEntityCameraPosition: m.Vector3, // +0x48 size: 0xc (0x1 * 0xc) type 3
    animViewEntityCameraAngles: m.Vector3, // +0x54 size: 0xc (0x1 * 0xc) type 3
    animViewEntityBlendStartTime: f32, // +0x60 size: 0x4 (0x1 * 0x4) type 1
    animViewEntityBlendStartEyePosition: m.Vector3, // +0x64 size: 0xc (0x1 * 0xc) type 3
    animViewEntityBlendStartEyeAngles: m.Vector3, // +0x70 size: 0xc (0x1 * 0xc) type 3

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x80);
        try std.testing.expect(@offsetOf(@This(), "animViewEntityHandle") == 0x8);
        try std.testing.expect(@offsetOf(@This(), "animViewEntityAngleLerpInDuration") == 0xc);
        try std.testing.expect(@offsetOf(@This(), "animViewEntityOriginLerpInDuration") == 0x10);
        try std.testing.expect(@offsetOf(@This(), "animViewEntityLerpOutDuration") == 0x14);
        try std.testing.expect(@offsetOf(@This(), "animViewEntityStabilizePlayerEyeAngles") == 0x18);
        try std.testing.expect(@offsetOf(@This(), "animViewEntityThirdPersonCameraParity") == 0x1c);
        try std.testing.expect(@offsetOf(@This(), "animViewEntityThirdPersonCameraAttachment") == 0x20);
        try std.testing.expect(@offsetOf(@This(), "animViewEntityNumThirdPersonCameraAttachments") == 0x38);
        try std.testing.expect(@offsetOf(@This(), "animViewEntityThirdPersonCameraVisibilityChecks") == 0x3c);
        try std.testing.expect(@offsetOf(@This(), "animViewEntityParity") == 0x40);
        try std.testing.expect(@offsetOf(@This(), "lastAnimViewEntityParity") == 0x44);
        try std.testing.expect(@offsetOf(@This(), "animViewEntityCameraPosition") == 0x48);
        try std.testing.expect(@offsetOf(@This(), "animViewEntityCameraAngles") == 0x54);
        try std.testing.expect(@offsetOf(@This(), "animViewEntityBlendStartTime") == 0x60);
        try std.testing.expect(@offsetOf(@This(), "animViewEntityBlendStartEyePosition") == 0x64);
        try std.testing.expect(@offsetOf(@This(), "animViewEntityBlendStartEyeAngles") == 0x70);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
