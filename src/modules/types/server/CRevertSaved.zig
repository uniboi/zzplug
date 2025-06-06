pub const CRevertSaved = extern struct {
    vtable: *anyopaque,
    CBaseEntity: abi.Inherit(server.CBaseEntity),

    m_loadTime: f32, // +0x9e0 size: 0x4 (0x1 * 0x4) type 1
    m_Duration: f32, // +0x9e4 size: 0x4 (0x1 * 0x4) type 1
    m_HoldTime: f32, // +0x9e8 size: 0x4 (0x1 * 0x4) type 1

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x9f0);
        try std.testing.expect(@offsetOf(@This(), "m_loadTime") == 0x9e0);
        try std.testing.expect(@offsetOf(@This(), "m_Duration") == 0x9e4);
        try std.testing.expect(@offsetOf(@This(), "m_HoldTime") == 0x9e8);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
