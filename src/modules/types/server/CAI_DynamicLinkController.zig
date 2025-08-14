pub const CAI_DynamicLinkController = extern struct {
    vtable: *anyopaque,
    CBaseEntity: abi.cpp.Inherit(server.CBaseEntity),

    m_ControlledLinks: [32]abi.undefined, // +0x9e0 size: 0x20 (0x1 * 0x20) type 0
    m_nLinkState: i32, // +0xa00 size: 0x4 (0x1 * 0x4) type 5
    gap_a04: [4]abi.undefined,
    m_strAllowUse: [*:0]u8, // +0xa08 size: 0x8 (0x1 * 0x8) type 2
    m_nPriority: i32, // +0xa10 size: 0x4 (0x1 * 0x4) type 5
    m_bInvertAllow: bool, // +0xa14 size: 0x1 (0x1 * 0x1) type 6
    m_bUseAirLinkRadius: bool, // +0xa15 size: 0x1 (0x1 * 0x1) type 6

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xa18);
        try std.testing.expect(@offsetOf(@This(), "m_ControlledLinks") == 0x9e0);
        try std.testing.expect(@offsetOf(@This(), "m_nLinkState") == 0xa00);
        try std.testing.expect(@offsetOf(@This(), "m_strAllowUse") == 0xa08);
        try std.testing.expect(@offsetOf(@This(), "m_nPriority") == 0xa10);
        try std.testing.expect(@offsetOf(@This(), "m_bInvertAllow") == 0xa14);
        try std.testing.expect(@offsetOf(@This(), "m_bUseAirLinkRadius") == 0xa15);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
