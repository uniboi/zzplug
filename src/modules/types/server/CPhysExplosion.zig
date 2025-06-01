pub const CPhysExplosion = extern struct {
    vtable: *anyopaque,
    CBaseEntity: abi.Inherit(server.CBaseEntity),

    m_damage: f32, // +0x9e0 size: 0x4 (0x1 * 0x4) type 1
    m_radius: f32, // +0x9e4 size: 0x4 (0x1 * 0x4) type 1
    m_targetEntityName: [*:0]u8, // +0x9e8 size: 0x8 (0x1 * 0x8) type 2
    m_flInnerRadius: f32, // +0x9f0 size: 0x4 (0x1 * 0x4) type 1
    m_scriptDamageInfo_m_scriptDamageType: i32, // +0x9f4 size: 0x4 (0x1 * 0x4) type 5
    m_scriptDamageInfo_m_damageSourceIdentifier: i32, // +0x9f8 size: 0x4 (0x1 * 0x4) type 5
    m_scriptDamageInfo_m_scriptAttackerClass: i32, // +0x9fc size: 0x4 (0x1 * 0x4) type 5
    m_OnPushedPlayer: [40]abi.undefined, // +0xa00 size: 0x28 (0x1 * 0x28) type 11

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xa28);
        try std.testing.expect(@offsetOf(@This(), "m_damage") == 0x9e0);
        try std.testing.expect(@offsetOf(@This(), "m_radius") == 0x9e4);
        try std.testing.expect(@offsetOf(@This(), "m_targetEntityName") == 0x9e8);
        try std.testing.expect(@offsetOf(@This(), "m_flInnerRadius") == 0x9f0);
        try std.testing.expect(@offsetOf(@This(), "m_scriptDamageInfo_m_scriptDamageType") == 0x9f4);
        try std.testing.expect(@offsetOf(@This(), "m_scriptDamageInfo_m_damageSourceIdentifier") == 0x9f8);
        try std.testing.expect(@offsetOf(@This(), "m_scriptDamageInfo_m_scriptAttackerClass") == 0x9fc);
        try std.testing.expect(@offsetOf(@This(), "m_OnPushedPlayer") == 0xa00);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
