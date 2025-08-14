pub const CCollisionProperty = extern struct {
    vtable: *anyopaque,
    m_pOuter: *server.CBaseEntity, // +0x8 size: 0x8 (0x1 * 0x8) type 12
    m_vecMins: m.Vector3, // +0x10 size: 0xc (0x1 * 0xc) type 3
    m_vecMaxs: m.Vector3, // +0x1c size: 0xc (0x1 * 0xc) type 3
    m_usSolidFlags: i32, // +0x28 size: 0x4 (0x1 * 0x4) type 5
    m_nSolidType: u8, // +0x2c size: 0x1 (0x1 * 0x1) type 8
    m_triggerBloat: u8, // +0x2d size: 0x1 (0x1 * 0x1) type 8
    gap_2e: [2]abi.undefined,
    m_flRadius: f32, // +0x30 size: 0x4 (0x1 * 0x4) type 1
    m_PartitionHandle: i16, // +0x34 size: 0x2 (0x1 * 0x2) type 7
    m_nSurroundType: u8, // +0x36 size: 0x1 (0x1 * 0x1) type 8
    m_bRemovedFromPartition: bool, // +0x37 size: 0x1 (0x1 * 0x1) type 6
    m_spatialPartitionFlags: i32, // +0x38 size: 0x4 (0x1 * 0x4) type 5
    m_vecSpecifiedSurroundingMins: m.Vector3, // +0x3c size: 0xc (0x1 * 0xc) type 3
    m_vecSpecifiedSurroundingMaxs: m.Vector3, // +0x48 size: 0xc (0x1 * 0xc) type 3
    m_vecSurroundingMins: m.Vector3, // +0x54 size: 0xc (0x1 * 0xc) type 3
    m_vecSurroundingMaxs: m.Vector3, // +0x60 size: 0xc (0x1 * 0xc) type 3
    m_hitboxTestRadius: f32, // +0x6c size: 0x4 (0x1 * 0x4) type 1

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x70);
        try std.testing.expect(@offsetOf(@This(), "m_pOuter") == 0x8);
        try std.testing.expect(@offsetOf(@This(), "m_vecMins") == 0x10);
        try std.testing.expect(@offsetOf(@This(), "m_vecMaxs") == 0x1c);
        try std.testing.expect(@offsetOf(@This(), "m_usSolidFlags") == 0x28);
        try std.testing.expect(@offsetOf(@This(), "m_nSolidType") == 0x2c);
        try std.testing.expect(@offsetOf(@This(), "m_triggerBloat") == 0x2d);
        try std.testing.expect(@offsetOf(@This(), "m_flRadius") == 0x30);
        try std.testing.expect(@offsetOf(@This(), "m_PartitionHandle") == 0x34);
        try std.testing.expect(@offsetOf(@This(), "m_nSurroundType") == 0x36);
        try std.testing.expect(@offsetOf(@This(), "m_bRemovedFromPartition") == 0x37);
        try std.testing.expect(@offsetOf(@This(), "m_spatialPartitionFlags") == 0x38);
        try std.testing.expect(@offsetOf(@This(), "m_vecSpecifiedSurroundingMins") == 0x3c);
        try std.testing.expect(@offsetOf(@This(), "m_vecSpecifiedSurroundingMaxs") == 0x48);
        try std.testing.expect(@offsetOf(@This(), "m_vecSurroundingMins") == 0x54);
        try std.testing.expect(@offsetOf(@This(), "m_vecSurroundingMaxs") == 0x60);
        try std.testing.expect(@offsetOf(@This(), "m_hitboxTestRadius") == 0x6c);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
