pub const CPlayerDecoy = extern struct {
    vtable: *anyopaque,
    CBaseAnimating: abi.Inherit(server.CBaseAnimating),

    m_currentState: i32, // +0xeb8 size: 0x4 (0x1 * 0x4) type 5
    m_decoyFlags: i32, // +0xebc size: 0x4 (0x1 * 0x4) type 5
    m_lastPulseTime: valve.time, // +0xec0 size: 0x4 (0x1 * 0x4) type 16
    m_previousState: i32, // +0xec4 size: 0x4 (0x1 * 0x4) type 5
    m_deathTime: valve.time, // +0xec8 size: 0x4 (0x1 * 0x4) type 16
    m_removeTime: valve.time, // +0xecc size: 0x4 (0x1 * 0x4) type 16
    m_npcSoundTime: valve.time, // +0xed0 size: 0x4 (0x1 * 0x4) type 16
    m_npcSoundIndex: i32, // +0xed4 size: 0x4 (0x1 * 0x4) type 5
    m_fakeWeapon: valve.EHANDLE, // +0xed8 size: 0x4 (0x1 * 0x4) type 13
    m_stowedWeapon: valve.EHANDLE, // +0xedc size: 0x4 (0x1 * 0x4) type 13
    m_runSpeed: f32, // +0xee0 size: 0x4 (0x1 * 0x4) type 1
    m_sprintSpeed: f32, // +0xee4 size: 0x4 (0x1 * 0x4) type 1
    m_jumpHeight: f32, // +0xee8 size: 0x4 (0x1 * 0x4) type 1
    m_wallrunJumpStrength: f32, // +0xeec size: 0x4 (0x1 * 0x4) type 1
    m_jumpTime: valve.time, // +0xef0 size: 0x4 (0x1 * 0x4) type 16
    m_nextFlickerTime: valve.time, // +0xef4 size: 0x4 (0x1 * 0x4) type 16
    m_flickerRate: f32, // +0xef8 size: 0x4 (0x1 * 0x4) type 1
    m_curSpeed: f32, // +0xefc size: 0x4 (0x1 * 0x4) type 1
    m_slideEndTime: valve.time, // +0xf00 size: 0x4 (0x1 * 0x4) type 16
    m_animEndTime: valve.time, // +0xf04 size: 0x4 (0x1 * 0x4) type 16
    m_decoyHeight: f32, // +0xf08 size: 0x4 (0x1 * 0x4) type 1
    m_pulseRate: f32, // +0xf0c size: 0x4 (0x1 * 0x4) type 1
    m_nextPulseTime: valve.time, // +0xf10 size: 0x4 (0x1 * 0x4) type 16
    m_upDir: m.Vector3, // +0xf14 size: 0xc (0x1 * 0xc) type 3
    modifiers: [64]abi.undefined, // +0xf20 size: 0x40 (0x1a * 0x2) type 31

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xf60);
        try std.testing.expect(@offsetOf(@This(), "m_currentState") == 0xeb8);
        try std.testing.expect(@offsetOf(@This(), "m_decoyFlags") == 0xebc);
        try std.testing.expect(@offsetOf(@This(), "m_lastPulseTime") == 0xec0);
        try std.testing.expect(@offsetOf(@This(), "m_previousState") == 0xec4);
        try std.testing.expect(@offsetOf(@This(), "m_deathTime") == 0xec8);
        try std.testing.expect(@offsetOf(@This(), "m_removeTime") == 0xecc);
        try std.testing.expect(@offsetOf(@This(), "m_npcSoundTime") == 0xed0);
        try std.testing.expect(@offsetOf(@This(), "m_npcSoundIndex") == 0xed4);
        try std.testing.expect(@offsetOf(@This(), "m_fakeWeapon") == 0xed8);
        try std.testing.expect(@offsetOf(@This(), "m_stowedWeapon") == 0xedc);
        try std.testing.expect(@offsetOf(@This(), "m_runSpeed") == 0xee0);
        try std.testing.expect(@offsetOf(@This(), "m_sprintSpeed") == 0xee4);
        try std.testing.expect(@offsetOf(@This(), "m_jumpHeight") == 0xee8);
        try std.testing.expect(@offsetOf(@This(), "m_wallrunJumpStrength") == 0xeec);
        try std.testing.expect(@offsetOf(@This(), "m_jumpTime") == 0xef0);
        try std.testing.expect(@offsetOf(@This(), "m_nextFlickerTime") == 0xef4);
        try std.testing.expect(@offsetOf(@This(), "m_flickerRate") == 0xef8);
        try std.testing.expect(@offsetOf(@This(), "m_curSpeed") == 0xefc);
        try std.testing.expect(@offsetOf(@This(), "m_slideEndTime") == 0xf00);
        try std.testing.expect(@offsetOf(@This(), "m_animEndTime") == 0xf04);
        try std.testing.expect(@offsetOf(@This(), "m_decoyHeight") == 0xf08);
        try std.testing.expect(@offsetOf(@This(), "m_pulseRate") == 0xf0c);
        try std.testing.expect(@offsetOf(@This(), "m_nextPulseTime") == 0xf10);
        try std.testing.expect(@offsetOf(@This(), "m_upDir") == 0xf14);
        try std.testing.expect(@offsetOf(@This(), "modifiers") == 0xf20);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
