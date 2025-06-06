pub const CFogVolume = extern struct {
    vtable: *anyopaque,
    CBaseEntity: abi.Inherit(server.CBaseEntity),

    m_fogName: [*:0]u8, // +0x9e0 size: 0x8 (0x1 * 0x8) type 2
    m_postProcessName: [*:0]u8, // +0x9e8 size: 0x8 (0x1 * 0x8) type 2
    m_colorCorrectionName: [*:0]u8, // +0x9f0 size: 0x8 (0x1 * 0x8) type 2
    m_hFogController: valve.EHANDLE, // +0x9f8 size: 0x4 (0x1 * 0x4) type 13
    m_hPostProcessController: valve.EHANDLE, // +0x9fc size: 0x4 (0x1 * 0x4) type 13
    m_hColorCorrectionController: valve.EHANDLE, // +0xa00 size: 0x4 (0x1 * 0x4) type 13
    m_fogPriority: i32, // +0xa04 size: 0x4 (0x1 * 0x4) type 5
    m_bDisabled: bool, // +0xa08 size: 0x1 (0x1 * 0x1) type 6
    m_bInFogVolumesList: bool, // +0xa09 size: 0x1 (0x1 * 0x1) type 6

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xa10);
        try std.testing.expect(@offsetOf(@This(), "m_fogName") == 0x9e0);
        try std.testing.expect(@offsetOf(@This(), "m_postProcessName") == 0x9e8);
        try std.testing.expect(@offsetOf(@This(), "m_colorCorrectionName") == 0x9f0);
        try std.testing.expect(@offsetOf(@This(), "m_hFogController") == 0x9f8);
        try std.testing.expect(@offsetOf(@This(), "m_hPostProcessController") == 0x9fc);
        try std.testing.expect(@offsetOf(@This(), "m_hColorCorrectionController") == 0xa00);
        try std.testing.expect(@offsetOf(@This(), "m_fogPriority") == 0xa04);
        try std.testing.expect(@offsetOf(@This(), "m_bDisabled") == 0xa08);
        try std.testing.expect(@offsetOf(@This(), "m_bInFogVolumesList") == 0xa09);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
