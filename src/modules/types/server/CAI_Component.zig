pub const CAI_Component = extern struct {
    vtable: *anyopaque,
    m_pOuter: *anyopaque, // +0x8 size: 0x8 (0x1 * 0x8) type 31

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x10);
        try std.testing.expect(@offsetOf(@This(), "m_pOuter") == 0x8);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
