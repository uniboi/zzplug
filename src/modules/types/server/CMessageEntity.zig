pub const CMessageEntity = extern struct {
    vtable: *anyopaque,
    CBaseEntity: abi.Inherit(server.CBaseEntity),

    m_radius: i32, // +0x9e0 size: 0x4 (0x1 * 0x4) type 5
    gap_9e4: [4]abi.undefined,
    m_messageText: [*:0]u8, // +0x9e8 size: 0x8 (0x1 * 0x8) type 2
    m_drawText: bool, // +0x9f0 size: 0x1 (0x1 * 0x1) type 6
    m_bDeveloperOnly: bool, // +0x9f1 size: 0x1 (0x1 * 0x1) type 6
    m_bEnabled: bool, // +0x9f2 size: 0x1 (0x1 * 0x1) type 6

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x9f8);
        try std.testing.expect(@offsetOf(@This(), "m_radius") == 0x9e0);
        try std.testing.expect(@offsetOf(@This(), "m_messageText") == 0x9e8);
        try std.testing.expect(@offsetOf(@This(), "m_drawText") == 0x9f0);
        try std.testing.expect(@offsetOf(@This(), "m_bDeveloperOnly") == 0x9f1);
        try std.testing.expect(@offsetOf(@This(), "m_bEnabled") == 0x9f2);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
