pub const CAI_TestHull = extern struct {
    vtable: *anyopaque,
    CAI_BaseNPC: abi.Inherit(server.CAI_BaseNPC),

    bInUse: bool, // +0x20b0 size: 0x1 (0x1 * 0x1) type 6

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x20b8);
        try std.testing.expect(@offsetOf(@This(), "bInUse") == 0x20b0);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
