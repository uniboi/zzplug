pub const CNPC_Drone = extern struct {
    vtable: *anyopaque,
    CAI_BaseFlyingBot: abi.Inherit(server.CAI_BaseFlyingBot),

    m_bAttackTarget: bool, // +0x2458 size: 0x1 (0x1 * 0x1) type 6
    gap_2459: [3]abi.undefined,
    m_beamSpread: f32, // +0x245c size: 0x4 (0x1 * 0x4) type 1
    m_scanTarget: valve.EHANDLE, // +0x2460 size: 0x4 (0x1 * 0x4) type 13

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x2468);
        try std.testing.expect(@offsetOf(@This(), "m_bAttackTarget") == 0x2458);
        try std.testing.expect(@offsetOf(@This(), "m_beamSpread") == 0x245c);
        try std.testing.expect(@offsetOf(@This(), "m_scanTarget") == 0x2460);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
