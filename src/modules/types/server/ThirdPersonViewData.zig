pub const ThirdPersonViewData = extern struct {
    vtable: *anyopaque,
    m_thirdPersonEntViewOffset: m.Vector3, // +0x8 size: 0xc (0x1 * 0xc) type 3
    m_thirdPersonEntPitchIsFreelook: bool, // +0x14 size: 0x1 (0x1 * 0x1) type 6
    m_thirdPersonEntYawIsFreelook: bool, // +0x15 size: 0x1 (0x1 * 0x1) type 6
    m_thirdPersonEntUseFixedDist: bool, // +0x16 size: 0x1 (0x1 * 0x1) type 6
    m_thirdPersonEntPushedInByGeo: bool, // +0x17 size: 0x1 (0x1 * 0x1) type 6
    m_thirdPersonEntDrawViewmodel: bool, // +0x18 size: 0x1 (0x1 * 0x1) type 6
    gap_19: [3]abi.undefined,
    m_thirdPersonEntBlendTotalDuration: f32, // +0x1c size: 0x4 (0x1 * 0x4) type 1
    m_thirdPersonEntBlendEaseInDuration: f32, // +0x20 size: 0x4 (0x1 * 0x4) type 1
    m_thirdPersonEntBlendEaseOutDuration: f32, // +0x24 size: 0x4 (0x1 * 0x4) type 1
    m_thirdPersonEntFixedPitch: f32, // +0x28 size: 0x4 (0x1 * 0x4) type 1
    m_thirdPersonEntFixedYaw: f32, // +0x2c size: 0x4 (0x1 * 0x4) type 1
    m_thirdPersonEntFixedDist: f32, // +0x30 size: 0x4 (0x1 * 0x4) type 1
    m_thirdPersonEntMinYaw: f32, // +0x34 size: 0x4 (0x1 * 0x4) type 1
    m_thirdPersonEntMaxYaw: f32, // +0x38 size: 0x4 (0x1 * 0x4) type 1
    m_thirdPersonEntMinPitch: f32, // +0x3c size: 0x4 (0x1 * 0x4) type 1
    m_thirdPersonEntMaxPitch: f32, // +0x40 size: 0x4 (0x1 * 0x4) type 1
    m_thirdPersonEntSpringToCenterRate: f32, // +0x44 size: 0x4 (0x1 * 0x4) type 1
    m_thirdPersonEntLookaheadLowerEntSpeed: f32, // +0x48 size: 0x4 (0x1 * 0x4) type 1
    m_thirdPersonEntLookaheadUpperEntSpeed: f32, // +0x4c size: 0x4 (0x1 * 0x4) type 1
    m_thirdPersonEntLookaheadMaxAngle: f32, // +0x50 size: 0x4 (0x1 * 0x4) type 1
    m_thirdPersonEntLookaheadLerpAheadRate: f32, // +0x54 size: 0x4 (0x1 * 0x4) type 1
    m_thirdPersonEntLookaheadLerpToCenterRate: f32, // +0x58 size: 0x4 (0x1 * 0x4) type 1

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x60);
        try std.testing.expect(@offsetOf(@This(), "m_thirdPersonEntViewOffset") == 0x8);
        try std.testing.expect(@offsetOf(@This(), "m_thirdPersonEntPitchIsFreelook") == 0x14);
        try std.testing.expect(@offsetOf(@This(), "m_thirdPersonEntYawIsFreelook") == 0x15);
        try std.testing.expect(@offsetOf(@This(), "m_thirdPersonEntUseFixedDist") == 0x16);
        try std.testing.expect(@offsetOf(@This(), "m_thirdPersonEntPushedInByGeo") == 0x17);
        try std.testing.expect(@offsetOf(@This(), "m_thirdPersonEntDrawViewmodel") == 0x18);
        try std.testing.expect(@offsetOf(@This(), "m_thirdPersonEntBlendTotalDuration") == 0x1c);
        try std.testing.expect(@offsetOf(@This(), "m_thirdPersonEntBlendEaseInDuration") == 0x20);
        try std.testing.expect(@offsetOf(@This(), "m_thirdPersonEntBlendEaseOutDuration") == 0x24);
        try std.testing.expect(@offsetOf(@This(), "m_thirdPersonEntFixedPitch") == 0x28);
        try std.testing.expect(@offsetOf(@This(), "m_thirdPersonEntFixedYaw") == 0x2c);
        try std.testing.expect(@offsetOf(@This(), "m_thirdPersonEntFixedDist") == 0x30);
        try std.testing.expect(@offsetOf(@This(), "m_thirdPersonEntMinYaw") == 0x34);
        try std.testing.expect(@offsetOf(@This(), "m_thirdPersonEntMaxYaw") == 0x38);
        try std.testing.expect(@offsetOf(@This(), "m_thirdPersonEntMinPitch") == 0x3c);
        try std.testing.expect(@offsetOf(@This(), "m_thirdPersonEntMaxPitch") == 0x40);
        try std.testing.expect(@offsetOf(@This(), "m_thirdPersonEntSpringToCenterRate") == 0x44);
        try std.testing.expect(@offsetOf(@This(), "m_thirdPersonEntLookaheadLowerEntSpeed") == 0x48);
        try std.testing.expect(@offsetOf(@This(), "m_thirdPersonEntLookaheadUpperEntSpeed") == 0x4c);
        try std.testing.expect(@offsetOf(@This(), "m_thirdPersonEntLookaheadMaxAngle") == 0x50);
        try std.testing.expect(@offsetOf(@This(), "m_thirdPersonEntLookaheadLerpAheadRate") == 0x54);
        try std.testing.expect(@offsetOf(@This(), "m_thirdPersonEntLookaheadLerpToCenterRate") == 0x58);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
