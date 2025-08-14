pub const CBoneFollowerManager = extern struct {
    m_iNumBones: i32, // +0x0 size: 0x4 (0x1 * 0x4) type 5
    gap_4: [4]abi.undefined,
    m_physBones: [32]abi.undefined, // +0x8 size: 0x20 (0x1 * 0x20) type 11

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x28);
        try std.testing.expect(@offsetOf(@This(), "m_iNumBones") == 0x0);
        try std.testing.expect(@offsetOf(@This(), "m_physBones") == 0x8);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
