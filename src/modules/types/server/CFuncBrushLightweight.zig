pub const CFuncBrushLightweight = extern struct {
    vtable: *anyopaque,
    CFuncBrush: abi.Inherit(server.CFuncBrush),

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x9f8);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
