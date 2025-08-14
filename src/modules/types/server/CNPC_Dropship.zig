pub const CNPC_Dropship = extern struct {
    vtable: *anyopaque,
    CBaseHelicopter: abi.cpp.Inherit(server.CBaseHelicopter),

    m_flTimeTakeOff: valve.time, // +0x24e0 size: 0x4 (0x1 * 0x4) type 16
    m_flTimeNextAttack: valve.time, // +0x24e4 size: 0x4 (0x1 * 0x4) type 16
    m_flLastTime: valve.time, // +0x24e8 size: 0x4 (0x1 * 0x4) type 16
    m_iDropState: i32, // +0x24ec size: 0x4 (0x1 * 0x4) type 5
    m_iLandState: i32, // +0x24f0 size: 0x4 (0x1 * 0x4) type 5
    m_existPitch: f32, // +0x24f4 size: 0x4 (0x1 * 0x4) type 1
    m_existRoll: f32, // +0x24f8 size: 0x4 (0x1 * 0x4) type 1
    m_bJetWakeFXEnabled: bool, // +0x24fc size: 0x1 (0x1 * 0x1) type 6
    gap_24fd: [3]abi.undefined,
    m_hLandTarget: valve.EHANDLE, // +0x2500 size: 0x4 (0x1 * 0x4) type 13

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x2508);
        try std.testing.expect(@offsetOf(@This(), "m_flTimeTakeOff") == 0x24e0);
        try std.testing.expect(@offsetOf(@This(), "m_flTimeNextAttack") == 0x24e4);
        try std.testing.expect(@offsetOf(@This(), "m_flLastTime") == 0x24e8);
        try std.testing.expect(@offsetOf(@This(), "m_iDropState") == 0x24ec);
        try std.testing.expect(@offsetOf(@This(), "m_iLandState") == 0x24f0);
        try std.testing.expect(@offsetOf(@This(), "m_existPitch") == 0x24f4);
        try std.testing.expect(@offsetOf(@This(), "m_existRoll") == 0x24f8);
        try std.testing.expect(@offsetOf(@This(), "m_bJetWakeFXEnabled") == 0x24fc);
        try std.testing.expect(@offsetOf(@This(), "m_hLandTarget") == 0x2500);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
