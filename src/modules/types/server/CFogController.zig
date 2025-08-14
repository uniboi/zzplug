pub const CFogController = extern struct {
    vtable: *anyopaque,
    CBaseEntity: abi.Inherit(server.CBaseEntity),

    m_fog: server.fogparams_t, // +0x9e0 size: 0x50 (0x1 * 0x50) type 10
    m_bUseAngles: bool, // +0xa30 size: 0x1 (0x1 * 0x1) type 6
    gap_a31: [3]abi.undefined,
    m_fogAngles: m.Vector3, // +0xa34 size: 0xc (0x1 * 0xc) type 3
    m_iChangedVariables: i32, // +0xa40 size: 0x4 (0x1 * 0x4) type 5

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xa48);
        try std.testing.expect(@offsetOf(@This(), "m_fog") == 0x9e0);
        try std.testing.expect(@offsetOf(@This(), "m_bUseAngles") == 0xa30);
        try std.testing.expect(@offsetOf(@This(), "m_fogAngles") == 0xa34);
        try std.testing.expect(@offsetOf(@This(), "m_iChangedVariables") == 0xa40);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
