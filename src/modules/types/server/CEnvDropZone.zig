pub const CEnvDropZone = extern struct {
    vtable: *anyopaque,
    CBaseEntity: abi.cpp.Inherit(server.CBaseEntity),

    m_Radius: f32, // +0x9e0 size: 0x4 (0x1 * 0x4) type 1
    m_Width: f32, // +0x9e4 size: 0x4 (0x1 * 0x4) type 1
    m_iszDropPoints: [*:0]u8, // +0x9e8 size: 0x8 (0x1 * 0x8) type 2
    m_pOutputOnDropPodIncoming: [40]abi.undefined, // +0x9f0 size: 0x28 (0x1 * 0x28) type 11
    m_pOutputOnDropPodImpact: [40]abi.undefined, // +0xa18 size: 0x28 (0x1 * 0x28) type 11
    m_pOutputOnDropPointIncoming: [40]abi.undefined, // +0xa40 size: 0x28 (0x1 * 0x28) type 11
    m_pOutputOnDropPointImpact: [40]abi.undefined, // +0xa68 size: 0x28 (0x1 * 0x28) type 11

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xa90);
        try std.testing.expect(@offsetOf(@This(), "m_Radius") == 0x9e0);
        try std.testing.expect(@offsetOf(@This(), "m_Width") == 0x9e4);
        try std.testing.expect(@offsetOf(@This(), "m_iszDropPoints") == 0x9e8);
        try std.testing.expect(@offsetOf(@This(), "m_pOutputOnDropPodIncoming") == 0x9f0);
        try std.testing.expect(@offsetOf(@This(), "m_pOutputOnDropPodImpact") == 0xa18);
        try std.testing.expect(@offsetOf(@This(), "m_pOutputOnDropPointIncoming") == 0xa40);
        try std.testing.expect(@offsetOf(@This(), "m_pOutputOnDropPointImpact") == 0xa68);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
