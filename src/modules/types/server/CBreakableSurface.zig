pub const CBreakableSurface = extern struct {
    vtable: *anyopaque,
    CBreakable: abi.cpp.Inherit(server.CBreakable),

    m_nNumWide: i32, // +0xae0 size: 0x4 (0x1 * 0x4) type 5
    m_nNumHigh: i32, // +0xae4 size: 0x4 (0x1 * 0x4) type 5
    m_flPanelWidth: f32, // +0xae8 size: 0x4 (0x1 * 0x4) type 1
    m_flPanelHeight: f32, // +0xaec size: 0x4 (0x1 * 0x4) type 1
    m_vNormal: m.Vector3, // +0xaf0 size: 0xc (0x1 * 0xc) type 3
    m_vUp: m.Vector3, // +0xafc size: 0xc (0x1 * 0xc) type 3
    m_vCorner: m.Vector3, // +0xb08 size: 0xc (0x1 * 0xc) type 15
    m_bIsBroken: bool, // +0xb14 size: 0x1 (0x1 * 0x1) type 6
    gap_b15: [3]abi.undefined,
    m_nSurfaceType: i32, // +0xb18 size: 0x4 (0x1 * 0x4) type 5
    m_nNumBrokenPanes: i32, // +0xb1c size: 0x4 (0x1 * 0x4) type 5
    m_flSupport: [256]f32, // +0xb20 size: 0x400 (0x100 * 0x4) type 1
    m_nFragility: i32, // +0xf20 size: 0x4 (0x1 * 0x4) type 5
    m_vLLVertex: m.Vector3, // +0xf24 size: 0xc (0x1 * 0xc) type 3
    m_vULVertex: m.Vector3, // +0xf30 size: 0xc (0x1 * 0xc) type 3
    m_vLRVertex: m.Vector3, // +0xf3c size: 0xc (0x1 * 0xc) type 3
    m_vURVertex: m.Vector3, // +0xf48 size: 0xc (0x1 * 0xc) type 3
    m_nQuadError: i32, // +0xf54 size: 0x4 (0x1 * 0x4) type 5
    m_vLocalNormal: m.Vector3, // +0xf58 size: 0xc (0x1 * 0xc) type 3
    m_vLocalUp: m.Vector3, // +0xf64 size: 0xc (0x1 * 0xc) type 3
    m_vLocalRight: m.Vector3, // +0xf70 size: 0xc (0x1 * 0xc) type 3
    m_vLocalCorner: m.Vector3, // +0xf7c size: 0xc (0x1 * 0xc) type 3
    m_RawPanelBitVec: [256]bool, // +0xf88 size: 0x100 (0x100 * 0x1) type 6

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x1088);
        try std.testing.expect(@offsetOf(@This(), "m_nNumWide") == 0xae0);
        try std.testing.expect(@offsetOf(@This(), "m_nNumHigh") == 0xae4);
        try std.testing.expect(@offsetOf(@This(), "m_flPanelWidth") == 0xae8);
        try std.testing.expect(@offsetOf(@This(), "m_flPanelHeight") == 0xaec);
        try std.testing.expect(@offsetOf(@This(), "m_vNormal") == 0xaf0);
        try std.testing.expect(@offsetOf(@This(), "m_vUp") == 0xafc);
        try std.testing.expect(@offsetOf(@This(), "m_vCorner") == 0xb08);
        try std.testing.expect(@offsetOf(@This(), "m_bIsBroken") == 0xb14);
        try std.testing.expect(@offsetOf(@This(), "m_nSurfaceType") == 0xb18);
        try std.testing.expect(@offsetOf(@This(), "m_nNumBrokenPanes") == 0xb1c);
        try std.testing.expect(@offsetOf(@This(), "m_flSupport") == 0xb20);
        try std.testing.expect(@offsetOf(@This(), "m_nFragility") == 0xf20);
        try std.testing.expect(@offsetOf(@This(), "m_vLLVertex") == 0xf24);
        try std.testing.expect(@offsetOf(@This(), "m_vULVertex") == 0xf30);
        try std.testing.expect(@offsetOf(@This(), "m_vLRVertex") == 0xf3c);
        try std.testing.expect(@offsetOf(@This(), "m_vURVertex") == 0xf48);
        try std.testing.expect(@offsetOf(@This(), "m_nQuadError") == 0xf54);
        try std.testing.expect(@offsetOf(@This(), "m_vLocalNormal") == 0xf58);
        try std.testing.expect(@offsetOf(@This(), "m_vLocalUp") == 0xf64);
        try std.testing.expect(@offsetOf(@This(), "m_vLocalRight") == 0xf70);
        try std.testing.expect(@offsetOf(@This(), "m_vLocalCorner") == 0xf7c);
        try std.testing.expect(@offsetOf(@This(), "m_RawPanelBitVec") == 0xf88);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
