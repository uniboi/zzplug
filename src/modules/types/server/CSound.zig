pub const CSound = extern struct {
    m_hOwner: valve.EHANDLE, // +0x0 size: 0x4 (0x1 * 0x4) type 13
    m_hTarget: valve.EHANDLE, // +0x4 size: 0x4 (0x1 * 0x4) type 13
    m_audibleRadius: f32, // +0x8 size: 0x4 (0x1 * 0x4) type 1
    m_expireTime: valve.time, // +0xc size: 0x4 (0x1 * 0x4) type 16
    m_ownerChannelIndex: i32, // +0x10 size: 0x4 (0x1 * 0x4) type 5
    m_iType: i32, // +0x14 size: 0x4 (0x1 * 0x4) type 5
    m_vecOrigin: m.Vector3, // +0x18 size: 0xc (0x1 * 0xc) type 15
    m_iNext: i16, // +0x24 size: 0x2 (0x1 * 0x2) type 7
    m_bReserved: bool, // +0x26 size: 0x1 (0x1 * 0x1) type 6
    m_ownerMustExist: bool, // +0x27 size: 0x1 (0x1 * 0x1) type 6

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x28);
        try std.testing.expect(@offsetOf(@This(), "m_hOwner") == 0x0);
        try std.testing.expect(@offsetOf(@This(), "m_hTarget") == 0x4);
        try std.testing.expect(@offsetOf(@This(), "m_audibleRadius") == 0x8);
        try std.testing.expect(@offsetOf(@This(), "m_expireTime") == 0xc);
        try std.testing.expect(@offsetOf(@This(), "m_ownerChannelIndex") == 0x10);
        try std.testing.expect(@offsetOf(@This(), "m_iType") == 0x14);
        try std.testing.expect(@offsetOf(@This(), "m_vecOrigin") == 0x18);
        try std.testing.expect(@offsetOf(@This(), "m_iNext") == 0x24);
        try std.testing.expect(@offsetOf(@This(), "m_bReserved") == 0x26);
        try std.testing.expect(@offsetOf(@This(), "m_ownerMustExist") == 0x27);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
