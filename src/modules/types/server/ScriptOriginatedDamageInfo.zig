pub const ScriptOriginatedDamageInfo = extern struct {
    m_scriptDamageType: i32, // +0x0 size: 0x4 (0x1 * 0x4) type 5
    m_damageSourceIdentifier: i32, // +0x4 size: 0x4 (0x1 * 0x4) type 5
    m_scriptAttackerClass: i32, // +0x8 size: 0x4 (0x1 * 0x4) type 5

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xc);
        try std.testing.expect(@offsetOf(@This(), "m_scriptDamageType") == 0x0);
        try std.testing.expect(@offsetOf(@This(), "m_damageSourceIdentifier") == 0x4);
        try std.testing.expect(@offsetOf(@This(), "m_scriptAttackerClass") == 0x8);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
