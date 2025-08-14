pub const CPathTrack = extern struct {
    vtable: *anyopaque,
    CBaseEntity: abi.Inherit(server.CBaseEntity),

    m_pnext: *server.CBaseEntity, // +0x9e0 size: 0x8 (0x1 * 0x8) type 12
    m_pprevious: *server.CBaseEntity, // +0x9e8 size: 0x8 (0x1 * 0x8) type 12
    m_paltpath: *server.CBaseEntity, // +0x9f0 size: 0x8 (0x1 * 0x8) type 12
    m_flRadius: f32, // +0x9f8 size: 0x4 (0x1 * 0x4) type 1
    m_length: f32, // +0x9fc size: 0x4 (0x1 * 0x4) type 1
    m_altName: [*:0]u8, // +0xa00 size: 0x8 (0x1 * 0x8) type 2
    m_nIterVal: i32, // +0xa08 size: 0x4 (0x1 * 0x4) type 5
    m_eOrientationType: i32, // +0xa0c size: 0x4 (0x1 * 0x4) type 5
    m_OnPass: [40]abi.undefined, // +0xa10 size: 0x28 (0x1 * 0x28) type 11

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xa38);
        try std.testing.expect(@offsetOf(@This(), "m_pnext") == 0x9e0);
        try std.testing.expect(@offsetOf(@This(), "m_pprevious") == 0x9e8);
        try std.testing.expect(@offsetOf(@This(), "m_paltpath") == 0x9f0);
        try std.testing.expect(@offsetOf(@This(), "m_flRadius") == 0x9f8);
        try std.testing.expect(@offsetOf(@This(), "m_length") == 0x9fc);
        try std.testing.expect(@offsetOf(@This(), "m_altName") == 0xa00);
        try std.testing.expect(@offsetOf(@This(), "m_nIterVal") == 0xa08);
        try std.testing.expect(@offsetOf(@This(), "m_eOrientationType") == 0xa0c);
        try std.testing.expect(@offsetOf(@This(), "m_OnPass") == 0xa10);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
