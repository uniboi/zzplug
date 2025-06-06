pub const CBoneFollower = extern struct {
    vtable: *anyopaque,
    CBaseEntity: abi.Inherit(server.CBaseEntity),

    m_modelIndex: valve.ModelIndex, // +0x9e0 size: 0x4 (0x1 * 0x4) type 26
    m_boneIndex: i32, // +0x9e4 size: 0x4 (0x1 * 0x4) type 5
    m_hitGroup: i32, // +0x9e8 size: 0x4 (0x1 * 0x4) type 5
    m_lastUpdateTime: f32, // +0x9ec size: 0x4 (0x1 * 0x4) type 1
    m_lastUpdateOrigin: m.Vector3, // +0x9f0 size: 0xc (0x1 * 0xc) type 3
    m_lastUpdateAngles: m.Vector3, // +0x9fc size: 0xc (0x1 * 0xc) type 3

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xa08);
        try std.testing.expect(@offsetOf(@This(), "m_modelIndex") == 0x9e0);
        try std.testing.expect(@offsetOf(@This(), "m_boneIndex") == 0x9e4);
        try std.testing.expect(@offsetOf(@This(), "m_hitGroup") == 0x9e8);
        try std.testing.expect(@offsetOf(@This(), "m_lastUpdateTime") == 0x9ec);
        try std.testing.expect(@offsetOf(@This(), "m_lastUpdateOrigin") == 0x9f0);
        try std.testing.expect(@offsetOf(@This(), "m_lastUpdateAngles") == 0x9fc);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
