pub const CTraverseRef = extern struct {
    vtable: *anyopaque,
    CBaseEntity: abi.cpp.Inherit(server.CBaseEntity),

    traverseType: i32, // +0x9e0 size: 0x4 (0x1 * 0x4) type 5

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x9e8);
        try std.testing.expect(@offsetOf(@This(), "traverseType") == 0x9e0);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
