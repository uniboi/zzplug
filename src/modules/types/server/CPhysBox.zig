pub const CPhysBox = extern struct {
    vtable: *anyopaque,
    CBreakable: abi.Inherit(server.CBreakable),

    m_damageType: i32, // +0xae0 size: 0x4 (0x1 * 0x4) type 5
    m_massScale: f32, // +0xae4 size: 0x4 (0x1 * 0x4) type 1
    m_iszOverrideScript: [*:0]u8, // +0xae8 size: 0x8 (0x1 * 0x8) type 2
    m_damageToEnableMotion: i32, // +0xaf0 size: 0x4 (0x1 * 0x4) type 5
    m_flForceToEnableMotion: f32, // +0xaf4 size: 0x4 (0x1 * 0x4) type 1
    m_angPreferredCarryAngles: m.Vector3, // +0xaf8 size: 0xc (0x1 * 0xc) type 3
    m_bNotSolidToWorld: bool, // +0xb04 size: 0x1 (0x1 * 0x1) type 6
    gap_b05: [3]abi.undefined,
    m_iExploitableByPlayer: i32, // +0xb08 size: 0x4 (0x1 * 0x4) type 5
    gap_b0c: [4]abi.undefined,
    m_OnDamaged: [40]abi.undefined, // +0xb10 size: 0x28 (0x1 * 0x28) type 11
    m_OnAwakened: [40]abi.undefined, // +0xb38 size: 0x28 (0x1 * 0x28) type 11
    m_OnMotionEnabled: [40]abi.undefined, // +0xb60 size: 0x28 (0x1 * 0x28) type 11
    m_OnPhysGunPunt: [40]abi.undefined, // +0xb88 size: 0x28 (0x1 * 0x28) type 11
    m_OnPhysGunOnlyPickup: [40]abi.undefined, // +0xbb0 size: 0x28 (0x1 * 0x28) type 11
    m_OnPlayerUse: [40]abi.undefined, // +0xbd8 size: 0x28 (0x1 * 0x28) type 11

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xc00);
        try std.testing.expect(@offsetOf(@This(), "m_damageType") == 0xae0);
        try std.testing.expect(@offsetOf(@This(), "m_massScale") == 0xae4);
        try std.testing.expect(@offsetOf(@This(), "m_iszOverrideScript") == 0xae8);
        try std.testing.expect(@offsetOf(@This(), "m_damageToEnableMotion") == 0xaf0);
        try std.testing.expect(@offsetOf(@This(), "m_flForceToEnableMotion") == 0xaf4);
        try std.testing.expect(@offsetOf(@This(), "m_angPreferredCarryAngles") == 0xaf8);
        try std.testing.expect(@offsetOf(@This(), "m_bNotSolidToWorld") == 0xb04);
        try std.testing.expect(@offsetOf(@This(), "m_iExploitableByPlayer") == 0xb08);
        try std.testing.expect(@offsetOf(@This(), "m_OnDamaged") == 0xb10);
        try std.testing.expect(@offsetOf(@This(), "m_OnAwakened") == 0xb38);
        try std.testing.expect(@offsetOf(@This(), "m_OnMotionEnabled") == 0xb60);
        try std.testing.expect(@offsetOf(@This(), "m_OnPhysGunPunt") == 0xb88);
        try std.testing.expect(@offsetOf(@This(), "m_OnPhysGunOnlyPickup") == 0xbb0);
        try std.testing.expect(@offsetOf(@This(), "m_OnPlayerUse") == 0xbd8);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
