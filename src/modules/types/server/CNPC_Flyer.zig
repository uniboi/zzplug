pub const CNPC_Flyer = extern struct {
    vtable: *anyopaque,
    CAI_BaseFlyingBot: abi.Inherit(server.CAI_BaseFlyingBot),

    m_onGround: bool, // +0x2458 size: 0x1 (0x1 * 0x1) type 6

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x2460);
        try std.testing.expect(@offsetOf(@This(), "m_onGround") == 0x2458);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");