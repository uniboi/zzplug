pub const CAI_DynamicLink = extern struct {
    vtable: *anyopaque,
    CBaseEntity: abi.Inherit(server.CBaseEntity),

    m_pNextDynamicLink: *anyopaque, // +0x9e0 size: 0x8 (0x1 * 0x8) type 31
    m_nSrcEditID: i32, // +0x9e8 size: 0x4 (0x1 * 0x4) type 5
    m_nDestEditID: i32, // +0x9ec size: 0x4 (0x1 * 0x4) type 5
    m_nSrcID: i32, // +0x9f0 size: 0x4 (0x1 * 0x4) type 5
    m_nDestID: i32, // +0x9f4 size: 0x4 (0x1 * 0x4) type 5
    m_nLinkState: i32, // +0x9f8 size: 0x4 (0x1 * 0x4) type 5
    gap_9fc: [4]abi.undefined,
    m_strAllowUse: [*:0]u8, // +0xa00 size: 0x8 (0x1 * 0x8) type 2
    m_bInvertAllow: bool, // +0xa08 size: 0x1 (0x1 * 0x1) type 6
    m_bPreciseMovement: bool, // +0xa09 size: 0x1 (0x1 * 0x1) type 6
    m_bFixedUpIds: bool, // +0xa0a size: 0x1 (0x1 * 0x1) type 6
    m_bNotSaved: bool, // +0xa0b size: 0x1 (0x1 * 0x1) type 6
    m_nLinkType: i32, // +0xa0c size: 0x4 (0x1 * 0x4) type 5
    m_nPriority: i32, // +0xa10 size: 0x4 (0x1 * 0x4) type 5

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xa18);
        try std.testing.expect(@offsetOf(@This(), "m_pNextDynamicLink") == 0x9e0);
        try std.testing.expect(@offsetOf(@This(), "m_nSrcEditID") == 0x9e8);
        try std.testing.expect(@offsetOf(@This(), "m_nDestEditID") == 0x9ec);
        try std.testing.expect(@offsetOf(@This(), "m_nSrcID") == 0x9f0);
        try std.testing.expect(@offsetOf(@This(), "m_nDestID") == 0x9f4);
        try std.testing.expect(@offsetOf(@This(), "m_nLinkState") == 0x9f8);
        try std.testing.expect(@offsetOf(@This(), "m_strAllowUse") == 0xa00);
        try std.testing.expect(@offsetOf(@This(), "m_bInvertAllow") == 0xa08);
        try std.testing.expect(@offsetOf(@This(), "m_bPreciseMovement") == 0xa09);
        try std.testing.expect(@offsetOf(@This(), "m_bFixedUpIds") == 0xa0a);
        try std.testing.expect(@offsetOf(@This(), "m_bNotSaved") == 0xa0b);
        try std.testing.expect(@offsetOf(@This(), "m_nLinkType") == 0xa0c);
        try std.testing.expect(@offsetOf(@This(), "m_nPriority") == 0xa10);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
