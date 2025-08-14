pub const CScriptNetData_SNDC_TITAN_SOUL = extern struct {
    vtable: *anyopaque,
    CScriptNetData: abi.Inherit(server.CScriptNetData),

    m_bools: [8]bool, // +0x9e0 size: 0x8 (0x8 * 0x1) type 6
    m_ranges: [16]i16, // +0x9e8 size: 0x20 (0x10 * 0x2) type 7
    m_times: [8]valve.time, // +0xa08 size: 0x20 (0x8 * 0x4) type 16
    m_entities: [4]valve.EHANDLE, // +0xa28 size: 0x10 (0x4 * 0x4) type 13

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xa38);
        try std.testing.expect(@offsetOf(@This(), "m_bools") == 0x9e0);
        try std.testing.expect(@offsetOf(@This(), "m_ranges") == 0x9e8);
        try std.testing.expect(@offsetOf(@This(), "m_times") == 0xa08);
        try std.testing.expect(@offsetOf(@This(), "m_entities") == 0xa28);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
