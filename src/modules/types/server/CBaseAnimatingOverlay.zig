pub const CBaseAnimatingOverlay = extern struct {
    vtable: *anyopaque,
    CBaseAnimating: abi.Inherit(server.CBaseAnimating),

    m_maxOverlays: i32, // +0xeb8 size: 0x4 (0x1 * 0x4) type 5
    gap_ebc: [4]abi.undefined,
    m_AnimOverlay: [8]server.CAnimationLayer, // +0xec0 size: 0x30 (0x8 * 0x6) type 10
    m_AnimOverlayCount: i32, // +0x1040 size: 0x4 (0x1 * 0x4) type 5
    m_animOverlayIsActive: [8]bool, // +0x1044 size: 0x8 (0x8 * 0x1) type 6
    m_animOverlayModelIndex: [8]i32, // +0x104c size: 0x20 (0x8 * 0x4) type 5
    m_animOverlaySequence: [8]i32, // +0x106c size: 0x20 (0x8 * 0x4) type 5
    m_animOverlayCycle: [8]f32, // +0x108c size: 0x20 (0x8 * 0x4) type 1
    m_animOverlayStartTime: [8]f32, // +0x10ac size: 0x20 (0x8 * 0x4) type 1
    m_animOverlayStartCycle: [8]f32, // +0x10cc size: 0x20 (0x8 * 0x4) type 1
    m_animOverlayPlaybackRate: [8]f32, // +0x10ec size: 0x20 (0x8 * 0x4) type 1
    m_animOverlayWeight: [8]f32, // +0x110c size: 0x20 (0x8 * 0x4) type 1
    m_animOverlayOrder: [8]i32, // +0x112c size: 0x20 (0x8 * 0x4) type 5
    m_animOverlayAnimTime: [8]f32, // +0x114c size: 0x20 (0x8 * 0x4) type 1
    m_animOverlayFadeInDuration: [8]f32, // +0x116c size: 0x20 (0x8 * 0x4) type 1
    m_animOverlayFadeOutDuration: [8]f32, // +0x118c size: 0x20 (0x8 * 0x4) type 1
    m_localAnimOverlayIsActive: [4]bool, // +0x11ac size: 0x4 (0x4 * 0x1) type 6
    m_localAnimOverlayModelIndex: [4]i32, // +0x11b0 size: 0x10 (0x4 * 0x4) type 5
    m_localAnimOverlaySequence: [4]i32, // +0x11c0 size: 0x10 (0x4 * 0x4) type 5
    m_localAnimOverlayStartTime: [4]f32, // +0x11d0 size: 0x10 (0x4 * 0x4) type 1
    m_localAnimOverlayWeight: [4]f32, // +0x11e0 size: 0x10 (0x4 * 0x4) type 1
    m_localAnimOverlayFadeInDuration: [4]f32, // +0x11f0 size: 0x10 (0x4 * 0x4) type 1
    m_localAnimOverlayFadeOutDuration: [4]f32, // +0x1200 size: 0x10 (0x4 * 0x4) type 1

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x1210);
        try std.testing.expect(@offsetOf(@This(), "m_maxOverlays") == 0xeb8);
        try std.testing.expect(@offsetOf(@This(), "m_AnimOverlay") == 0xec0);
        try std.testing.expect(@offsetOf(@This(), "m_AnimOverlayCount") == 0x1040);
        try std.testing.expect(@offsetOf(@This(), "m_animOverlayIsActive") == 0x1044);
        try std.testing.expect(@offsetOf(@This(), "m_animOverlayModelIndex") == 0x104c);
        try std.testing.expect(@offsetOf(@This(), "m_animOverlaySequence") == 0x106c);
        try std.testing.expect(@offsetOf(@This(), "m_animOverlayCycle") == 0x108c);
        try std.testing.expect(@offsetOf(@This(), "m_animOverlayStartTime") == 0x10ac);
        try std.testing.expect(@offsetOf(@This(), "m_animOverlayStartCycle") == 0x10cc);
        try std.testing.expect(@offsetOf(@This(), "m_animOverlayPlaybackRate") == 0x10ec);
        try std.testing.expect(@offsetOf(@This(), "m_animOverlayWeight") == 0x110c);
        try std.testing.expect(@offsetOf(@This(), "m_animOverlayOrder") == 0x112c);
        try std.testing.expect(@offsetOf(@This(), "m_animOverlayAnimTime") == 0x114c);
        try std.testing.expect(@offsetOf(@This(), "m_animOverlayFadeInDuration") == 0x116c);
        try std.testing.expect(@offsetOf(@This(), "m_animOverlayFadeOutDuration") == 0x118c);
        try std.testing.expect(@offsetOf(@This(), "m_localAnimOverlayIsActive") == 0x11ac);
        try std.testing.expect(@offsetOf(@This(), "m_localAnimOverlayModelIndex") == 0x11b0);
        try std.testing.expect(@offsetOf(@This(), "m_localAnimOverlaySequence") == 0x11c0);
        try std.testing.expect(@offsetOf(@This(), "m_localAnimOverlayStartTime") == 0x11d0);
        try std.testing.expect(@offsetOf(@This(), "m_localAnimOverlayWeight") == 0x11e0);
        try std.testing.expect(@offsetOf(@This(), "m_localAnimOverlayFadeInDuration") == 0x11f0);
        try std.testing.expect(@offsetOf(@This(), "m_localAnimOverlayFadeOutDuration") == 0x1200);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
