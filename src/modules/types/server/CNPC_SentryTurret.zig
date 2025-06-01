pub const CNPC_SentryTurret = extern struct {
    vtable: *anyopaque,
    CAI_BaseNPC: abi.Inherit(server.CAI_BaseNPC),

    m_turretState: i32, // +0x20b0 size: 0x4 (0x1 * 0x4) type 5
    m_killCount: i32, // +0x20b4 size: 0x4 (0x1 * 0x4) type 5
    m_titanKillCount: i32, // +0x20b8 size: 0x4 (0x1 * 0x4) type 5
    m_eyeAttach: i32, // +0x20bc size: 0x4 (0x1 * 0x4) type 5
    m_controlPanel: valve.EHANDLE, // +0x20c0 size: 0x4 (0x1 * 0x4) type 13
    m_bActive: bool, // +0x20c4 size: 0x1 (0x1 * 0x1) type 6
    m_bEnabled: bool, // +0x20c5 size: 0x1 (0x1 * 0x1) type 6
    m_bPitchSound: bool, // +0x20c6 size: 0x1 (0x1 * 0x1) type 6
    m_bYawSound: bool, // +0x20c7 size: 0x1 (0x1 * 0x1) type 6
    m_firstMuzzleAttachment: i32, // +0x20c8 size: 0x4 (0x1 * 0x4) type 5
    m_numMuzzles: i32, // +0x20cc size: 0x4 (0x1 * 0x4) type 5
    m_currentMuzzle: i32, // +0x20d0 size: 0x4 (0x1 * 0x4) type 5
    m_vecGoalAngles: m.Vector3, // +0x20d4 size: 0xc (0x1 * 0xc) type 3
    m_vecLastEnemyAngles: m.Vector3, // +0x20e0 size: 0xc (0x1 * 0xc) type 3
    m_vecLastDir: m.Vector3, // +0x20ec size: 0xc (0x1 * 0xc) type 3
    m_OnDeploy: [40]abi.undefined, // +0x20f8 size: 0x28 (0x1 * 0x28) type 11
    m_OnRetire: [40]abi.undefined, // +0x2120 size: 0x28 (0x1 * 0x28) type 11
    m_OnTurretStateChange: [40]abi.undefined, // +0x2148 size: 0x28 (0x1 * 0x28) type 11
    m_MaxYaw: f32, // +0x2170 size: 0x4 (0x1 * 0x4) type 1

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x2178);
        try std.testing.expect(@offsetOf(@This(), "m_turretState") == 0x20b0);
        try std.testing.expect(@offsetOf(@This(), "m_killCount") == 0x20b4);
        try std.testing.expect(@offsetOf(@This(), "m_titanKillCount") == 0x20b8);
        try std.testing.expect(@offsetOf(@This(), "m_eyeAttach") == 0x20bc);
        try std.testing.expect(@offsetOf(@This(), "m_controlPanel") == 0x20c0);
        try std.testing.expect(@offsetOf(@This(), "m_bActive") == 0x20c4);
        try std.testing.expect(@offsetOf(@This(), "m_bEnabled") == 0x20c5);
        try std.testing.expect(@offsetOf(@This(), "m_bPitchSound") == 0x20c6);
        try std.testing.expect(@offsetOf(@This(), "m_bYawSound") == 0x20c7);
        try std.testing.expect(@offsetOf(@This(), "m_firstMuzzleAttachment") == 0x20c8);
        try std.testing.expect(@offsetOf(@This(), "m_numMuzzles") == 0x20cc);
        try std.testing.expect(@offsetOf(@This(), "m_currentMuzzle") == 0x20d0);
        try std.testing.expect(@offsetOf(@This(), "m_vecGoalAngles") == 0x20d4);
        try std.testing.expect(@offsetOf(@This(), "m_vecLastEnemyAngles") == 0x20e0);
        try std.testing.expect(@offsetOf(@This(), "m_vecLastDir") == 0x20ec);
        try std.testing.expect(@offsetOf(@This(), "m_OnDeploy") == 0x20f8);
        try std.testing.expect(@offsetOf(@This(), "m_OnRetire") == 0x2120);
        try std.testing.expect(@offsetOf(@This(), "m_OnTurretStateChange") == 0x2148);
        try std.testing.expect(@offsetOf(@This(), "m_MaxYaw") == 0x2170);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
