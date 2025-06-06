pub const CGameText = extern struct {
    vtable: *anyopaque,
    CRulePointEntity: abi.Inherit(server.CRulePointEntity),

    m_iszMessage: [*:0]u8, // +0x9f0 size: 0x8 (0x1 * 0x8) type 2
    m_textParms: server.hudtextparms_s, // +0x9f8 size: 0x28 (0x1 * 0x28) type 10

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xa20);
        try std.testing.expect(@offsetOf(@This(), "m_iszMessage") == 0x9f0);
        try std.testing.expect(@offsetOf(@This(), "m_textParms") == 0x9f8);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
