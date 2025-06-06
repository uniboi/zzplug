pub const CEnvWind = extern struct {
    vtable: *anyopaque,
    CBaseEntity: abi.Inherit(server.CBaseEntity),

    m_EnvWindShared: server.CEnvWindShared, // +0x9e0 size: 0x1c8 (0x1 * 0x1c8) type 10

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xba8);
        try std.testing.expect(@offsetOf(@This(), "m_EnvWindShared") == 0x9e0);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
