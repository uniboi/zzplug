pub const CWorld = extern struct {
    vtable: *anyopaque,
    CBaseEntity: abi.Inherit(server.CBaseEntity),

    m_WorldMins: m.Vector3, // +0x9e0 size: 0xc (0x1 * 0xc) type 3
    m_WorldMaxs: m.Vector3, // +0x9ec size: 0xc (0x1 * 0xc) type 3
    m_bStartDark: bool, // +0x9f8 size: 0x1 (0x1 * 0x1) type 6
    gap_9f9: [3]abi.undefined,
    m_statusEffectsGenerationNV: i32, // +0x9fc size: 0x4 (0x1 * 0x4) type 5
    m_worldFlags: i32, // +0xa00 size: 0x4 (0x1 * 0x4) type 5
    m_timeshiftArmDeviceSkin: i32, // +0xa04 size: 0x4 (0x1 * 0x4) type 5
    m_spTitanLoadoutUnlocks: i32, // +0xa08 size: 0x4 (0x1 * 0x4) type 5
    m_bDisplayTitle: bool, // +0xa0c size: 0x1 (0x1 * 0x1) type 6

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xa10);
        try std.testing.expect(@offsetOf(@This(), "m_WorldMins") == 0x9e0);
        try std.testing.expect(@offsetOf(@This(), "m_WorldMaxs") == 0x9ec);
        try std.testing.expect(@offsetOf(@This(), "m_bStartDark") == 0x9f8);
        try std.testing.expect(@offsetOf(@This(), "m_statusEffectsGenerationNV") == 0x9fc);
        try std.testing.expect(@offsetOf(@This(), "m_worldFlags") == 0xa00);
        try std.testing.expect(@offsetOf(@This(), "m_timeshiftArmDeviceSkin") == 0xa04);
        try std.testing.expect(@offsetOf(@This(), "m_spTitanLoadoutUnlocks") == 0xa08);
        try std.testing.expect(@offsetOf(@This(), "m_bDisplayTitle") == 0xa0c);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
