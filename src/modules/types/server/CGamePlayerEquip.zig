pub const CGamePlayerEquip = extern struct {
    vtable: *anyopaque,
    CRulePointEntity: abi.Inherit(server.CRulePointEntity),

    m_weaponNames: [32][*:0]u8, // +0x9f0 size: 0x100 (0x20 * 0x8) type 2
    m_weaponCount: [32]i32, // +0xaf0 size: 0x80 (0x20 * 0x4) type 5

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xb70);
        try std.testing.expect(@offsetOf(@This(), "m_weaponNames") == 0x9f0);
        try std.testing.expect(@offsetOf(@This(), "m_weaponCount") == 0xaf0);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");