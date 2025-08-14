pub const CTriggerImpact = extern struct {
    vtable: *anyopaque,
    CTriggerMultiple: abi.cpp.Inherit(server.CTriggerMultiple),

    m_flMagnitude: f32, // +0xc88 size: 0x4 (0x1 * 0x4) type 1
    m_flNoise: f32, // +0xc8c size: 0x4 (0x1 * 0x4) type 1
    m_flViewkick: f32, // +0xc90 size: 0x4 (0x1 * 0x4) type 1
    gap_c94: [4]abi.undefined,
    m_pOutputForce: [40]abi.undefined, // +0xc98 size: 0x28 (0x1 * 0x28) type 11

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xcc0);
        try std.testing.expect(@offsetOf(@This(), "m_flMagnitude") == 0xc88);
        try std.testing.expect(@offsetOf(@This(), "m_flNoise") == 0xc8c);
        try std.testing.expect(@offsetOf(@This(), "m_flViewkick") == 0xc90);
        try std.testing.expect(@offsetOf(@This(), "m_pOutputForce") == 0xc98);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
