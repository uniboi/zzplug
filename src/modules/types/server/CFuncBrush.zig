pub const CFuncBrush = extern struct {
    vtable: *anyopaque,
    CBaseEntity: abi.cpp.Inherit(server.CBaseEntity),

    m_iSolidity: i32, // +0x9e0 size: 0x4 (0x1 * 0x4) type 5
    m_iDisabled: i32, // +0x9e4 size: 0x4 (0x1 * 0x4) type 5
    m_iszExcludedClass: [*:0]u8, // +0x9e8 size: 0x8 (0x1 * 0x8) type 2
    m_bInvertExclusion: bool, // +0x9f0 size: 0x1 (0x1 * 0x1) type 6

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x9f8);
        try std.testing.expect(@offsetOf(@This(), "m_iSolidity") == 0x9e0);
        try std.testing.expect(@offsetOf(@This(), "m_iDisabled") == 0x9e4);
        try std.testing.expect(@offsetOf(@This(), "m_iszExcludedClass") == 0x9e8);
        try std.testing.expect(@offsetOf(@This(), "m_bInvertExclusion") == 0x9f0);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
