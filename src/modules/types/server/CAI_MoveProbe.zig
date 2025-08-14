pub const CAI_MoveProbe = extern struct {
    vtable: *anyopaque,
    CAI_Component: abi.cpp.Inherit(server.CAI_Component),

    m_bIgnoreTransientEntities: bool, // +0x10 size: 0x1 (0x1 * 0x1) type 6
    gap_11: [3]abi.undefined,
    m_vecFloorPoint: m.Vector3, // +0x14 size: 0xc (0x1 * 0xc) type 3
    m_floorPointTime: valve.time, // +0x20 size: 0x4 (0x1 * 0x4) type 16
    m_floorPointStandable: bool, // +0x24 size: 0x1 (0x1 * 0x1) type 6
    gap_25: [3]abi.undefined,
    m_pTraceListData: *anyopaque, // +0x28 size: 0x8 (0x1 * 0x8) type 31
    m_hLastProbeBlockingEnt: valve.EHANDLE, // +0x30 size: 0x4 (0x1 * 0x4) type 13

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x38);
        try std.testing.expect(@offsetOf(@This(), "m_bIgnoreTransientEntities") == 0x10);
        try std.testing.expect(@offsetOf(@This(), "m_vecFloorPoint") == 0x14);
        try std.testing.expect(@offsetOf(@This(), "m_floorPointTime") == 0x20);
        try std.testing.expect(@offsetOf(@This(), "m_floorPointStandable") == 0x24);
        try std.testing.expect(@offsetOf(@This(), "m_pTraceListData") == 0x28);
        try std.testing.expect(@offsetOf(@This(), "m_hLastProbeBlockingEnt") == 0x30);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
