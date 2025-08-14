pub const CPhysicsProp = extern struct {
    vtable: *anyopaque,
    CBreakableProp: abi.cpp.Inherit(server.CBreakableProp),

    IMultiplayerPhysics: *anyopaque, // +0xfc0 size: 0x8 (0x0 * 0x8) type 0
    m_MotionEnabled: [40]abi.undefined, // +0xfc8 size: 0x28 (0x1 * 0x28) type 11
    m_OnAwakened: [40]abi.undefined, // +0xff0 size: 0x28 (0x1 * 0x28) type 11
    m_OnPhysGunPunt: [40]abi.undefined, // +0x1018 size: 0x28 (0x1 * 0x28) type 11
    m_OnPhysGunOnlyPickup: [40]abi.undefined, // +0x1040 size: 0x28 (0x1 * 0x28) type 11
    m_OnPlayerUse: [40]abi.undefined, // +0x1068 size: 0x28 (0x1 * 0x28) type 11
    m_OnPlayerPickup: [40]abi.undefined, // +0x1090 size: 0x28 (0x1 * 0x28) type 11
    m_OnOutOfWorld: [40]abi.undefined, // +0x10b8 size: 0x28 (0x1 * 0x28) type 11
    m_massScale: f32, // +0x10e0 size: 0x4 (0x1 * 0x4) type 1
    m_inertiaScale: f32, // +0x10e4 size: 0x4 (0x1 * 0x4) type 1
    m_damageType: i32, // +0x10e8 size: 0x4 (0x1 * 0x4) type 5
    gap_10ec: [4]abi.undefined,
    m_iszOverrideScript: [*:0]u8, // +0x10f0 size: 0x8 (0x1 * 0x8) type 2
    m_damageToEnableMotion: i32, // +0x10f8 size: 0x4 (0x1 * 0x4) type 5
    m_flForceToEnableMotion: f32, // +0x10fc size: 0x4 (0x1 * 0x4) type 1
    m_bThrownByPlayer: bool, // +0x1100 size: 0x1 (0x1 * 0x1) type 6
    m_bFirstCollisionAfterLaunch: bool, // +0x1101 size: 0x1 (0x1 * 0x1) type 6
    gap_1102: [2]abi.undefined,
    m_iExploitableByPlayer: i32, // +0x1104 size: 0x4 (0x1 * 0x4) type 5
    m_bHasBeenAwakened: bool, // +0x1108 size: 0x1 (0x1 * 0x1) type 6
    gap_1109: [3]abi.undefined,
    m_fNextCheckDisableMotionContactsTime: valve.time, // +0x110c size: 0x4 (0x1 * 0x4) type 16
    m_bAwake: bool, // +0x1110 size: 0x1 (0x1 * 0x1) type 6
    gap_1111: [3]abi.undefined,
    m_fMass: f32, // +0x1114 size: 0x4 (0x1 * 0x4) type 1
    m_usingCustomCollisionBounds: bool, // +0x1118 size: 0x1 (0x1 * 0x1) type 6
    gap_1119: [3]abi.undefined,
    m_collisionMins: m.Vector3, // +0x111c size: 0xc (0x1 * 0xc) type 3
    m_collisionMaxs: m.Vector3, // +0x1128 size: 0xc (0x1 * 0xc) type 3
    m_bAllowPortalFunnel: bool, // +0x1134 size: 0x1 (0x1 * 0x1) type 6

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x1138);
        try std.testing.expect(@offsetOf(@This(), "IMultiplayerPhysics") == 0xfc0);
        try std.testing.expect(@offsetOf(@This(), "m_MotionEnabled") == 0xfc8);
        try std.testing.expect(@offsetOf(@This(), "m_OnAwakened") == 0xff0);
        try std.testing.expect(@offsetOf(@This(), "m_OnPhysGunPunt") == 0x1018);
        try std.testing.expect(@offsetOf(@This(), "m_OnPhysGunOnlyPickup") == 0x1040);
        try std.testing.expect(@offsetOf(@This(), "m_OnPlayerUse") == 0x1068);
        try std.testing.expect(@offsetOf(@This(), "m_OnPlayerPickup") == 0x1090);
        try std.testing.expect(@offsetOf(@This(), "m_OnOutOfWorld") == 0x10b8);
        try std.testing.expect(@offsetOf(@This(), "m_massScale") == 0x10e0);
        try std.testing.expect(@offsetOf(@This(), "m_inertiaScale") == 0x10e4);
        try std.testing.expect(@offsetOf(@This(), "m_damageType") == 0x10e8);
        try std.testing.expect(@offsetOf(@This(), "m_iszOverrideScript") == 0x10f0);
        try std.testing.expect(@offsetOf(@This(), "m_damageToEnableMotion") == 0x10f8);
        try std.testing.expect(@offsetOf(@This(), "m_flForceToEnableMotion") == 0x10fc);
        try std.testing.expect(@offsetOf(@This(), "m_bThrownByPlayer") == 0x1100);
        try std.testing.expect(@offsetOf(@This(), "m_bFirstCollisionAfterLaunch") == 0x1101);
        try std.testing.expect(@offsetOf(@This(), "m_iExploitableByPlayer") == 0x1104);
        try std.testing.expect(@offsetOf(@This(), "m_bHasBeenAwakened") == 0x1108);
        try std.testing.expect(@offsetOf(@This(), "m_fNextCheckDisableMotionContactsTime") == 0x110c);
        try std.testing.expect(@offsetOf(@This(), "m_bAwake") == 0x1110);
        try std.testing.expect(@offsetOf(@This(), "m_fMass") == 0x1114);
        try std.testing.expect(@offsetOf(@This(), "m_usingCustomCollisionBounds") == 0x1118);
        try std.testing.expect(@offsetOf(@This(), "m_collisionMins") == 0x111c);
        try std.testing.expect(@offsetOf(@This(), "m_collisionMaxs") == 0x1128);
        try std.testing.expect(@offsetOf(@This(), "m_bAllowPortalFunnel") == 0x1134);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
