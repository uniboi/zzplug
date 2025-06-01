pub const CBeamSpotlight = extern struct {
    vtable: *anyopaque,
    CBaseEntity: abi.Inherit(server.CBaseEntity),

    m_nHaloIndex: valve.ModelIndex, // +0x9e0 size: 0x4 (0x1 * 0x4) type 26
    m_bSpotlightOn: bool, // +0x9e4 size: 0x1 (0x1 * 0x1) type 6
    m_bHasDynamicLight: bool, // +0x9e5 size: 0x1 (0x1 * 0x1) type 6
    gap_9e6: [2]abi.undefined,
    m_flSpotlightMaxLength: f32, // +0x9e8 size: 0x4 (0x1 * 0x4) type 1
    m_flSpotlightGoalWidth: f32, // +0x9ec size: 0x4 (0x1 * 0x4) type 1
    m_flHDRColorScale: f32, // +0x9f0 size: 0x4 (0x1 * 0x4) type 1
    m_nMinDXLevel: i32, // +0x9f4 size: 0x4 (0x1 * 0x4) type 5
    m_nRotationAxis: i32, // +0x9f8 size: 0x4 (0x1 * 0x4) type 5
    m_flRotationSpeed: f32, // +0x9fc size: 0x4 (0x1 * 0x4) type 1
    m_flmaxSpeed: f32, // +0xa00 size: 0x4 (0x1 * 0x4) type 1
    m_isRotating: bool, // +0xa04 size: 0x1 (0x1 * 0x1) type 6
    m_isReversed: bool, // +0xa05 size: 0x1 (0x1 * 0x1) type 6
    gap_a06: [2]abi.undefined,
    m_OnOn: [40]abi.undefined, // +0xa08 size: 0x28 (0x1 * 0x28) type 11
    m_OnOff: [40]abi.undefined, // +0xa30 size: 0x28 (0x1 * 0x28) type 11

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xa58);
        try std.testing.expect(@offsetOf(@This(), "m_nHaloIndex") == 0x9e0);
        try std.testing.expect(@offsetOf(@This(), "m_bSpotlightOn") == 0x9e4);
        try std.testing.expect(@offsetOf(@This(), "m_bHasDynamicLight") == 0x9e5);
        try std.testing.expect(@offsetOf(@This(), "m_flSpotlightMaxLength") == 0x9e8);
        try std.testing.expect(@offsetOf(@This(), "m_flSpotlightGoalWidth") == 0x9ec);
        try std.testing.expect(@offsetOf(@This(), "m_flHDRColorScale") == 0x9f0);
        try std.testing.expect(@offsetOf(@This(), "m_nMinDXLevel") == 0x9f4);
        try std.testing.expect(@offsetOf(@This(), "m_nRotationAxis") == 0x9f8);
        try std.testing.expect(@offsetOf(@This(), "m_flRotationSpeed") == 0x9fc);
        try std.testing.expect(@offsetOf(@This(), "m_flmaxSpeed") == 0xa00);
        try std.testing.expect(@offsetOf(@This(), "m_isRotating") == 0xa04);
        try std.testing.expect(@offsetOf(@This(), "m_isReversed") == 0xa05);
        try std.testing.expect(@offsetOf(@This(), "m_OnOn") == 0xa08);
        try std.testing.expect(@offsetOf(@This(), "m_OnOff") == 0xa30);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
