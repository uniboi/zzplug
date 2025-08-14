pub const CSpawner = extern struct {
    vtable: *anyopaque,
    CBaseEntity: abi.cpp.Inherit(server.CBaseEntity),

    m_spawnCount: i64, // +0x9e0 size: 0x8 (0x1 * 0x8) type 29
    m_spawnScriptCallback: [8]abi.undefined, // +0x9e8 size: 0x8 (0x1 * 0x8) type 11
    m_spawnEntityClassName: [32]abi.undefined, // +0x9f0 size: 0x20 (0x1 * 0x20) type 0
    m_spawnEntityKeyValues: [48]abi.undefined, // +0xa10 size: 0x30 (0x1 * 0x30) type 0

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xa40);
        try std.testing.expect(@offsetOf(@This(), "m_spawnCount") == 0x9e0);
        try std.testing.expect(@offsetOf(@This(), "m_spawnScriptCallback") == 0x9e8);
        try std.testing.expect(@offsetOf(@This(), "m_spawnEntityClassName") == 0x9f0);
        try std.testing.expect(@offsetOf(@This(), "m_spawnEntityKeyValues") == 0xa10);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
