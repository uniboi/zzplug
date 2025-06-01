pub const CEnvTonemapController = extern struct {
    vtable: *anyopaque,
    CBaseEntity: abi.Inherit(server.CBaseEntity),

    m_bUseCustomAutoExposureMin: bool, // +0x9e0 size: 0x1 (0x1 * 0x1) type 6
    m_bUseCustomAutoExposureMax: bool, // +0x9e1 size: 0x1 (0x1 * 0x1) type 6
    m_bUseCustomAutoExposureRate: bool, // +0x9e2 size: 0x1 (0x1 * 0x1) type 6
    m_bUseCustomBloomScale: bool, // +0x9e3 size: 0x1 (0x1 * 0x1) type 6
    m_flCustomAutoExposureMin: f32, // +0x9e4 size: 0x4 (0x1 * 0x4) type 1
    m_flCustomAutoExposureMax: f32, // +0x9e8 size: 0x4 (0x1 * 0x4) type 1
    m_flCustomAutoExposureRate: f32, // +0x9ec size: 0x4 (0x1 * 0x4) type 1
    m_flCustomBloomScale: f32, // +0x9f0 size: 0x4 (0x1 * 0x4) type 1

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x9f8);
        try std.testing.expect(@offsetOf(@This(), "m_bUseCustomAutoExposureMin") == 0x9e0);
        try std.testing.expect(@offsetOf(@This(), "m_bUseCustomAutoExposureMax") == 0x9e1);
        try std.testing.expect(@offsetOf(@This(), "m_bUseCustomAutoExposureRate") == 0x9e2);
        try std.testing.expect(@offsetOf(@This(), "m_bUseCustomBloomScale") == 0x9e3);
        try std.testing.expect(@offsetOf(@This(), "m_flCustomAutoExposureMin") == 0x9e4);
        try std.testing.expect(@offsetOf(@This(), "m_flCustomAutoExposureMax") == 0x9e8);
        try std.testing.expect(@offsetOf(@This(), "m_flCustomAutoExposureRate") == 0x9ec);
        try std.testing.expect(@offsetOf(@This(), "m_flCustomBloomScale") == 0x9f0);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");