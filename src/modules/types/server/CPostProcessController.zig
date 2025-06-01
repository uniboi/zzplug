pub const CPostProcessController = extern struct {
    vtable: *anyopaque,
    CBaseEntity: abi.Inherit(server.CBaseEntity),

    m_flPostProcessParameters: [6]f32, // +0x9e0 size: 0x18 (0x6 * 0x4) type 1
    m_bMaster: bool, // +0x9f8 size: 0x1 (0x1 * 0x1) type 6

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xa00);
        try std.testing.expect(@offsetOf(@This(), "m_flPostProcessParameters") == 0x9e0);
        try std.testing.expect(@offsetOf(@This(), "m_bMaster") == 0x9f8);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");