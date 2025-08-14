pub const CGameGibManager = extern struct {
    vtable: *anyopaque,
    CBaseEntity: abi.cpp.Inherit(server.CBaseEntity),

    m_LRU: [48]abi.undefined, // +0x9e0 size: 0x30 (0x1 * 0x30) type 0
    m_bAllowNewGibs: bool, // +0xa10 size: 0x1 (0x1 * 0x1) type 6
    gap_a11: [3]abi.undefined,
    m_iCurrentMaxPieces: i32, // +0xa14 size: 0x4 (0x1 * 0x4) type 5
    m_iMaxPieces: i32, // +0xa18 size: 0x4 (0x1 * 0x4) type 5
    m_iLastFrame: i32, // +0xa1c size: 0x4 (0x1 * 0x4) type 5

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xa20);
        try std.testing.expect(@offsetOf(@This(), "m_LRU") == 0x9e0);
        try std.testing.expect(@offsetOf(@This(), "m_bAllowNewGibs") == 0xa10);
        try std.testing.expect(@offsetOf(@This(), "m_iCurrentMaxPieces") == 0xa14);
        try std.testing.expect(@offsetOf(@This(), "m_iMaxPieces") == 0xa18);
        try std.testing.expect(@offsetOf(@This(), "m_iLastFrame") == 0xa1c);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
