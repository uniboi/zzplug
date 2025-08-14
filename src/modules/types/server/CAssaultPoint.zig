pub const CAssaultPoint = extern struct {
    vtable: *anyopaque,
    CBaseEntity: abi.cpp.Inherit(server.CBaseEntity),

    m_flAllowDiversionRadius: f32, // +0x9e0 size: 0x4 (0x1 * 0x4) type 1
    m_flArrivalTolerance: f32, // +0x9e4 size: 0x4 (0x1 * 0x4) type 1
    m_bFaceAssaultPointAngles: bool, // +0x9e8 size: 0x1 (0x1 * 0x1) type 6
    m_bFinalDestination: bool, // +0x9e9 size: 0x1 (0x1 * 0x1) type 6

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x9f0);
        try std.testing.expect(@offsetOf(@This(), "m_flAllowDiversionRadius") == 0x9e0);
        try std.testing.expect(@offsetOf(@This(), "m_flArrivalTolerance") == 0x9e4);
        try std.testing.expect(@offsetOf(@This(), "m_bFaceAssaultPointAngles") == 0x9e8);
        try std.testing.expect(@offsetOf(@This(), "m_bFinalDestination") == 0x9e9);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
