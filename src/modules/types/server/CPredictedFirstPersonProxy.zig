pub const CPredictedFirstPersonProxy = extern struct {
    vtable: *anyopaque,
    CFirstPersonProxy: abi.cpp.Inherit(server.CFirstPersonProxy),

    m_viewOriginCorrection: m.Vector3, // +0xee0 size: 0xc (0x1 * 0xc) type 3
    m_viewAnglesCorrection: m.Vector3, // +0xeec size: 0xc (0x1 * 0xc) type 3

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xef8);
        try std.testing.expect(@offsetOf(@This(), "m_viewOriginCorrection") == 0xee0);
        try std.testing.expect(@offsetOf(@This(), "m_viewAnglesCorrection") == 0xeec);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
