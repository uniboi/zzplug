pub const CPointPlayerMoveConstraint = extern struct {
    vtable: *anyopaque,
    CBaseEntity: abi.cpp.Inherit(server.CBaseEntity),

    m_flRadius: f32, // +0x9e0 size: 0x4 (0x1 * 0x4) type 1
    m_flConstraintWidth: f32, // +0x9e4 size: 0x4 (0x1 * 0x4) type 1
    m_flSpeedFactor: f32, // +0x9e8 size: 0x4 (0x1 * 0x4) type 1
    gap_9ec: [4]abi.undefined,
    m_hConstrainedPlayers: [32]abi.undefined, // +0x9f0 size: 0x20 (0x1 * 0x20) type 11
    m_OnConstraintBroken: [40]abi.undefined, // +0xa10 size: 0x28 (0x1 * 0x28) type 11

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xa38);
        try std.testing.expect(@offsetOf(@This(), "m_flRadius") == 0x9e0);
        try std.testing.expect(@offsetOf(@This(), "m_flConstraintWidth") == 0x9e4);
        try std.testing.expect(@offsetOf(@This(), "m_flSpeedFactor") == 0x9e8);
        try std.testing.expect(@offsetOf(@This(), "m_hConstrainedPlayers") == 0x9f0);
        try std.testing.expect(@offsetOf(@This(), "m_OnConstraintBroken") == 0xa10);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
