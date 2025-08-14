pub const CPlayerShared = extern struct {
    vtable: *anyopaque,
    m_nPlayerCond: i32, // +0x8 size: 0x4 (0x1 * 0x4) type 5
    m_bLoadoutUnavailable: bool, // +0xc size: 0x1 (0x1 * 0x1) type 6
    gap_d: [3]abi.undefined,
    m_flCondExpireTimeLeft: [2]f32, // +0x10 size: 0x8 (0x2 * 0x4) type 1
    m_pOuter: *anyopaque, // +0x18 size: 0x8 (0x1 * 0x8) type 31
    m_flNextCritUpdate: valve.time, // +0x20 size: 0x4 (0x1 * 0x4) type 16
    m_flTauntRemoveTime: valve.time, // +0x24 size: 0x4 (0x1 * 0x4) type 16
    m_damageInfo: server.CTakeDamageInfo, // +0x28 size: 0x78 (0x1 * 0x78) type 10

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xa0);
        try std.testing.expect(@offsetOf(@This(), "m_nPlayerCond") == 0x8);
        try std.testing.expect(@offsetOf(@This(), "m_bLoadoutUnavailable") == 0xc);
        try std.testing.expect(@offsetOf(@This(), "m_flCondExpireTimeLeft") == 0x10);
        try std.testing.expect(@offsetOf(@This(), "m_pOuter") == 0x18);
        try std.testing.expect(@offsetOf(@This(), "m_flNextCritUpdate") == 0x20);
        try std.testing.expect(@offsetOf(@This(), "m_flTauntRemoveTime") == 0x24);
        try std.testing.expect(@offsetOf(@This(), "m_damageInfo") == 0x28);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
