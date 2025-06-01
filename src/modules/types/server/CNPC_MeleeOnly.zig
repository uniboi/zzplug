pub const CNPC_MeleeOnly = extern struct {
    vtable: *anyopaque,
    CAI_BaseActor: abi.Inherit(server.CAI_BaseActor),

    m_AssaultBehavior: server.CAI_AssaultBehavior, // +0x21f0 size: 0xe8 (0x1 * 0xe8) type 10
    m_FollowBehavior: server.CAI_FollowBehavior, // +0x22d8 size: 0x148 (0x1 * 0x148) type 10

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x2420);
        try std.testing.expect(@offsetOf(@This(), "m_AssaultBehavior") == 0x21f0);
        try std.testing.expect(@offsetOf(@This(), "m_FollowBehavior") == 0x22d8);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");