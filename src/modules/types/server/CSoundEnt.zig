pub const CSoundEnt = extern struct {
    vtable: *anyopaque,
    CBaseEntity: abi.cpp.Inherit(server.CBaseEntity),

    m_iFreeSound: i32, // +0x9e0 size: 0x4 (0x1 * 0x4) type 5
    m_iActiveSound: i32, // +0x9e4 size: 0x4 (0x1 * 0x4) type 5
    m_SoundPool: [128]server.CSound, // +0x9e8 size: 0x28 (0x80 * 0x0) type 10

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x1de8);
        try std.testing.expect(@offsetOf(@This(), "m_iFreeSound") == 0x9e0);
        try std.testing.expect(@offsetOf(@This(), "m_iActiveSound") == 0x9e4);
        try std.testing.expect(@offsetOf(@This(), "m_SoundPool") == 0x9e8);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
