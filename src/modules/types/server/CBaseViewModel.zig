pub const CBaseViewModel = extern struct {
    vtable: *anyopaque,
    CBaseAnimatingOverlay: abi.Inherit(server.CBaseAnimatingOverlay),

    m_viewModelOwner: valve.EHANDLE, // +0x1210 size: 0x4 (0x1 * 0x4) type 13
    m_viewModelActivity: i32, // +0x1214 size: 0x4 (0x1 * 0x4) type 5
    m_sVMName: [*:0]u8, // +0x1218 size: 0x8 (0x1 * 0x8) type 2
    m_projectileIsVisible: bool, // +0x1220 size: 0x1 (0x1 * 0x1) type 6
    gap_1221: [7]abi.undefined,
    m_hScreens: [32]abi.undefined, // +0x1228 size: 0x20 (0x1 * 0x20) type 11
    m_transitionSequence: i32, // +0x1248 size: 0x4 (0x1 * 0x4) type 5
    m_goalSequence: i32, // +0x124c size: 0x4 (0x1 * 0x4) type 5
    m_goalPlaybackRate: f32, // +0x1250 size: 0x4 (0x1 * 0x4) type 1
    m_hWeapon: valve.EHANDLE, // +0x1254 size: 0x4 (0x1 * 0x4) type 13
    m_tracerAttachments: [2]i32, // +0x1258 size: 0x8 (0x2 * 0x4) type 5
    m_tracerAttachmentsScoped: [2]i32, // +0x1260 size: 0x8 (0x2 * 0x4) type 5

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x1268);
        try std.testing.expect(@offsetOf(@This(), "m_viewModelOwner") == 0x1210);
        try std.testing.expect(@offsetOf(@This(), "m_viewModelActivity") == 0x1214);
        try std.testing.expect(@offsetOf(@This(), "m_sVMName") == 0x1218);
        try std.testing.expect(@offsetOf(@This(), "m_projectileIsVisible") == 0x1220);
        try std.testing.expect(@offsetOf(@This(), "m_hScreens") == 0x1228);
        try std.testing.expect(@offsetOf(@This(), "m_transitionSequence") == 0x1248);
        try std.testing.expect(@offsetOf(@This(), "m_goalSequence") == 0x124c);
        try std.testing.expect(@offsetOf(@This(), "m_goalPlaybackRate") == 0x1250);
        try std.testing.expect(@offsetOf(@This(), "m_hWeapon") == 0x1254);
        try std.testing.expect(@offsetOf(@This(), "m_tracerAttachments") == 0x1258);
        try std.testing.expect(@offsetOf(@This(), "m_tracerAttachmentsScoped") == 0x1260);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
