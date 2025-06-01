pub const CTriggerHurt = extern struct {
    vtable: *anyopaque,
    CBaseTrigger: abi.Inherit(server.CBaseTrigger),

    m_flOriginalDamage: f32, // +0xc60 size: 0x4 (0x1 * 0x4) type 1
    m_flDamage: f32, // +0xc64 size: 0x4 (0x1 * 0x4) type 1
    m_flDamageCap: f32, // +0xc68 size: 0x4 (0x1 * 0x4) type 1
    m_flLastDmgTime: valve.time, // +0xc6c size: 0x4 (0x1 * 0x4) type 16
    m_flDmgResetTime: valve.time, // +0xc70 size: 0x4 (0x1 * 0x4) type 16
    m_bitsDamageInflict: i32, // +0xc74 size: 0x4 (0x1 * 0x4) type 5
    m_damageModel: i32, // +0xc78 size: 0x4 (0x1 * 0x4) type 5
    gap_c7c: [4]abi.undefined,
    m_OnHurt: [40]abi.undefined, // +0xc80 size: 0x28 (0x1 * 0x28) type 11
    m_OnHurtPlayer: [40]abi.undefined, // +0xca8 size: 0x28 (0x1 * 0x28) type 11
    m_hurtEntities: [32]abi.undefined, // +0xcd0 size: 0x20 (0x1 * 0x20) type 11
    m_scriptDamageInfo: server.ScriptOriginatedDamageInfo, // +0xcf0 size: 0xc (0x1 * 0xc) type 10

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xd00);
        try std.testing.expect(@offsetOf(@This(), "m_flOriginalDamage") == 0xc60);
        try std.testing.expect(@offsetOf(@This(), "m_flDamage") == 0xc64);
        try std.testing.expect(@offsetOf(@This(), "m_flDamageCap") == 0xc68);
        try std.testing.expect(@offsetOf(@This(), "m_flLastDmgTime") == 0xc6c);
        try std.testing.expect(@offsetOf(@This(), "m_flDmgResetTime") == 0xc70);
        try std.testing.expect(@offsetOf(@This(), "m_bitsDamageInflict") == 0xc74);
        try std.testing.expect(@offsetOf(@This(), "m_damageModel") == 0xc78);
        try std.testing.expect(@offsetOf(@This(), "m_OnHurt") == 0xc80);
        try std.testing.expect(@offsetOf(@This(), "m_OnHurtPlayer") == 0xca8);
        try std.testing.expect(@offsetOf(@This(), "m_hurtEntities") == 0xcd0);
        try std.testing.expect(@offsetOf(@This(), "m_scriptDamageInfo") == 0xcf0);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
