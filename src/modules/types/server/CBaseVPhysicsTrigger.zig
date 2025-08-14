pub const CBaseVPhysicsTrigger = extern struct {
    vtable: *anyopaque,
    CBaseEntity: abi.Inherit(server.CBaseEntity),

    m_bDisabled: bool, // +0x9e0 size: 0x1 (0x1 * 0x1) type 6
    gap_9e1: [7]abi.undefined,
    m_triggerFilterMask: i64, // +0x9e8 size: 0x8 (0x1 * 0x8) type 29

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x9f0);
        try std.testing.expect(@offsetOf(@This(), "m_bDisabled") == 0x9e0);
        try std.testing.expect(@offsetOf(@This(), "m_triggerFilterMask") == 0x9e8);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
