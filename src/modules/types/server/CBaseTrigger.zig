pub const CBaseTrigger = extern struct {
    vtable: *anyopaque,
    CBaseToggle: abi.cpp.Inherit(server.CBaseToggle),

    m_bDisabled: bool, // +0xa60 size: 0x1 (0x1 * 0x1) type 6
    gap_a61: [7]abi.undefined,
    m_OnStartTouch: [40]abi.undefined, // +0xa68 size: 0x28 (0x1 * 0x28) type 11
    m_OnStartTouchAll: [40]abi.undefined, // +0xa90 size: 0x28 (0x1 * 0x28) type 11
    m_OnEndTouch: [40]abi.undefined, // +0xab8 size: 0x28 (0x1 * 0x28) type 11
    m_OnEndTouchAll: [40]abi.undefined, // +0xae0 size: 0x28 (0x1 * 0x28) type 11
    m_OnTouching: [40]abi.undefined, // +0xb08 size: 0x28 (0x1 * 0x28) type 11
    m_OnNotTouching: [40]abi.undefined, // +0xb30 size: 0x28 (0x1 * 0x28) type 11
    m_onStartNearby: [40]abi.undefined, // +0xb58 size: 0x28 (0x1 * 0x28) type 11
    m_onEndNearby: [40]abi.undefined, // +0xb80 size: 0x28 (0x1 * 0x28) type 11
    m_hTouchingEntities: [32]abi.undefined, // +0xba8 size: 0x20 (0x1 * 0x20) type 11
    m_nearbyEntities: [32]abi.undefined, // +0xbc8 size: 0x20 (0x1 * 0x20) type 11
    m_bClientSidePredicted: bool, // +0xbe8 size: 0x1 (0x1 * 0x1) type 6
    m_triggerFilterUseNew: bool, // +0xbe9 size: 0x1 (0x1 * 0x1) type 6
    m_triggerFilterNpcFlip: bool, // +0xbea size: 0x1 (0x1 * 0x1) type 6
    gap_beb: [5]abi.undefined,
    m_triggerFilterMask: i64, // +0xbf0 size: 0x8 (0x1 * 0x8) type 29
    m_enterCallback: [16]abi.undefined, // +0xbf8 size: 0x10 (0x1 * 0x10) type 11
    m_leaveCallback: [16]abi.undefined, // +0xc08 size: 0x10 (0x1 * 0x10) type 11
    m_triggerInitialized: bool, // +0xc18 size: 0x1 (0x1 * 0x1) type 6
    gap_c19: [3]abi.undefined,
    m_triggerNearbyRadius: f32, // +0xc1c size: 0x4 (0x1 * 0x4) type 1
    m_nearbyBrushes: [32]abi.undefined, // +0xc20 size: 0x20 (0x1 * 0x20) type 11
    m_triggerBrushes: [32]abi.undefined, // +0xc40 size: 0x20 (0x1 * 0x20) type 11

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xc60);
        try std.testing.expect(@offsetOf(@This(), "m_bDisabled") == 0xa60);
        try std.testing.expect(@offsetOf(@This(), "m_OnStartTouch") == 0xa68);
        try std.testing.expect(@offsetOf(@This(), "m_OnStartTouchAll") == 0xa90);
        try std.testing.expect(@offsetOf(@This(), "m_OnEndTouch") == 0xab8);
        try std.testing.expect(@offsetOf(@This(), "m_OnEndTouchAll") == 0xae0);
        try std.testing.expect(@offsetOf(@This(), "m_OnTouching") == 0xb08);
        try std.testing.expect(@offsetOf(@This(), "m_OnNotTouching") == 0xb30);
        try std.testing.expect(@offsetOf(@This(), "m_onStartNearby") == 0xb58);
        try std.testing.expect(@offsetOf(@This(), "m_onEndNearby") == 0xb80);
        try std.testing.expect(@offsetOf(@This(), "m_hTouchingEntities") == 0xba8);
        try std.testing.expect(@offsetOf(@This(), "m_nearbyEntities") == 0xbc8);
        try std.testing.expect(@offsetOf(@This(), "m_bClientSidePredicted") == 0xbe8);
        try std.testing.expect(@offsetOf(@This(), "m_triggerFilterUseNew") == 0xbe9);
        try std.testing.expect(@offsetOf(@This(), "m_triggerFilterNpcFlip") == 0xbea);
        try std.testing.expect(@offsetOf(@This(), "m_triggerFilterMask") == 0xbf0);
        try std.testing.expect(@offsetOf(@This(), "m_enterCallback") == 0xbf8);
        try std.testing.expect(@offsetOf(@This(), "m_leaveCallback") == 0xc08);
        try std.testing.expect(@offsetOf(@This(), "m_triggerInitialized") == 0xc18);
        try std.testing.expect(@offsetOf(@This(), "m_triggerNearbyRadius") == 0xc1c);
        try std.testing.expect(@offsetOf(@This(), "m_nearbyBrushes") == 0xc20);
        try std.testing.expect(@offsetOf(@This(), "m_triggerBrushes") == 0xc40);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
