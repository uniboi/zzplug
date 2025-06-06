pub const CTonemapTrigger = extern struct {
    vtable: *anyopaque,
    CBaseTrigger: abi.Inherit(server.CBaseTrigger),

    m_tonemapControllerName: [*:0]u8, // +0xc60 size: 0x8 (0x1 * 0x8) type 2
    m_hTonemapController: valve.EHANDLE, // +0xc68 size: 0x4 (0x1 * 0x4) type 13

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xc70);
        try std.testing.expect(@offsetOf(@This(), "m_tonemapControllerName") == 0xc60);
        try std.testing.expect(@offsetOf(@This(), "m_hTonemapController") == 0xc68);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
