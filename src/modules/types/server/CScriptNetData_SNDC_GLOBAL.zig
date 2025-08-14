pub const CScriptNetData_SNDC_GLOBAL = extern struct {
    vtable: *anyopaque,
    CScriptNetData: abi.cpp.Inherit(server.CScriptNetData),

    m_bools: [16]bool, // +0x9e0 size: 0x10 (0x10 * 0x1) type 6
    m_ranges: [32]i16, // +0x9f0 size: 0x40 (0x20 * 0x2) type 7
    m_times: [16]valve.time, // +0xa30 size: 0x40 (0x10 * 0x4) type 16
    m_entities: [16]valve.EHANDLE, // +0xa70 size: 0x40 (0x10 * 0x4) type 13

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xab0);
        try std.testing.expect(@offsetOf(@This(), "m_bools") == 0x9e0);
        try std.testing.expect(@offsetOf(@This(), "m_ranges") == 0x9f0);
        try std.testing.expect(@offsetOf(@This(), "m_times") == 0xa30);
        try std.testing.expect(@offsetOf(@This(), "m_entities") == 0xa70);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
