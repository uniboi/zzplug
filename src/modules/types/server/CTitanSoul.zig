pub const CTitanSoul = extern struct {
    vtable: *anyopaque,
    CBaseEntity: abi.cpp.Inherit(server.CBaseEntity),

    m_titanSoulScriptNetData: valve.EHANDLE, // +0x9e0 size: 0x4 (0x1 * 0x4) type 13
    m_defensivePlacement: server.DefensivePlacement, // +0x9e4 size: 0x28 (0x1 * 0x28) type 10
    m_lastRodeoHitTime: valve.time, // +0xa0c size: 0x4 (0x1 * 0x4) type 16
    m_stance: i32, // +0xa10 size: 0x4 (0x1 * 0x4) type 5
    m_playerSettingsNum: i32, // +0xa14 size: 0x4 (0x1 * 0x4) type 5
    m_doomed: bool, // +0xa18 size: 0x1 (0x1 * 0x1) type 6
    m_invalidHealthBarEnt: bool, // +0xa19 size: 0x1 (0x1 * 0x1) type 6
    m_bEjecting: bool, // +0xa1a size: 0x1 (0x1 * 0x1) type 6
    m_isValidRodeoTarget: bool, // +0xa1b size: 0x1 (0x1 * 0x1) type 6
    m_nextCoreChargeAvailable: f32, // +0xa1c size: 0x4 (0x1 * 0x4) type 1
    m_coreChargeExpireTime: valve.time, // +0xa20 size: 0x4 (0x1 * 0x4) type 16
    m_coreChargeStartTime: valve.time, // +0xa24 size: 0x4 (0x1 * 0x4) type 16
    m_coreUseDuration: valve.time, // +0xa28 size: 0x4 (0x1 * 0x4) type 16
    m_damageComboLatestUpdateTime: valve.time, // +0xa2c size: 0x4 (0x1 * 0x4) type 16
    m_damageComboStartHealth: i32, // +0xa30 size: 0x4 (0x1 * 0x4) type 5
    gap_a34: [4]abi.undefined,
    m_statusEffectsTimedTitanSoulNV: [10]server.StatusEffectTimedData, // +0xa38 size: 0x18 (0xa * 0x2) type 10
    m_statusEffectsEndlessTitanSoulNV: [10]server.StatusEffectEndlessData, // +0xb28 size: 0x10 (0xa * 0x1) type 10
    m_titan: valve.EHANDLE, // +0xbc8 size: 0x4 (0x1 * 0x4) type 13

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xbd0);
        try std.testing.expect(@offsetOf(@This(), "m_titanSoulScriptNetData") == 0x9e0);
        try std.testing.expect(@offsetOf(@This(), "m_defensivePlacement") == 0x9e4);
        try std.testing.expect(@offsetOf(@This(), "m_lastRodeoHitTime") == 0xa0c);
        try std.testing.expect(@offsetOf(@This(), "m_stance") == 0xa10);
        try std.testing.expect(@offsetOf(@This(), "m_playerSettingsNum") == 0xa14);
        try std.testing.expect(@offsetOf(@This(), "m_doomed") == 0xa18);
        try std.testing.expect(@offsetOf(@This(), "m_invalidHealthBarEnt") == 0xa19);
        try std.testing.expect(@offsetOf(@This(), "m_bEjecting") == 0xa1a);
        try std.testing.expect(@offsetOf(@This(), "m_isValidRodeoTarget") == 0xa1b);
        try std.testing.expect(@offsetOf(@This(), "m_nextCoreChargeAvailable") == 0xa1c);
        try std.testing.expect(@offsetOf(@This(), "m_coreChargeExpireTime") == 0xa20);
        try std.testing.expect(@offsetOf(@This(), "m_coreChargeStartTime") == 0xa24);
        try std.testing.expect(@offsetOf(@This(), "m_coreUseDuration") == 0xa28);
        try std.testing.expect(@offsetOf(@This(), "m_damageComboLatestUpdateTime") == 0xa2c);
        try std.testing.expect(@offsetOf(@This(), "m_damageComboStartHealth") == 0xa30);
        try std.testing.expect(@offsetOf(@This(), "m_statusEffectsTimedTitanSoulNV") == 0xa38);
        try std.testing.expect(@offsetOf(@This(), "m_statusEffectsEndlessTitanSoulNV") == 0xb28);
        try std.testing.expect(@offsetOf(@This(), "m_titan") == 0xbc8);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
