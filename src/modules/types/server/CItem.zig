pub const CItem = extern struct {
    vtable: *anyopaque,
    CBaseAnimating: abi.Inherit(server.CBaseAnimating),

    m_bActivateWhenAtRest: bool, // +0xeb8 size: 0x1 (0x1 * 0x1) type 6
    gap_eb9: [7]abi.undefined,
    m_OnPlayerTouch: [40]abi.undefined, // +0xec0 size: 0x28 (0x1 * 0x28) type 11
    m_OnCacheInteraction: [40]abi.undefined, // +0xee8 size: 0x28 (0x1 * 0x28) type 11
    m_OnPlayerUse: [40]abi.undefined, // +0xf10 size: 0x28 (0x1 * 0x28) type 11
    m_vOriginalSpawnOrigin: m.Vector3, // +0xf38 size: 0xc (0x1 * 0xc) type 15
    m_vOriginalSpawnAngles: m.Vector3, // +0xf44 size: 0xc (0x1 * 0xc) type 3
    m_pConstraint: [8]abi.undefined, // +0xf50 size: 0x8 (0x1 * 0x8) type 11

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xf58);
        try std.testing.expect(@offsetOf(@This(), "m_bActivateWhenAtRest") == 0xeb8);
        try std.testing.expect(@offsetOf(@This(), "m_OnPlayerTouch") == 0xec0);
        try std.testing.expect(@offsetOf(@This(), "m_OnCacheInteraction") == 0xee8);
        try std.testing.expect(@offsetOf(@This(), "m_OnPlayerUse") == 0xf10);
        try std.testing.expect(@offsetOf(@This(), "m_vOriginalSpawnOrigin") == 0xf38);
        try std.testing.expect(@offsetOf(@This(), "m_vOriginalSpawnAngles") == 0xf44);
        try std.testing.expect(@offsetOf(@This(), "m_pConstraint") == 0xf50);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
