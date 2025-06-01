pub const CPhysicsEntitySolver = extern struct {
    vtable: *anyopaque,
    CBaseEntity: abi.Inherit(server.CBaseEntity),

    m_hMovingEntity: valve.EHANDLE, // +0x9e0 size: 0x4 (0x1 * 0x4) type 13
    m_hPhysicsBlocker: valve.EHANDLE, // +0x9e4 size: 0x4 (0x1 * 0x4) type 13
    m_separationDuration: f32, // +0x9e8 size: 0x4 (0x1 * 0x4) type 1
    m_cancelTime: valve.time, // +0x9ec size: 0x4 (0x1 * 0x4) type 16
    m_savedCollisionGroup: i32, // +0x9f0 size: 0x4 (0x1 * 0x4) type 5

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x9f8);
        try std.testing.expect(@offsetOf(@This(), "m_hMovingEntity") == 0x9e0);
        try std.testing.expect(@offsetOf(@This(), "m_hPhysicsBlocker") == 0x9e4);
        try std.testing.expect(@offsetOf(@This(), "m_separationDuration") == 0x9e8);
        try std.testing.expect(@offsetOf(@This(), "m_cancelTime") == 0x9ec);
        try std.testing.expect(@offsetOf(@This(), "m_savedCollisionGroup") == 0x9f0);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");