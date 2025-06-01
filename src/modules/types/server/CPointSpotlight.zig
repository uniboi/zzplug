pub const CPointSpotlight = extern struct {
    vtable: *anyopaque,
    CBaseEntity: abi.Inherit(server.CBaseEntity),

    m_bSpotlightOn: bool, // +0x9e0 size: 0x1 (0x1 * 0x1) type 6
    m_bEfficientSpotlight: bool, // +0x9e1 size: 0x1 (0x1 * 0x1) type 6
    gap_9e2: [2]abi.undefined,
    m_vSpotlightTargetPos: m.Vector3, // +0x9e4 size: 0xc (0x1 * 0xc) type 15
    m_vSpotlightCurrentPos: m.Vector3, // +0x9f0 size: 0xc (0x1 * 0xc) type 15
    m_vSpotlightDir: m.Vector3, // +0x9fc size: 0xc (0x1 * 0xc) type 3
    m_nHaloSprite: i32, // +0xa08 size: 0x4 (0x1 * 0x4) type 5
    m_hSpotlight: valve.EHANDLE, // +0xa0c size: 0x4 (0x1 * 0x4) type 13
    m_hSpotlightTarget: valve.EHANDLE, // +0xa10 size: 0x4 (0x1 * 0x4) type 13
    m_flSpotlightMaxLength: f32, // +0xa14 size: 0x4 (0x1 * 0x4) type 1
    m_flSpotlightCurLength: f32, // +0xa18 size: 0x4 (0x1 * 0x4) type 1
    m_flSpotlightGoalWidth: f32, // +0xa1c size: 0x4 (0x1 * 0x4) type 1
    m_flHDRColorScale: f32, // +0xa20 size: 0x4 (0x1 * 0x4) type 1
    gap_a24: [4]abi.undefined,
    m_OnOn: [40]abi.undefined, // +0xa28 size: 0x28 (0x1 * 0x28) type 11
    m_OnOff: [40]abi.undefined, // +0xa50 size: 0x28 (0x1 * 0x28) type 11

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xa78);
        try std.testing.expect(@offsetOf(@This(), "m_bSpotlightOn") == 0x9e0);
        try std.testing.expect(@offsetOf(@This(), "m_bEfficientSpotlight") == 0x9e1);
        try std.testing.expect(@offsetOf(@This(), "m_vSpotlightTargetPos") == 0x9e4);
        try std.testing.expect(@offsetOf(@This(), "m_vSpotlightCurrentPos") == 0x9f0);
        try std.testing.expect(@offsetOf(@This(), "m_vSpotlightDir") == 0x9fc);
        try std.testing.expect(@offsetOf(@This(), "m_nHaloSprite") == 0xa08);
        try std.testing.expect(@offsetOf(@This(), "m_hSpotlight") == 0xa0c);
        try std.testing.expect(@offsetOf(@This(), "m_hSpotlightTarget") == 0xa10);
        try std.testing.expect(@offsetOf(@This(), "m_flSpotlightMaxLength") == 0xa14);
        try std.testing.expect(@offsetOf(@This(), "m_flSpotlightCurLength") == 0xa18);
        try std.testing.expect(@offsetOf(@This(), "m_flSpotlightGoalWidth") == 0xa1c);
        try std.testing.expect(@offsetOf(@This(), "m_flHDRColorScale") == 0xa20);
        try std.testing.expect(@offsetOf(@This(), "m_OnOn") == 0xa28);
        try std.testing.expect(@offsetOf(@This(), "m_OnOff") == 0xa50);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
