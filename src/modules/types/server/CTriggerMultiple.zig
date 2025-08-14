pub const CTriggerMultiple = extern struct {
    vtable: *anyopaque,
    CBaseTrigger: abi.Inherit(server.CBaseTrigger),

    m_OnTrigger: [40]abi.undefined, // +0xc60 size: 0x28 (0x1 * 0x28) type 11

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xc88);
        try std.testing.expect(@offsetOf(@This(), "m_OnTrigger") == 0xc60);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
