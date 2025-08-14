pub const CEnvLight = extern struct {
    vtable: *anyopaque,
    CLight: abi.Inherit(server.CLight),

    hasCloudMask: bool, // +0x9f8 size: 0x1 (0x1 * 0x1) type 6

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xa00);
        try std.testing.expect(@offsetOf(@This(), "hasCloudMask") == 0x9f8);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
