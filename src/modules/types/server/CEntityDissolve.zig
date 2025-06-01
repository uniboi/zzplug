pub const CEntityDissolve = extern struct {
    vtable: *anyopaque,
    CBaseEntity: abi.Inherit(server.CBaseEntity),

    m_flStartTime: valve.time, // +0x9e0 size: 0x4 (0x1 * 0x4) type 16
    m_flFadeInStart: f32, // +0x9e4 size: 0x4 (0x1 * 0x4) type 1
    m_flFadeInLength: f32, // +0x9e8 size: 0x4 (0x1 * 0x4) type 1
    m_flFadeOutModelStart: f32, // +0x9ec size: 0x4 (0x1 * 0x4) type 1
    m_flFadeOutModelLength: f32, // +0x9f0 size: 0x4 (0x1 * 0x4) type 1
    m_flFadeOutStart: f32, // +0x9f4 size: 0x4 (0x1 * 0x4) type 1
    m_flFadeOutLength: f32, // +0x9f8 size: 0x4 (0x1 * 0x4) type 1
    fadeColorR: i32, // +0x9fc size: 0x4 (0x1 * 0x4) type 5
    fadeColorG: i32, // +0xa00 size: 0x4 (0x1 * 0x4) type 5
    fadeColorB: i32, // +0xa04 size: 0x4 (0x1 * 0x4) type 5
    m_isLethal: bool, // +0xa08 size: 0x1 (0x1 * 0x1) type 6
    gap_a09: [3]abi.undefined,
    m_nDissolveType: i32, // +0xa0c size: 0x4 (0x1 * 0x4) type 5
    m_vDissolverOrigin: m.Vector3, // +0xa10 size: 0xc (0x1 * 0xc) type 3
    m_nMagnitude: i32, // +0xa1c size: 0x4 (0x1 * 0x4) type 5

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xa20);
        try std.testing.expect(@offsetOf(@This(), "m_flStartTime") == 0x9e0);
        try std.testing.expect(@offsetOf(@This(), "m_flFadeInStart") == 0x9e4);
        try std.testing.expect(@offsetOf(@This(), "m_flFadeInLength") == 0x9e8);
        try std.testing.expect(@offsetOf(@This(), "m_flFadeOutModelStart") == 0x9ec);
        try std.testing.expect(@offsetOf(@This(), "m_flFadeOutModelLength") == 0x9f0);
        try std.testing.expect(@offsetOf(@This(), "m_flFadeOutStart") == 0x9f4);
        try std.testing.expect(@offsetOf(@This(), "m_flFadeOutLength") == 0x9f8);
        try std.testing.expect(@offsetOf(@This(), "fadeColorR") == 0x9fc);
        try std.testing.expect(@offsetOf(@This(), "fadeColorG") == 0xa00);
        try std.testing.expect(@offsetOf(@This(), "fadeColorB") == 0xa04);
        try std.testing.expect(@offsetOf(@This(), "m_isLethal") == 0xa08);
        try std.testing.expect(@offsetOf(@This(), "m_nDissolveType") == 0xa0c);
        try std.testing.expect(@offsetOf(@This(), "m_vDissolverOrigin") == 0xa10);
        try std.testing.expect(@offsetOf(@This(), "m_nMagnitude") == 0xa1c);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
