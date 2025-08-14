pub const CSpotlightEnd = extern struct {
    vtable: *anyopaque,
    CBaseEntity: abi.cpp.Inherit(server.CBaseEntity),

    m_flLightScale: f32, // +0x9e0 size: 0x4 (0x1 * 0x4) type 1
    m_Radius: f32, // +0x9e4 size: 0x4 (0x1 * 0x4) type 1
    m_vSpotlightDir: m.Vector3, // +0x9e8 size: 0xc (0x1 * 0xc) type 3
    m_vSpotlightOrg: m.Vector3, // +0x9f4 size: 0xc (0x1 * 0xc) type 15

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xa00);
        try std.testing.expect(@offsetOf(@This(), "m_flLightScale") == 0x9e0);
        try std.testing.expect(@offsetOf(@This(), "m_Radius") == 0x9e4);
        try std.testing.expect(@offsetOf(@This(), "m_vSpotlightDir") == 0x9e8);
        try std.testing.expect(@offsetOf(@This(), "m_vSpotlightOrg") == 0x9f4);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
