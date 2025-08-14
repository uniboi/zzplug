pub const CPhysConvert = extern struct {
    vtable: *anyopaque,
    CBaseEntity: abi.Inherit(server.CBaseEntity),

    m_OnConvert: [40]abi.undefined, // +0x9e0 size: 0x28 (0x1 * 0x28) type 11
    m_swapModel: [*:0]u8, // +0xa08 size: 0x8 (0x1 * 0x8) type 2
    m_flMassOverride: f32, // +0xa10 size: 0x4 (0x1 * 0x4) type 1

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xa18);
        try std.testing.expect(@offsetOf(@This(), "m_OnConvert") == 0x9e0);
        try std.testing.expect(@offsetOf(@This(), "m_swapModel") == 0xa08);
        try std.testing.expect(@offsetOf(@This(), "m_flMassOverride") == 0xa10);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
