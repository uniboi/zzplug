pub const GrappleData = extern struct {
    vtable: *anyopaque,
    m_grappleVel: m.Vector3, // +0x8 size: 0xc (0x1 * 0xc) type 3
    m_grapplePoints: [4]m.Vector3, // +0x14 size: 0x30 (0x4 * 0xc) type 3
    m_grapplePointCount: i32, // +0x44 size: 0x4 (0x1 * 0x4) type 5
    m_grappleAttached: bool, // +0x48 size: 0x1 (0x1 * 0x1) type 6
    m_grapplePulling: bool, // +0x49 size: 0x1 (0x1 * 0x1) type 6
    m_grappleRetracting: bool, // +0x4a size: 0x1 (0x1 * 0x1) type 6
    m_grappleForcedRetracting: bool, // +0x4b size: 0x1 (0x1 * 0x1) type 6
    m_grappleUsedPower: f32, // +0x4c size: 0x4 (0x1 * 0x4) type 1
    m_grapplePullTime: valve.time, // +0x50 size: 0x4 (0x1 * 0x4) type 16
    m_grappleAttachTime: valve.time, // +0x54 size: 0x4 (0x1 * 0x4) type 16
    m_grappleDetachTime: valve.time, // +0x58 size: 0x4 (0x1 * 0x4) type 16
    m_grappleMeleeTarget: valve.EHANDLE, // +0x5c size: 0x4 (0x1 * 0x4) type 13
    m_grappleHasGoodVelocity: bool, // +0x60 size: 0x1 (0x1 * 0x1) type 6
    gap_61: [3]abi.undefined,
    m_grappleLastGoodVelocityTime: valve.time, // +0x64 size: 0x4 (0x1 * 0x4) type 16

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x68);
        try std.testing.expect(@offsetOf(@This(), "m_grappleVel") == 0x8);
        try std.testing.expect(@offsetOf(@This(), "m_grapplePoints") == 0x14);
        try std.testing.expect(@offsetOf(@This(), "m_grapplePointCount") == 0x44);
        try std.testing.expect(@offsetOf(@This(), "m_grappleAttached") == 0x48);
        try std.testing.expect(@offsetOf(@This(), "m_grapplePulling") == 0x49);
        try std.testing.expect(@offsetOf(@This(), "m_grappleRetracting") == 0x4a);
        try std.testing.expect(@offsetOf(@This(), "m_grappleForcedRetracting") == 0x4b);
        try std.testing.expect(@offsetOf(@This(), "m_grappleUsedPower") == 0x4c);
        try std.testing.expect(@offsetOf(@This(), "m_grapplePullTime") == 0x50);
        try std.testing.expect(@offsetOf(@This(), "m_grappleAttachTime") == 0x54);
        try std.testing.expect(@offsetOf(@This(), "m_grappleDetachTime") == 0x58);
        try std.testing.expect(@offsetOf(@This(), "m_grappleMeleeTarget") == 0x5c);
        try std.testing.expect(@offsetOf(@This(), "m_grappleHasGoodVelocity") == 0x60);
        try std.testing.expect(@offsetOf(@This(), "m_grappleLastGoodVelocityTime") == 0x64);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
