pub const CSkyCamera = extern struct {
    vtable: *anyopaque,
    CBaseEntity: abi.cpp.Inherit(server.CBaseEntity),

    m_skyboxData: server.sky3dparams_t, // +0x9e0 size: 0x68 (0x1 * 0x68) type 10
    m_bUseAngles: bool, // +0xa48 size: 0x1 (0x1 * 0x1) type 6
    gap_a49: [3]abi.undefined,
    m_fogAngles: m.Vector3, // +0xa4c size: 0xc (0x1 * 0xc) type 3
    m_pNext: *anyopaque, // +0xa58 size: 0x8 (0x1 * 0x8) type 31

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xa60);
        try std.testing.expect(@offsetOf(@This(), "m_skyboxData") == 0x9e0);
        try std.testing.expect(@offsetOf(@This(), "m_bUseAngles") == 0xa48);
        try std.testing.expect(@offsetOf(@This(), "m_fogAngles") == 0xa4c);
        try std.testing.expect(@offsetOf(@This(), "m_pNext") == 0xa58);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
