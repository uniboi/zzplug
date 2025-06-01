pub const CAI_MoveMonitor = extern struct {
    m_markPos: m.Vector3, // +0x0 size: 0xc (0x1 * 0xc) type 15
    m_markToleranceSqr: f32, // +0xc size: 0x4 (0x1 * 0x4) type 1
    m_markSerialNumber: i32, // +0x10 size: 0x4 (0x1 * 0x4) type 5
    m_markSet: bool, // +0x14 size: 0x1 (0x1 * 0x1) type 6

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x18);
        try std.testing.expect(@offsetOf(@This(), "m_markPos") == 0x0);
        try std.testing.expect(@offsetOf(@This(), "m_markToleranceSqr") == 0xc);
        try std.testing.expect(@offsetOf(@This(), "m_markSerialNumber") == 0x10);
        try std.testing.expect(@offsetOf(@This(), "m_markSet") == 0x14);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");