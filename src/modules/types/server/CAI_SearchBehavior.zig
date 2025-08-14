pub const CAI_SearchBehavior = extern struct {
    vtable: *anyopaque,
    CAI_BehaviorBase: abi.cpp.Inherit(server.CAI_BehaviorBase),

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x50);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
