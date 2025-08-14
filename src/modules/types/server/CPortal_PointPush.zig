pub const CPortal_PointPush = extern struct {
    vtable: *anyopaque,
    CBaseEntity: abi.cpp.Inherit(server.CBaseEntity),

    m_bEnabled: bool, // +0x9e0 size: 0x1 (0x1 * 0x1) type 6
    gap_9e1: [3]abi.undefined,
    m_flMagnitude: f32, // +0x9e4 size: 0x4 (0x1 * 0x4) type 1
    m_flRadius: f32, // +0x9e8 size: 0x4 (0x1 * 0x4) type 1
    m_flInnerRadius: f32, // +0x9ec size: 0x4 (0x1 * 0x4) type 1
    m_flConeOfInfluence: f32, // +0x9f0 size: 0x4 (0x1 * 0x4) type 1

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x9f8);
        try std.testing.expect(@offsetOf(@This(), "m_bEnabled") == 0x9e0);
        try std.testing.expect(@offsetOf(@This(), "m_flMagnitude") == 0x9e4);
        try std.testing.expect(@offsetOf(@This(), "m_flRadius") == 0x9e8);
        try std.testing.expect(@offsetOf(@This(), "m_flInnerRadius") == 0x9ec);
        try std.testing.expect(@offsetOf(@This(), "m_flConeOfInfluence") == 0x9f0);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
