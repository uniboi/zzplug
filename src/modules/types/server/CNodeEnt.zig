pub const CNodeEnt = extern struct {
    vtable: *anyopaque,
    CBaseEntity: abi.Inherit(server.CBaseEntity),

    m_NodeData: server.HintNodeData, // +0x9e0 size: 0x50 (0x1 * 0x50) type 10

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xa30);
        try std.testing.expect(@offsetOf(@This(), "m_NodeData") == 0x9e0);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
