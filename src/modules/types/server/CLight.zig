pub const CLight = extern struct {
    vtable: *anyopaque,
    CBaseEntity: abi.Inherit(server.CBaseEntity),

    m_iStyle: i32, // +0x9e0 size: 0x4 (0x1 * 0x4) type 5
    m_iDefaultStyle: i32, // +0x9e4 size: 0x4 (0x1 * 0x4) type 5
    m_iszPattern: [*:0]u8, // +0x9e8 size: 0x8 (0x1 * 0x8) type 2
    m_iCurrentFade: u8, // +0x9f0 size: 0x1 (0x1 * 0x1) type 8
    m_iTargetFade: u8, // +0x9f1 size: 0x1 (0x1 * 0x1) type 8

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x9f8);
        try std.testing.expect(@offsetOf(@This(), "m_iStyle") == 0x9e0);
        try std.testing.expect(@offsetOf(@This(), "m_iDefaultStyle") == 0x9e4);
        try std.testing.expect(@offsetOf(@This(), "m_iszPattern") == 0x9e8);
        try std.testing.expect(@offsetOf(@This(), "m_iCurrentFade") == 0x9f0);
        try std.testing.expect(@offsetOf(@This(), "m_iTargetFade") == 0x9f1);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");