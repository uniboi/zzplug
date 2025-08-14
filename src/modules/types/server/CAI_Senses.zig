pub const CAI_Senses = extern struct {
    vtable: *anyopaque,
    CAI_Component: abi.cpp.Inherit(server.CAI_Component),

    m_seenEnemiesCount: i32, // +0x10 size: 0x4 (0x1 * 0x4) type 5
    m_ClosestHighPriority: valve.EHANDLE, // +0x14 size: 0x4 (0x1 * 0x4) type 13
    m_ClosestEnemyNPC: valve.EHANDLE, // +0x18 size: 0x4 (0x1 * 0x4) type 13
    m_lookDistOverride: f32, // +0x1c size: 0x4 (0x1 * 0x4) type 1
    m_LastLookDist: f32, // +0x20 size: 0x4 (0x1 * 0x4) type 1
    m_TimeLastLook: valve.time, // +0x24 size: 0x4 (0x1 * 0x4) type 16
    m_hearingSensitivity: f32, // +0x28 size: 0x4 (0x1 * 0x4) type 1
    m_iAudibleList: i32, // +0x2c size: 0x4 (0x1 * 0x4) type 5
    m_NextAudibleSound: [512]abi.undefined, // +0x30 size: 0x200 (0x1 * 0x200) type 0
    m_reactToSound: server.CSound, // +0x230 size: 0x28 (0x1 * 0x28) type 10
    m_sightProgress: [32]abi.undefined, // +0x258 size: 0x20 (0x1 * 0x20) type 0
    m_SeenHighPriority: [32]abi.undefined, // +0x278 size: 0x20 (0x1 * 0x20) type 11
    m_SeenNPCs: [32]abi.undefined, // +0x298 size: 0x20 (0x1 * 0x20) type 11
    m_SeenMisc: [32]abi.undefined, // +0x2b8 size: 0x20 (0x1 * 0x20) type 11
    m_TeamSpotted: [32]abi.undefined, // +0x2d8 size: 0x20 (0x1 * 0x20) type 11
    m_SeenCorpseIndex: i32, // +0x2f8 size: 0x4 (0x1 * 0x4) type 5
    m_bGatheringSeenEntities: bool, // +0x2fc size: 0x1 (0x1 * 0x1) type 6
    gap_2fd: [3]abi.undefined,
    m_currentSeenArray: i32, // +0x300 size: 0x4 (0x1 * 0x4) type 5
    gap_304: [4]abi.undefined,
    m_SeenArrays: [24]abi.undefined, // +0x308 size: 0x18 (0x1 * 0x18) type 0
    m_TimeLastLookHighPriority: valve.time, // +0x320 size: 0x4 (0x1 * 0x4) type 16
    m_TimeLastLookNPCs: valve.time, // +0x324 size: 0x4 (0x1 * 0x4) type 16
    m_TimeLastLookMisc: valve.time, // +0x328 size: 0x4 (0x1 * 0x4) type 16
    m_TimeLastLookCorpse: valve.time, // +0x32c size: 0x4 (0x1 * 0x4) type 16
    m_iSensingFlags: i32, // +0x330 size: 0x4 (0x1 * 0x4) type 5
    gap_334: [4]abi.undefined,
    m_mutex: [40]abi.undefined, // +0x338 size: 0x28 (0x1 * 0x28) type 0

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x360);
        try std.testing.expect(@offsetOf(@This(), "m_seenEnemiesCount") == 0x10);
        try std.testing.expect(@offsetOf(@This(), "m_ClosestHighPriority") == 0x14);
        try std.testing.expect(@offsetOf(@This(), "m_ClosestEnemyNPC") == 0x18);
        try std.testing.expect(@offsetOf(@This(), "m_lookDistOverride") == 0x1c);
        try std.testing.expect(@offsetOf(@This(), "m_LastLookDist") == 0x20);
        try std.testing.expect(@offsetOf(@This(), "m_TimeLastLook") == 0x24);
        try std.testing.expect(@offsetOf(@This(), "m_hearingSensitivity") == 0x28);
        try std.testing.expect(@offsetOf(@This(), "m_iAudibleList") == 0x2c);
        try std.testing.expect(@offsetOf(@This(), "m_NextAudibleSound") == 0x30);
        try std.testing.expect(@offsetOf(@This(), "m_reactToSound") == 0x230);
        try std.testing.expect(@offsetOf(@This(), "m_sightProgress") == 0x258);
        try std.testing.expect(@offsetOf(@This(), "m_SeenHighPriority") == 0x278);
        try std.testing.expect(@offsetOf(@This(), "m_SeenNPCs") == 0x298);
        try std.testing.expect(@offsetOf(@This(), "m_SeenMisc") == 0x2b8);
        try std.testing.expect(@offsetOf(@This(), "m_TeamSpotted") == 0x2d8);
        try std.testing.expect(@offsetOf(@This(), "m_SeenCorpseIndex") == 0x2f8);
        try std.testing.expect(@offsetOf(@This(), "m_bGatheringSeenEntities") == 0x2fc);
        try std.testing.expect(@offsetOf(@This(), "m_currentSeenArray") == 0x300);
        try std.testing.expect(@offsetOf(@This(), "m_SeenArrays") == 0x308);
        try std.testing.expect(@offsetOf(@This(), "m_TimeLastLookHighPriority") == 0x320);
        try std.testing.expect(@offsetOf(@This(), "m_TimeLastLookNPCs") == 0x324);
        try std.testing.expect(@offsetOf(@This(), "m_TimeLastLookMisc") == 0x328);
        try std.testing.expect(@offsetOf(@This(), "m_TimeLastLookCorpse") == 0x32c);
        try std.testing.expect(@offsetOf(@This(), "m_iSensingFlags") == 0x330);
        try std.testing.expect(@offsetOf(@This(), "m_mutex") == 0x338);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
