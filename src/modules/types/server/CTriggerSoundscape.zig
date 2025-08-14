pub const CTriggerSoundscape = extern struct {
    vtable: *anyopaque,
    CBaseTrigger: abi.Inherit(server.CBaseTrigger),

    m_hSoundscape: valve.EHANDLE, // +0xc60 size: 0x4 (0x1 * 0x4) type 13
    gap_c64: [4]abi.undefined,
    m_SoundscapeName_DEPRECATED: [*:0]u8, // +0xc68 size: 0x8 (0x1 * 0x8) type 2
    m_soundscapeName: [128]u8, // +0xc70 size: 0x80 (0x80 * 0x1) type 8
    m_soundscapeIndex: i32, // +0xcf0 size: 0x4 (0x1 * 0x4) type 5
    gap_cf4: [4]abi.undefined,
    m_spectators: [32]abi.undefined, // +0xcf8 size: 0x20 (0x1 * 0x20) type 11

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xd18);
        try std.testing.expect(@offsetOf(@This(), "m_hSoundscape") == 0xc60);
        try std.testing.expect(@offsetOf(@This(), "m_SoundscapeName_DEPRECATED") == 0xc68);
        try std.testing.expect(@offsetOf(@This(), "m_soundscapeName") == 0xc70);
        try std.testing.expect(@offsetOf(@This(), "m_soundscapeIndex") == 0xcf0);
        try std.testing.expect(@offsetOf(@This(), "m_spectators") == 0xcf8);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
