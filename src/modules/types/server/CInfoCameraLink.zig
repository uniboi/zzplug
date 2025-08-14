pub const CInfoCameraLink = extern struct {
    vtable: *anyopaque,
    CBaseEntity: abi.Inherit(server.CBaseEntity),

    m_hCamera: valve.EHANDLE, // +0x9e0 size: 0x4 (0x1 * 0x4) type 13
    m_hTargetEntity: valve.EHANDLE, // +0x9e4 size: 0x4 (0x1 * 0x4) type 13
    m_strPointCamera: [*:0]u8, // +0x9e8 size: 0x8 (0x1 * 0x8) type 2

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x9f0);
        try std.testing.expect(@offsetOf(@This(), "m_hCamera") == 0x9e0);
        try std.testing.expect(@offsetOf(@This(), "m_hTargetEntity") == 0x9e4);
        try std.testing.expect(@offsetOf(@This(), "m_strPointCamera") == 0x9e8);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
