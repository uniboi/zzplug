pub const CTriggerProximity = extern struct {
    vtable: *anyopaque,
    CBaseTrigger: abi.Inherit(server.CBaseTrigger),

    m_hMeasureTarget: valve.EHANDLE, // +0xc60 size: 0x4 (0x1 * 0x4) type 13
    gap_c64: [4]abi.undefined,
    m_iszMeasureTarget: [*:0]u8, // +0xc68 size: 0x8 (0x1 * 0x8) type 2
    m_fRadius: f32, // +0xc70 size: 0x4 (0x1 * 0x4) type 1
    m_nTouchers: i32, // +0xc74 size: 0x4 (0x1 * 0x4) type 5
    m_NearestEntityDistance: [40]abi.undefined, // +0xc78 size: 0x28 (0x1 * 0x28) type 11

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xca0);
        try std.testing.expect(@offsetOf(@This(), "m_hMeasureTarget") == 0xc60);
        try std.testing.expect(@offsetOf(@This(), "m_iszMeasureTarget") == 0xc68);
        try std.testing.expect(@offsetOf(@This(), "m_fRadius") == 0xc70);
        try std.testing.expect(@offsetOf(@This(), "m_nTouchers") == 0xc74);
        try std.testing.expect(@offsetOf(@This(), "m_NearestEntityDistance") == 0xc78);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
