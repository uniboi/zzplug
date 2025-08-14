pub const CGrappleHook = extern struct {
    vtable: *anyopaque,
    CBaseAnimating: abi.cpp.Inherit(server.CBaseAnimating),

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xeb8);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
