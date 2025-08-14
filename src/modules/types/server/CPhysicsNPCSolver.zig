pub const CPhysicsNPCSolver = extern struct {
    vtable: *anyopaque,
    CBaseEntity: abi.Inherit(server.CBaseEntity),

    IMotionEvent: *anyopaque, // +0x9e0 size: 0x8 (0x0 * 0x8) type 0
    m_pNext: *server.CBaseEntity, // +0x9e8 size: 0x8 (0x1 * 0x8) type 12
    m_hNPC: valve.EHANDLE, // +0x9f0 size: 0x4 (0x1 * 0x4) type 13
    m_hEntity: valve.EHANDLE, // +0x9f4 size: 0x4 (0x1 * 0x4) type 13
    m_pController: [8]abi.undefined, // +0x9f8 size: 0x8 (0x1 * 0x8) type 11
    m_separationDuration: f32, // +0xa00 size: 0x4 (0x1 * 0x4) type 1
    m_cancelTime: valve.time, // +0xa04 size: 0x4 (0x1 * 0x4) type 16
    m_allowIntersection: bool, // +0xa08 size: 0x1 (0x1 * 0x1) type 6

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xa10);
        try std.testing.expect(@offsetOf(@This(), "IMotionEvent") == 0x9e0);
        try std.testing.expect(@offsetOf(@This(), "m_pNext") == 0x9e8);
        try std.testing.expect(@offsetOf(@This(), "m_hNPC") == 0x9f0);
        try std.testing.expect(@offsetOf(@This(), "m_hEntity") == 0x9f4);
        try std.testing.expect(@offsetOf(@This(), "m_pController") == 0x9f8);
        try std.testing.expect(@offsetOf(@This(), "m_separationDuration") == 0xa00);
        try std.testing.expect(@offsetOf(@This(), "m_cancelTime") == 0xa04);
        try std.testing.expect(@offsetOf(@This(), "m_allowIntersection") == 0xa08);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
