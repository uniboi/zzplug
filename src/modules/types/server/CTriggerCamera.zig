pub const CTriggerCamera = extern struct {
    vtable: *anyopaque,
    CBaseEntity: abi.cpp.Inherit(server.CBaseEntity),

    m_hPlayer: valve.EHANDLE, // +0x9e0 size: 0x4 (0x1 * 0x4) type 13
    m_hTarget: valve.EHANDLE, // +0x9e4 size: 0x4 (0x1 * 0x4) type 13
    m_pPath: *server.CBaseEntity, // +0x9e8 size: 0x8 (0x1 * 0x8) type 12
    m_sPath: [*:0]u8, // +0x9f0 size: 0x8 (0x1 * 0x8) type 2
    m_flWait: f32, // +0x9f8 size: 0x4 (0x1 * 0x4) type 1
    m_flReturnTime: valve.time, // +0x9fc size: 0x4 (0x1 * 0x4) type 16
    m_flStopTime: valve.time, // +0xa00 size: 0x4 (0x1 * 0x4) type 16
    m_moveDistance: f32, // +0xa04 size: 0x4 (0x1 * 0x4) type 1
    m_targetSpeed: f32, // +0xa08 size: 0x4 (0x1 * 0x4) type 1
    m_initialSpeed: f32, // +0xa0c size: 0x4 (0x1 * 0x4) type 1
    m_acceleration: f32, // +0xa10 size: 0x4 (0x1 * 0x4) type 1
    m_deceleration: f32, // +0xa14 size: 0x4 (0x1 * 0x4) type 1
    m_state: i32, // +0xa18 size: 0x4 (0x1 * 0x4) type 5
    m_vecMoveDir: m.Vector3, // +0xa1c size: 0xc (0x1 * 0xc) type 3
    m_fov: f32, // +0xa28 size: 0x4 (0x1 * 0x4) type 1
    m_fovSpeed: f32, // +0xa2c size: 0x4 (0x1 * 0x4) type 1
    m_trackSpeed: f32, // +0xa30 size: 0x4 (0x1 * 0x4) type 1
    gap_a34: [4]abi.undefined,
    m_iszTargetAttachment: [*:0]u8, // +0xa38 size: 0x8 (0x1 * 0x8) type 2
    m_iAttachmentIndex: i32, // +0xa40 size: 0x4 (0x1 * 0x4) type 5
    m_bSnapToGoal: bool, // +0xa44 size: 0x1 (0x1 * 0x1) type 6
    gap_a45: [3]abi.undefined,
    m_nPlayerButtons: i32, // +0xa48 size: 0x4 (0x1 * 0x4) type 5
    m_oldTakeDamage: u8, // +0xa4c size: 0x1 (0x1 * 0x1) type 8
    m_oldLifeState: u8, // +0xa4d size: 0x1 (0x1 * 0x1) type 8
    gap_a4e: [2]abi.undefined,
    m_oldSolidFlags: i32, // +0xa50 size: 0x4 (0x1 * 0x4) type 5
    m_oldPlayerFlags: i32, // +0xa54 size: 0x4 (0x1 * 0x4) type 5
    m_OnEndFollow: [40]abi.undefined, // +0xa58 size: 0x28 (0x1 * 0x28) type 11

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xa80);
        try std.testing.expect(@offsetOf(@This(), "m_hPlayer") == 0x9e0);
        try std.testing.expect(@offsetOf(@This(), "m_hTarget") == 0x9e4);
        try std.testing.expect(@offsetOf(@This(), "m_pPath") == 0x9e8);
        try std.testing.expect(@offsetOf(@This(), "m_sPath") == 0x9f0);
        try std.testing.expect(@offsetOf(@This(), "m_flWait") == 0x9f8);
        try std.testing.expect(@offsetOf(@This(), "m_flReturnTime") == 0x9fc);
        try std.testing.expect(@offsetOf(@This(), "m_flStopTime") == 0xa00);
        try std.testing.expect(@offsetOf(@This(), "m_moveDistance") == 0xa04);
        try std.testing.expect(@offsetOf(@This(), "m_targetSpeed") == 0xa08);
        try std.testing.expect(@offsetOf(@This(), "m_initialSpeed") == 0xa0c);
        try std.testing.expect(@offsetOf(@This(), "m_acceleration") == 0xa10);
        try std.testing.expect(@offsetOf(@This(), "m_deceleration") == 0xa14);
        try std.testing.expect(@offsetOf(@This(), "m_state") == 0xa18);
        try std.testing.expect(@offsetOf(@This(), "m_vecMoveDir") == 0xa1c);
        try std.testing.expect(@offsetOf(@This(), "m_fov") == 0xa28);
        try std.testing.expect(@offsetOf(@This(), "m_fovSpeed") == 0xa2c);
        try std.testing.expect(@offsetOf(@This(), "m_trackSpeed") == 0xa30);
        try std.testing.expect(@offsetOf(@This(), "m_iszTargetAttachment") == 0xa38);
        try std.testing.expect(@offsetOf(@This(), "m_iAttachmentIndex") == 0xa40);
        try std.testing.expect(@offsetOf(@This(), "m_bSnapToGoal") == 0xa44);
        try std.testing.expect(@offsetOf(@This(), "m_nPlayerButtons") == 0xa48);
        try std.testing.expect(@offsetOf(@This(), "m_oldTakeDamage") == 0xa4c);
        try std.testing.expect(@offsetOf(@This(), "m_oldLifeState") == 0xa4d);
        try std.testing.expect(@offsetOf(@This(), "m_oldSolidFlags") == 0xa50);
        try std.testing.expect(@offsetOf(@This(), "m_oldPlayerFlags") == 0xa54);
        try std.testing.expect(@offsetOf(@This(), "m_OnEndFollow") == 0xa58);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
