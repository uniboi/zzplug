pub const CNPC_Marvin = extern struct {
    vtable: *anyopaque,
    CAI_BaseActor: abi.Inherit(server.CAI_BaseActor),

    m_AssaultBehavior: server.CAI_AssaultBehavior, // +0x21f0 size: 0xe8 (0x1 * 0xe8) type 10
    m_FollowBehavior: server.CAI_FollowBehavior, // +0x22d8 size: 0x148 (0x1 * 0x148) type 10
    m_SearchBehavior: server.CAI_SearchBehavior, // +0x2420 size: 0x50 (0x1 * 0x50) type 10
    m_PatrolBehavior: server.CAI_PatrolBehavior, // +0x2470 size: 0x50 (0x1 * 0x50) type 10

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x24c0);
        try std.testing.expect(@offsetOf(@This(), "m_AssaultBehavior") == 0x21f0);
        try std.testing.expect(@offsetOf(@This(), "m_FollowBehavior") == 0x22d8);
        try std.testing.expect(@offsetOf(@This(), "m_SearchBehavior") == 0x2420);
        try std.testing.expect(@offsetOf(@This(), "m_PatrolBehavior") == 0x2470);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
