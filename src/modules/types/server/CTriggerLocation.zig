pub const CTriggerLocation = extern struct {
    vtable: *anyopaque,
    CTriggerMultiple: abi.Inherit(server.CTriggerMultiple),

    m_location: [*:0]u8, // +0xc88 size: 0x8 (0x1 * 0x8) type 2
    m_precise: bool, // +0xc90 size: 0x1 (0x1 * 0x1) type 6

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xc98);
        try std.testing.expect(@offsetOf(@This(), "m_location") == 0xc88);
        try std.testing.expect(@offsetOf(@This(), "m_precise") == 0xc90);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
