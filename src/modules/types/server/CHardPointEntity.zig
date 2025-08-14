pub const CHardPointEntity = extern struct {
    vtable: *anyopaque,
    CBaseEntity: abi.Inherit(server.CBaseEntity),

    m_state: i32, // +0x9e0 size: 0x4 (0x1 * 0x4) type 5
    m_estimatedCaptureTime: f32, // +0x9e4 size: 0x4 (0x1 * 0x4) type 1
    m_progressRefPoint: f32, // +0x9e8 size: 0x4 (0x1 * 0x4) type 1
    m_teamMilitiaAICount: i32, // +0x9ec size: 0x4 (0x1 * 0x4) type 5
    m_teamIMCAICount: i32, // +0x9f0 size: 0x4 (0x1 * 0x4) type 5
    m_teamMilitiaPlayerCount: i32, // +0x9f4 size: 0x4 (0x1 * 0x4) type 5
    m_teamIMCPlayerCount: i32, // +0x9f8 size: 0x4 (0x1 * 0x4) type 5
    m_teamMilitiaPlayerTitanCount: i32, // +0x9fc size: 0x4 (0x1 * 0x4) type 5
    m_teamIMCPlayerTitanCount: i32, // +0xa00 size: 0x4 (0x1 * 0x4) type 5
    m_hardpointID: i32, // +0xa04 size: 0x4 (0x1 * 0x4) type 5
    m_terminal: valve.EHANDLE, // +0xa08 size: 0x4 (0x1 * 0x4) type 13

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xa10);
        try std.testing.expect(@offsetOf(@This(), "m_state") == 0x9e0);
        try std.testing.expect(@offsetOf(@This(), "m_estimatedCaptureTime") == 0x9e4);
        try std.testing.expect(@offsetOf(@This(), "m_progressRefPoint") == 0x9e8);
        try std.testing.expect(@offsetOf(@This(), "m_teamMilitiaAICount") == 0x9ec);
        try std.testing.expect(@offsetOf(@This(), "m_teamIMCAICount") == 0x9f0);
        try std.testing.expect(@offsetOf(@This(), "m_teamMilitiaPlayerCount") == 0x9f4);
        try std.testing.expect(@offsetOf(@This(), "m_teamIMCPlayerCount") == 0x9f8);
        try std.testing.expect(@offsetOf(@This(), "m_teamMilitiaPlayerTitanCount") == 0x9fc);
        try std.testing.expect(@offsetOf(@This(), "m_teamIMCPlayerTitanCount") == 0xa00);
        try std.testing.expect(@offsetOf(@This(), "m_hardpointID") == 0xa04);
        try std.testing.expect(@offsetOf(@This(), "m_terminal") == 0xa08);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
