pub const CAmbientGeneric = extern struct {
    vtable: *anyopaque,
    CBaseEntity: abi.cpp.Inherit(server.CBaseEntity),

    m_soundName: valve.SoundName, // +0x9e0 size: 0x8 (0x1 * 0x8) type 19

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x9e8);
        try std.testing.expect(@offsetOf(@This(), "m_soundName") == 0x9e0);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
