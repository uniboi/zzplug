pub const ClassModValues = extern struct {
    health: f32, // +0x0 size: 0x4 (0x1 * 0x4) type 1
    healthShield: f32, // +0x4 size: 0x4 (0x1 * 0x4) type 1
    healthDoomed: f32, // +0x8 size: 0x4 (0x1 * 0x4) type 1
    healthPerSegment: f32, // +0xc size: 0x4 (0x1 * 0x4) type 1
    powerRegenRate: f32, // +0x10 size: 0x4 (0x1 * 0x4) type 1
    dodgeDuration: f32, // +0x14 size: 0x4 (0x1 * 0x4) type 1
    dodgeSpeed: f32, // +0x18 size: 0x4 (0x1 * 0x4) type 1
    dodgePowerDrain: f32, // +0x1c size: 0x4 (0x1 * 0x4) type 1
    smartAmmoLockTimeModifier: f32, // +0x20 size: 0x4 (0x1 * 0x4) type 1
    wallrunAccelerateVertical: f32, // +0x24 size: 0x4 (0x1 * 0x4) type 1
    wallrunAccelerateHorizontal: f32, // +0x28 size: 0x4 (0x1 * 0x4) type 1
    wallrunMaxSpeedHorizontal: f32, // +0x2c size: 0x4 (0x1 * 0x4) type 1
    wallrun_timeLimit: f32, // +0x30 size: 0x4 (0x1 * 0x4) type 1
    wallrun_hangTimeLimit: f32, // +0x34 size: 0x4 (0x1 * 0x4) type 1
    wallrunAllowed: bool, // +0x38 size: 0x1 (0x1 * 0x1) type 6
    gap_39: [3]abi.undefined,
    wallrunAdsType: i32, // +0x3c size: 0x4 (0x1 * 0x4) type 5
    doubleJumpAllowed: bool, // +0x40 size: 0x1 (0x1 * 0x1) type 6
    gap_41: [3]abi.undefined,
    pitchMaxUp: f32, // +0x44 size: 0x4 (0x1 * 0x4) type 1
    pitchMaxDown: f32, // +0x48 size: 0x4 (0x1 * 0x4) type 1
    mantlePitchLeveling: bool, // +0x4c size: 0x1 (0x1 * 0x1) type 6
    dodgeAllowed: bool, // +0x4d size: 0x1 (0x1 * 0x1) type 6
    sprintAllowed: bool, // +0x4e size: 0x1 (0x1 * 0x1) type 6
    stealthSounds: bool, // +0x4f size: 0x1 (0x1 * 0x1) type 6
    hoverEnabled: bool, // +0x50 size: 0x1 (0x1 * 0x1) type 6
    gap_51: [3]abi.undefined,
    grapple_power_regen_delay: f32, // +0x54 size: 0x4 (0x1 * 0x4) type 1
    grapple_power_regen_rate: f32, // +0x58 size: 0x4 (0x1 * 0x4) type 1
    slideFOVScale: f32, // +0x5c size: 0x4 (0x1 * 0x4) type 1
    slideFOVLerpInTime: f32, // +0x60 size: 0x4 (0x1 * 0x4) type 1
    slideFOVLerpOutTime: f32, // +0x64 size: 0x4 (0x1 * 0x4) type 1
    airSlowMoSpeed: f32, // +0x68 size: 0x4 (0x1 * 0x4) type 1
    sharedEnergyTotal: i32, // +0x6c size: 0x4 (0x1 * 0x4) type 5
    sharedEnergyRegenRate: f32, // +0x70 size: 0x4 (0x1 * 0x4) type 1

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x74);
        try std.testing.expect(@offsetOf(@This(), "health") == 0x0);
        try std.testing.expect(@offsetOf(@This(), "healthShield") == 0x4);
        try std.testing.expect(@offsetOf(@This(), "healthDoomed") == 0x8);
        try std.testing.expect(@offsetOf(@This(), "healthPerSegment") == 0xc);
        try std.testing.expect(@offsetOf(@This(), "powerRegenRate") == 0x10);
        try std.testing.expect(@offsetOf(@This(), "dodgeDuration") == 0x14);
        try std.testing.expect(@offsetOf(@This(), "dodgeSpeed") == 0x18);
        try std.testing.expect(@offsetOf(@This(), "dodgePowerDrain") == 0x1c);
        try std.testing.expect(@offsetOf(@This(), "smartAmmoLockTimeModifier") == 0x20);
        try std.testing.expect(@offsetOf(@This(), "wallrunAccelerateVertical") == 0x24);
        try std.testing.expect(@offsetOf(@This(), "wallrunAccelerateHorizontal") == 0x28);
        try std.testing.expect(@offsetOf(@This(), "wallrunMaxSpeedHorizontal") == 0x2c);
        try std.testing.expect(@offsetOf(@This(), "wallrun_timeLimit") == 0x30);
        try std.testing.expect(@offsetOf(@This(), "wallrun_hangTimeLimit") == 0x34);
        try std.testing.expect(@offsetOf(@This(), "wallrunAllowed") == 0x38);
        try std.testing.expect(@offsetOf(@This(), "wallrunAdsType") == 0x3c);
        try std.testing.expect(@offsetOf(@This(), "doubleJumpAllowed") == 0x40);
        try std.testing.expect(@offsetOf(@This(), "pitchMaxUp") == 0x44);
        try std.testing.expect(@offsetOf(@This(), "pitchMaxDown") == 0x48);
        try std.testing.expect(@offsetOf(@This(), "mantlePitchLeveling") == 0x4c);
        try std.testing.expect(@offsetOf(@This(), "dodgeAllowed") == 0x4d);
        try std.testing.expect(@offsetOf(@This(), "sprintAllowed") == 0x4e);
        try std.testing.expect(@offsetOf(@This(), "stealthSounds") == 0x4f);
        try std.testing.expect(@offsetOf(@This(), "hoverEnabled") == 0x50);
        try std.testing.expect(@offsetOf(@This(), "grapple_power_regen_delay") == 0x54);
        try std.testing.expect(@offsetOf(@This(), "grapple_power_regen_rate") == 0x58);
        try std.testing.expect(@offsetOf(@This(), "slideFOVScale") == 0x5c);
        try std.testing.expect(@offsetOf(@This(), "slideFOVLerpInTime") == 0x60);
        try std.testing.expect(@offsetOf(@This(), "slideFOVLerpOutTime") == 0x64);
        try std.testing.expect(@offsetOf(@This(), "airSlowMoSpeed") == 0x68);
        try std.testing.expect(@offsetOf(@This(), "sharedEnergyTotal") == 0x6c);
        try std.testing.expect(@offsetOf(@This(), "sharedEnergyRegenRate") == 0x70);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
