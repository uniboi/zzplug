pub const CEnvSoundscapeTriggerable = extern struct {
    vtable: *anyopaque,
    CEnvSoundscape: abi.Inherit(server.CEnvSoundscape),


    test {
        try std.testing.expect(@sizeOf(@This()) == 0xa68);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");