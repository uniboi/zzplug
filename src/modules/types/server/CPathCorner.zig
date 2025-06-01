pub const CPathCorner = extern struct {
    vtable: *anyopaque,
    CBaseEntity: abi.Inherit(server.CBaseEntity),

    m_scriptFuncName: [*:0]u8, // +0x9e0 size: 0x8 (0x1 * 0x8) type 2
    m_forkTarget: [*:0]u8, // +0x9e8 size: 0x8 (0x1 * 0x8) type 2
    m_forkChance: i32, // +0x9f0 size: 0x4 (0x1 * 0x4) type 5
    m_searchPathID: i32, // +0x9f4 size: 0x4 (0x1 * 0x4) type 5
    m_previous: *server.CBaseEntity, // +0x9f8 size: 0x8 (0x1 * 0x8) type 12
    m_next: *server.CBaseEntity, // +0xa00 size: 0x8 (0x1 * 0x8) type 12
    m_flWaitTime: f32, // +0xa08 size: 0x4 (0x1 * 0x4) type 1
    gap_a0c: [4]abi.undefined,
    m_OnPass: [40]abi.undefined, // +0xa10 size: 0x28 (0x1 * 0x28) type 11

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xa38);
        try std.testing.expect(@offsetOf(@This(), "m_scriptFuncName") == 0x9e0);
        try std.testing.expect(@offsetOf(@This(), "m_forkTarget") == 0x9e8);
        try std.testing.expect(@offsetOf(@This(), "m_forkChance") == 0x9f0);
        try std.testing.expect(@offsetOf(@This(), "m_searchPathID") == 0x9f4);
        try std.testing.expect(@offsetOf(@This(), "m_previous") == 0x9f8);
        try std.testing.expect(@offsetOf(@This(), "m_next") == 0xa00);
        try std.testing.expect(@offsetOf(@This(), "m_flWaitTime") == 0xa08);
        try std.testing.expect(@offsetOf(@This(), "m_OnPass") == 0xa10);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
