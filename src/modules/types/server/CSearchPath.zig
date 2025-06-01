pub const CSearchPath = extern struct {
    vtable: *anyopaque,
    CBaseEntity: abi.Inherit(server.CBaseEntity),

    m_preference: [4]abi.undefined, // +0x9e0 size: 0x4 (0x1 * 0x4) type 11
    m_maxCount: i32, // +0x9e4 size: 0x4 (0x1 * 0x4) type 5
    m_refCount: i32, // +0x9e8 size: 0x4 (0x1 * 0x4) type 5
    m_ID: i32, // +0x9ec size: 0x4 (0x1 * 0x4) type 5
    m_pathType: i32, // +0x9f0 size: 0x4 (0x1 * 0x4) type 5
    m_pathCentroid: m.Vector3, // +0x9f4 size: 0xc (0x1 * 0xc) type 3
    m_firstNode: *server.CBaseEntity, // +0xa00 size: 0x8 (0x1 * 0x8) type 12

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xa08);
        try std.testing.expect(@offsetOf(@This(), "m_preference") == 0x9e0);
        try std.testing.expect(@offsetOf(@This(), "m_maxCount") == 0x9e4);
        try std.testing.expect(@offsetOf(@This(), "m_refCount") == 0x9e8);
        try std.testing.expect(@offsetOf(@This(), "m_ID") == 0x9ec);
        try std.testing.expect(@offsetOf(@This(), "m_pathType") == 0x9f0);
        try std.testing.expect(@offsetOf(@This(), "m_pathCentroid") == 0x9f4);
        try std.testing.expect(@offsetOf(@This(), "m_firstNode") == 0xa00);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
