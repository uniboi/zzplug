pub const CTriggerPush = extern struct {
    vtable: *anyopaque,
    CBaseTrigger: abi.Inherit(server.CBaseTrigger),

    m_vecPushDir: m.Vector3, // +0xc60 size: 0xc (0x1 * 0xc) type 3
    m_flAlternateTicksFix: f32, // +0xc6c size: 0x4 (0x1 * 0x4) type 1
    m_flPushSpeed: f32, // +0xc70 size: 0x4 (0x1 * 0x4) type 1

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xc78);
        try std.testing.expect(@offsetOf(@This(), "m_vecPushDir") == 0xc60);
        try std.testing.expect(@offsetOf(@This(), "m_flAlternateTicksFix") == 0xc6c);
        try std.testing.expect(@offsetOf(@This(), "m_flPushSpeed") == 0xc70);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
