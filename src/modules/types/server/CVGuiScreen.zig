pub const CVGuiScreen = extern struct {
    vtable: *anyopaque,
    CBaseEntity: abi.Inherit(server.CBaseEntity),

    m_strOverlayMaterial: [*:0]u8, // +0x9e0 size: 0x8 (0x1 * 0x8) type 2
    m_bIsTransparent: bool, // +0x9e8 size: 0x1 (0x1 * 0x1) type 6
    gap_9e9: [3]abi.undefined,
    m_flWidth: f32, // +0x9ec size: 0x4 (0x1 * 0x4) type 1
    m_flHeight: f32, // +0x9f0 size: 0x4 (0x1 * 0x4) type 1
    m_nPanelName: [4]abi.undefined, // +0x9f4 size: 0x4 (0x1 * 0x4) type 11
    m_nAttachmentIndex: i32, // +0x9f8 size: 0x4 (0x1 * 0x4) type 5
    m_nOverlayMaterial: i32, // +0x9fc size: 0x4 (0x1 * 0x4) type 5
    m_fScreenFlags: i32, // +0xa00 size: 0x4 (0x1 * 0x4) type 5
    m_hPlayerOwner: valve.EHANDLE, // +0xa04 size: 0x4 (0x1 * 0x4) type 13

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xa08);
        try std.testing.expect(@offsetOf(@This(), "m_strOverlayMaterial") == 0x9e0);
        try std.testing.expect(@offsetOf(@This(), "m_bIsTransparent") == 0x9e8);
        try std.testing.expect(@offsetOf(@This(), "m_flWidth") == 0x9ec);
        try std.testing.expect(@offsetOf(@This(), "m_flHeight") == 0x9f0);
        try std.testing.expect(@offsetOf(@This(), "m_nPanelName") == 0x9f4);
        try std.testing.expect(@offsetOf(@This(), "m_nAttachmentIndex") == 0x9f8);
        try std.testing.expect(@offsetOf(@This(), "m_nOverlayMaterial") == 0x9fc);
        try std.testing.expect(@offsetOf(@This(), "m_fScreenFlags") == 0xa00);
        try std.testing.expect(@offsetOf(@This(), "m_hPlayerOwner") == 0xa04);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
