pub const CTriggerBrush = extern struct {
    vtable: *anyopaque,
    CBaseEntity: abi.Inherit(server.CBaseEntity),

    m_OnStartTouch: [40]abi.undefined, // +0x9e0 size: 0x28 (0x1 * 0x28) type 11
    m_OnEndTouch: [40]abi.undefined, // +0xa08 size: 0x28 (0x1 * 0x28) type 11
    m_OnUse: [40]abi.undefined, // +0xa30 size: 0x28 (0x1 * 0x28) type 11
    m_iInputFilter: i32, // +0xa58 size: 0x4 (0x1 * 0x4) type 5
    m_iDontMessageParent: i32, // +0xa5c size: 0x4 (0x1 * 0x4) type 5

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xa60);
        try std.testing.expect(@offsetOf(@This(), "m_OnStartTouch") == 0x9e0);
        try std.testing.expect(@offsetOf(@This(), "m_OnEndTouch") == 0xa08);
        try std.testing.expect(@offsetOf(@This(), "m_OnUse") == 0xa30);
        try std.testing.expect(@offsetOf(@This(), "m_iInputFilter") == 0xa58);
        try std.testing.expect(@offsetOf(@This(), "m_iDontMessageParent") == 0xa5c);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
