pub const CAnimationLayer = extern struct {
    m_bSequenceFinished: bool, // +0x0 size: 0x1 (0x1 * 0x1) type 6
    gap_1: [3]abi.undefined,
    m_fFlags: i32, // +0x4 size: 0x4 (0x1 * 0x4) type 5
    m_layerIndex: i32, // +0x8 size: 0x4 (0x1 * 0x4) type 5
    m_modelIndex: i32, // +0xc size: 0x4 (0x1 * 0x4) type 5
    m_flKillRate: f32, // +0x10 size: 0x4 (0x1 * 0x4) type 1
    m_flKillDelay: f32, // +0x14 size: 0x4 (0x1 * 0x4) type 1
    m_nActivity: [4]abi.undefined, // +0x18 size: 0x4 (0x1 * 0x4) type 11
    m_nPriority: i32, // +0x1c size: 0x4 (0x1 * 0x4) type 5
    m_flLastEventCheck: f32, // +0x20 size: 0x4 (0x1 * 0x4) type 1
    gap_24: [4]abi.undefined,
    m_animationLayerOwner: *server.CBaseEntity, // +0x28 size: 0x8 (0x1 * 0x8) type 12

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x30);
        try std.testing.expect(@offsetOf(@This(), "m_bSequenceFinished") == 0x0);
        try std.testing.expect(@offsetOf(@This(), "m_fFlags") == 0x4);
        try std.testing.expect(@offsetOf(@This(), "m_layerIndex") == 0x8);
        try std.testing.expect(@offsetOf(@This(), "m_modelIndex") == 0xc);
        try std.testing.expect(@offsetOf(@This(), "m_flKillRate") == 0x10);
        try std.testing.expect(@offsetOf(@This(), "m_flKillDelay") == 0x14);
        try std.testing.expect(@offsetOf(@This(), "m_nActivity") == 0x18);
        try std.testing.expect(@offsetOf(@This(), "m_nPriority") == 0x1c);
        try std.testing.expect(@offsetOf(@This(), "m_flLastEventCheck") == 0x20);
        try std.testing.expect(@offsetOf(@This(), "m_animationLayerOwner") == 0x28);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
