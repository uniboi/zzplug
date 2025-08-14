pub const CEnvSoundscapeProxy = extern struct {
    vtable: *anyopaque,
    CEnvSoundscape: abi.cpp.Inherit(server.CEnvSoundscape),

    m_MainSoundscapeName: [*:0]u8, // +0xa68 size: 0x8 (0x1 * 0x8) type 2

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xa70);
        try std.testing.expect(@offsetOf(@This(), "m_MainSoundscapeName") == 0xa68);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
