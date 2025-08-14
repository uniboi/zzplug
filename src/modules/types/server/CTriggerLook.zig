pub const CTriggerLook = extern struct {
    vtable: *anyopaque,
    CTriggerMultiple: abi.Inherit(server.CTriggerMultiple),

    m_hLookTarget: valve.EHANDLE, // +0xc88 size: 0x4 (0x1 * 0x4) type 13
    m_flFieldOfView: f32, // +0xc8c size: 0x4 (0x1 * 0x4) type 1
    m_flLookTime: f32, // +0xc90 size: 0x4 (0x1 * 0x4) type 1
    m_flLookTimeTotal: f32, // +0xc94 size: 0x4 (0x1 * 0x4) type 1
    m_flLookTimeLast: valve.time, // +0xc98 size: 0x4 (0x1 * 0x4) type 16
    m_flTimeoutDuration: f32, // +0xc9c size: 0x4 (0x1 * 0x4) type 1
    m_bTimeoutFired: bool, // +0xca0 size: 0x1 (0x1 * 0x1) type 6
    gap_ca1: [3]abi.undefined,
    m_hActivator: valve.EHANDLE, // +0xca4 size: 0x4 (0x1 * 0x4) type 13
    m_OnTimeout: [40]abi.undefined, // +0xca8 size: 0x28 (0x1 * 0x28) type 11

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xcd0);
        try std.testing.expect(@offsetOf(@This(), "m_hLookTarget") == 0xc88);
        try std.testing.expect(@offsetOf(@This(), "m_flFieldOfView") == 0xc8c);
        try std.testing.expect(@offsetOf(@This(), "m_flLookTime") == 0xc90);
        try std.testing.expect(@offsetOf(@This(), "m_flLookTimeTotal") == 0xc94);
        try std.testing.expect(@offsetOf(@This(), "m_flLookTimeLast") == 0xc98);
        try std.testing.expect(@offsetOf(@This(), "m_flTimeoutDuration") == 0xc9c);
        try std.testing.expect(@offsetOf(@This(), "m_bTimeoutFired") == 0xca0);
        try std.testing.expect(@offsetOf(@This(), "m_hActivator") == 0xca4);
        try std.testing.expect(@offsetOf(@This(), "m_OnTimeout") == 0xca8);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
