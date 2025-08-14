pub const CBaseToggle = extern struct {
    vtable: *anyopaque,
    CBaseEntity: abi.Inherit(server.CBaseEntity),

    m_toggle_state: i32, // +0x9e0 size: 0x4 (0x1 * 0x4) type 5
    m_flMoveDistance: f32, // +0x9e4 size: 0x4 (0x1 * 0x4) type 1
    m_flWait: f32, // +0x9e8 size: 0x4 (0x1 * 0x4) type 1
    m_flLip: f32, // +0x9ec size: 0x4 (0x1 * 0x4) type 1
    m_vecPosition1: m.Vector3, // +0x9f0 size: 0xc (0x1 * 0xc) type 15
    m_vecPosition2: m.Vector3, // +0x9fc size: 0xc (0x1 * 0xc) type 15
    m_vecMoveAng: m.Vector3, // +0xa08 size: 0xc (0x1 * 0xc) type 3
    m_vecAngle1: m.Vector3, // +0xa14 size: 0xc (0x1 * 0xc) type 3
    m_vecAngle2: m.Vector3, // +0xa20 size: 0xc (0x1 * 0xc) type 3
    m_flHeight: f32, // +0xa2c size: 0x4 (0x1 * 0x4) type 1
    m_hActivator: valve.EHANDLE, // +0xa30 size: 0x4 (0x1 * 0x4) type 13
    m_vecFinalDest: m.Vector3, // +0xa34 size: 0xc (0x1 * 0xc) type 15
    m_vecFinalAngle: m.Vector3, // +0xa40 size: 0xc (0x1 * 0xc) type 3
    m_movementType: i32, // +0xa4c size: 0x4 (0x1 * 0x4) type 5
    m_flMoveTargetTime: valve.time, // +0xa50 size: 0x4 (0x1 * 0x4) type 16
    gap_a54: [4]abi.undefined,
    m_sMaster: [*:0]u8, // +0xa58 size: 0x8 (0x1 * 0x8) type 2

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xa60);
        try std.testing.expect(@offsetOf(@This(), "m_toggle_state") == 0x9e0);
        try std.testing.expect(@offsetOf(@This(), "m_flMoveDistance") == 0x9e4);
        try std.testing.expect(@offsetOf(@This(), "m_flWait") == 0x9e8);
        try std.testing.expect(@offsetOf(@This(), "m_flLip") == 0x9ec);
        try std.testing.expect(@offsetOf(@This(), "m_vecPosition1") == 0x9f0);
        try std.testing.expect(@offsetOf(@This(), "m_vecPosition2") == 0x9fc);
        try std.testing.expect(@offsetOf(@This(), "m_vecMoveAng") == 0xa08);
        try std.testing.expect(@offsetOf(@This(), "m_vecAngle1") == 0xa14);
        try std.testing.expect(@offsetOf(@This(), "m_vecAngle2") == 0xa20);
        try std.testing.expect(@offsetOf(@This(), "m_flHeight") == 0xa2c);
        try std.testing.expect(@offsetOf(@This(), "m_hActivator") == 0xa30);
        try std.testing.expect(@offsetOf(@This(), "m_vecFinalDest") == 0xa34);
        try std.testing.expect(@offsetOf(@This(), "m_vecFinalAngle") == 0xa40);
        try std.testing.expect(@offsetOf(@This(), "m_movementType") == 0xa4c);
        try std.testing.expect(@offsetOf(@This(), "m_flMoveTargetTime") == 0xa50);
        try std.testing.expect(@offsetOf(@This(), "m_sMaster") == 0xa58);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
