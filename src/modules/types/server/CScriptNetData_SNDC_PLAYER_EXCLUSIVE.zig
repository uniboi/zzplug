pub const CScriptNetData_SNDC_PLAYER_EXCLUSIVE = extern struct {
    vtable: *anyopaque,
    CScriptNetData: abi.Inherit(server.CScriptNetData),

    m_bools: [16]bool, // +0x9e0 size: 0x10 (0x10 * 0x1) type 6
    m_ranges: [16]i16, // +0x9f0 size: 0x20 (0x10 * 0x2) type 7
    m_times: [8]valve.time, // +0xa10 size: 0x20 (0x8 * 0x4) type 16
    m_entities: [4]valve.EHANDLE, // +0xa30 size: 0x10 (0x4 * 0x4) type 13

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xa40);
        try std.testing.expect(@offsetOf(@This(), "m_bools") == 0x9e0);
        try std.testing.expect(@offsetOf(@This(), "m_ranges") == 0x9f0);
        try std.testing.expect(@offsetOf(@This(), "m_times") == 0xa10);
        try std.testing.expect(@offsetOf(@This(), "m_entities") == 0xa30);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");