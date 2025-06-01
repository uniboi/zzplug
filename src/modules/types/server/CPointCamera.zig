pub const CPointCamera = extern struct {
    vtable: *anyopaque,
    CBaseEntity: abi.Inherit(server.CBaseEntity),

    m_TargetFOV: f32, // +0x9e0 size: 0x4 (0x1 * 0x4) type 1
    m_DegreesPerSecond: f32, // +0x9e4 size: 0x4 (0x1 * 0x4) type 1
    m_FOV: f32, // +0x9e8 size: 0x4 (0x1 * 0x4) type 1
    m_bFogEnable: bool, // +0x9ec size: 0x1 (0x1 * 0x1) type 6
    m_bActive: bool, // +0x9ed size: 0x1 (0x1 * 0x1) type 6
    m_bIsOn: bool, // +0x9ee size: 0x1 (0x1 * 0x1) type 6
    gap_9ef: [1]abi.undefined,
    m_pNext: *server.CBaseEntity, // +0x9f0 size: 0x8 (0x1 * 0x8) type 12

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x9f8);
        try std.testing.expect(@offsetOf(@This(), "m_TargetFOV") == 0x9e0);
        try std.testing.expect(@offsetOf(@This(), "m_DegreesPerSecond") == 0x9e4);
        try std.testing.expect(@offsetOf(@This(), "m_FOV") == 0x9e8);
        try std.testing.expect(@offsetOf(@This(), "m_bFogEnable") == 0x9ec);
        try std.testing.expect(@offsetOf(@This(), "m_bActive") == 0x9ed);
        try std.testing.expect(@offsetOf(@This(), "m_bIsOn") == 0x9ee);
        try std.testing.expect(@offsetOf(@This(), "m_pNext") == 0x9f0);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
