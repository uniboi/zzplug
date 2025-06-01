pub const CDynamicPropLightweight = extern struct {
    vtable: *anyopaque,
    CDynamicProp: abi.Inherit(server.CDynamicProp),


    test {
        try std.testing.expect(@sizeOf(@This()) == 0x1028);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");