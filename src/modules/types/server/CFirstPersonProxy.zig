pub const CFirstPersonProxy = extern struct {
    vtable: *anyopaque,
    CBaseAnimating: abi.Inherit(server.CBaseAnimating),

    m_viewModelOwner: valve.EHANDLE, // +0xeb8 size: 0x4 (0x1 * 0x4) type 13
    m_lastAbsAngles: m.Vector3, // +0xebc size: 0xc (0x1 * 0xc) type 3
    m_modelChangeTime: valve.time, // +0xec8 size: 0x4 (0x1 * 0x4) type 16
    m_refAttachId: i32, // +0xecc size: 0x4 (0x1 * 0x4) type 5
    m_camAttachId: i32, // +0xed0 size: 0x4 (0x1 * 0x4) type 5
    m_camBaseAttachId: i32, // +0xed4 size: 0x4 (0x1 * 0x4) type 5
    m_traversalYawPoseParameter: i32, // +0xed8 size: 0x4 (0x1 * 0x4) type 5
    m_isPredictedProxy: bool, // +0xedc size: 0x1 (0x1 * 0x1) type 6

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xee0);
        try std.testing.expect(@offsetOf(@This(), "m_viewModelOwner") == 0xeb8);
        try std.testing.expect(@offsetOf(@This(), "m_lastAbsAngles") == 0xebc);
        try std.testing.expect(@offsetOf(@This(), "m_modelChangeTime") == 0xec8);
        try std.testing.expect(@offsetOf(@This(), "m_refAttachId") == 0xecc);
        try std.testing.expect(@offsetOf(@This(), "m_camAttachId") == 0xed0);
        try std.testing.expect(@offsetOf(@This(), "m_camBaseAttachId") == 0xed4);
        try std.testing.expect(@offsetOf(@This(), "m_traversalYawPoseParameter") == 0xed8);
        try std.testing.expect(@offsetOf(@This(), "m_isPredictedProxy") == 0xedc);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
