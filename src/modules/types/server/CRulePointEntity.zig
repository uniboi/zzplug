pub const CRulePointEntity = extern struct {
    vtable: *anyopaque,
    CRuleEntity: abi.Inherit(server.CRuleEntity),

    m_Score: i32, // +0x9e8 size: 0x4 (0x1 * 0x4) type 5

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x9f0);
        try std.testing.expect(@offsetOf(@This(), "m_Score") == 0x9e8);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");