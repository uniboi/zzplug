pub const CDropPoint = extern struct {
    vtable: *anyopaque,
    CBaseEntity: abi.Inherit(server.CBaseEntity),

    m_pOutputOnDropPodIncoming: [40]abi.undefined, // +0x9e0 size: 0x28 (0x1 * 0x28) type 11
    m_pOutputOnDropPodImpact: [40]abi.undefined, // +0xa08 size: 0x28 (0x1 * 0x28) type 11

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xa30);
        try std.testing.expect(@offsetOf(@This(), "m_pOutputOnDropPodIncoming") == 0x9e0);
        try std.testing.expect(@offsetOf(@This(), "m_pOutputOnDropPodImpact") == 0xa08);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
