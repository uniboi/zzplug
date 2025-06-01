pub const CGib = extern struct {
    vtable: *anyopaque,
    CBaseAnimating: abi.Inherit(server.CBaseAnimating),

    m_cBloodDecals: i32, // +0xeb8 size: 0x4 (0x1 * 0x4) type 5
    m_material: i32, // +0xebc size: 0x4 (0x1 * 0x4) type 5
    m_lifeTime: f32, // +0xec0 size: 0x4 (0x1 * 0x4) type 1
    m_bForceRemove: bool, // +0xec4 size: 0x1 (0x1 * 0x1) type 6
    gap_ec5: [3]abi.undefined,
    m_hSprite: valve.EHANDLE, // +0xec8 size: 0x4 (0x1 * 0x4) type 13

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xed0);
        try std.testing.expect(@offsetOf(@This(), "m_cBloodDecals") == 0xeb8);
        try std.testing.expect(@offsetOf(@This(), "m_material") == 0xebc);
        try std.testing.expect(@offsetOf(@This(), "m_lifeTime") == 0xec0);
        try std.testing.expect(@offsetOf(@This(), "m_bForceRemove") == 0xec4);
        try std.testing.expect(@offsetOf(@This(), "m_hSprite") == 0xec8);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
