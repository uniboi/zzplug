pub const CNPC_Soldier = extern struct {
    vtable: *anyopaque,
    CAI_Combatant: abi.Inherit(server.CAI_Combatant),

    m_lastRunAwayCheckTime: f32, // +0x2500 size: 0x4 (0x1 * 0x4) type 1
    m_burstsBeforeRunAway: u8, // +0x2504 size: 0x1 (0x1 * 0x1) type 8

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x2508);
        try std.testing.expect(@offsetOf(@This(), "m_lastRunAwayCheckTime") == 0x2500);
        try std.testing.expect(@offsetOf(@This(), "m_burstsBeforeRunAway") == 0x2504);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
