pub const CAI_NetworkManager = extern struct {
    vtable: *anyopaque,
    CBaseEntity: abi.Inherit(server.CBaseEntity),

    m_pEditOps: *anyopaque, // +0x9e0 size: 0x8 (0x1 * 0x8) type 31
    m_pNetwork: *anyopaque, // +0x9e8 size: 0x8 (0x1 * 0x8) type 31
    m_fInitalized: bool, // +0x9f0 size: 0x1 (0x1 * 0x1) type 6
    m_bDontSaveGraph: bool, // +0x9f1 size: 0x1 (0x1 * 0x1) type 6
    gap_9f2: [2]abi.undefined,
    m_ainVersion: i32, // +0x9f4 size: 0x4 (0x1 * 0x4) type 5
    m_ainMapFilesCRC: i32, // +0x9f8 size: 0x4 (0x1 * 0x4) type 5
    m_runtimeCreatedAINMapFilesCRC: i32, // +0x9fc size: 0x4 (0x1 * 0x4) type 5
    m_calculatedRuntimeAINMapFilesCRC: bool, // +0xa00 size: 0x1 (0x1 * 0x1) type 6
    gap_a01: [7]abi.undefined,
    m_ThreadedBuild: [72]abi.undefined, // +0xa08 size: 0x48 (0x1 * 0x48) type 0

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xa50);
        try std.testing.expect(@offsetOf(@This(), "m_pEditOps") == 0x9e0);
        try std.testing.expect(@offsetOf(@This(), "m_pNetwork") == 0x9e8);
        try std.testing.expect(@offsetOf(@This(), "m_fInitalized") == 0x9f0);
        try std.testing.expect(@offsetOf(@This(), "m_bDontSaveGraph") == 0x9f1);
        try std.testing.expect(@offsetOf(@This(), "m_ainVersion") == 0x9f4);
        try std.testing.expect(@offsetOf(@This(), "m_ainMapFilesCRC") == 0x9f8);
        try std.testing.expect(@offsetOf(@This(), "m_runtimeCreatedAINMapFilesCRC") == 0x9fc);
        try std.testing.expect(@offsetOf(@This(), "m_calculatedRuntimeAINMapFilesCRC") == 0xa00);
        try std.testing.expect(@offsetOf(@This(), "m_ThreadedBuild") == 0xa08);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
