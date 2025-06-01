pub const fogplayerparams_t = extern struct {
    vtable: *anyopaque,
    m_hCtrl: valve.EHANDLE, // +0x8 size: 0x4 (0x1 * 0x4) type 13
    m_flTransitionStartTime: f32, // +0xc size: 0x4 (0x1 * 0x4) type 1
    m_Old: server.fogplayerparamsstate_t, // +0x10 size: 0x58 (0x1 * 0x58) type 10
    m_New: server.fogplayerparamsstate_t, // +0x68 size: 0x58 (0x1 * 0x58) type 10
    m_OldSky: server.fogplayerparamsstate_t, // +0xc0 size: 0x58 (0x1 * 0x58) type 10
    m_NewSky: server.fogplayerparamsstate_t, // +0x118 size: 0x58 (0x1 * 0x58) type 10

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x170);
        try std.testing.expect(@offsetOf(@This(), "m_hCtrl") == 0x8);
        try std.testing.expect(@offsetOf(@This(), "m_flTransitionStartTime") == 0xc);
        try std.testing.expect(@offsetOf(@This(), "m_Old") == 0x10);
        try std.testing.expect(@offsetOf(@This(), "m_New") == 0x68);
        try std.testing.expect(@offsetOf(@This(), "m_OldSky") == 0xc0);
        try std.testing.expect(@offsetOf(@This(), "m_NewSky") == 0x118);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");