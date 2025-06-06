pub const CScriptTraceVolume = extern struct {
    vtable: *anyopaque,
    CBaseEntity: abi.Inherit(server.CBaseEntity),

    m_contents: i32, // +0x9e0 size: 0x4 (0x1 * 0x4) type 5
    m_shapeType: i32, // +0x9e4 size: 0x4 (0x1 * 0x4) type 5
    m_sphereRadius: f32, // +0x9e8 size: 0x4 (0x1 * 0x4) type 1
    m_boxMins: m.Vector3, // +0x9ec size: 0xc (0x1 * 0xc) type 3
    m_boxMaxs: m.Vector3, // +0x9f8 size: 0xc (0x1 * 0xc) type 3
    m_drawDebug: bool, // +0xa04 size: 0x1 (0x1 * 0x1) type 6

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xa08);
        try std.testing.expect(@offsetOf(@This(), "m_contents") == 0x9e0);
        try std.testing.expect(@offsetOf(@This(), "m_shapeType") == 0x9e4);
        try std.testing.expect(@offsetOf(@This(), "m_sphereRadius") == 0x9e8);
        try std.testing.expect(@offsetOf(@This(), "m_boxMins") == 0x9ec);
        try std.testing.expect(@offsetOf(@This(), "m_boxMaxs") == 0x9f8);
        try std.testing.expect(@offsetOf(@This(), "m_drawDebug") == 0xa04);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
