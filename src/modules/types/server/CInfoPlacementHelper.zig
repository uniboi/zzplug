pub const CInfoPlacementHelper = extern struct {
    vtable: *anyopaque,
    CBaseEntity: abi.Inherit(server.CBaseEntity),

    m_OnObjectPlaced: [40]abi.undefined, // +0x9e0 size: 0x28 (0x1 * 0x28) type 11
    m_ObjectPlacedSize: [40]abi.undefined, // +0xa08 size: 0x28 (0x1 * 0x28) type 11
    m_strTargetProxy: [*:0]u8, // +0xa30 size: 0x8 (0x1 * 0x8) type 2
    m_strTargetEntity: [*:0]u8, // +0xa38 size: 0x8 (0x1 * 0x8) type 2
    m_flRadius: f32, // +0xa40 size: 0x4 (0x1 * 0x4) type 1
    m_bSnapToHelperAngles: bool, // +0xa44 size: 0x1 (0x1 * 0x1) type 6
    m_bForcePlacement: bool, // +0xa45 size: 0x1 (0x1 * 0x1) type 6
    m_bDisabled: bool, // +0xa46 size: 0x1 (0x1 * 0x1) type 6
    gap_a47: [1]abi.undefined,
    m_flDisableTime: valve.time, // +0xa48 size: 0x4 (0x1 * 0x4) type 16

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xa50);
        try std.testing.expect(@offsetOf(@This(), "m_OnObjectPlaced") == 0x9e0);
        try std.testing.expect(@offsetOf(@This(), "m_ObjectPlacedSize") == 0xa08);
        try std.testing.expect(@offsetOf(@This(), "m_strTargetProxy") == 0xa30);
        try std.testing.expect(@offsetOf(@This(), "m_strTargetEntity") == 0xa38);
        try std.testing.expect(@offsetOf(@This(), "m_flRadius") == 0xa40);
        try std.testing.expect(@offsetOf(@This(), "m_bSnapToHelperAngles") == 0xa44);
        try std.testing.expect(@offsetOf(@This(), "m_bForcePlacement") == 0xa45);
        try std.testing.expect(@offsetOf(@This(), "m_bDisabled") == 0xa46);
        try std.testing.expect(@offsetOf(@This(), "m_flDisableTime") == 0xa48);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
