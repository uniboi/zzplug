pub const CBaseHelicopterBehaviorHost = extern struct {
    vtable: *anyopaque,
    CAI_TrackPather: abi.cpp.Inherit(server.CAI_TrackPather),

    m_bCalledBehaviorSelectSchedule: bool, // +0x2190 size: 0x1 (0x1 * 0x1) type 6

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x2198);
        try std.testing.expect(@offsetOf(@This(), "m_bCalledBehaviorSelectSchedule") == 0x2190);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
