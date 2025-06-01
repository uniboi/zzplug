pub const RecentlyUsedCover = extern struct {
    hint: *server.CBaseEntity, // +0x0 size: 0x8 (0x1 * 0x8) type 12
    nextUseTime: valve.time, // +0x8 size: 0x4 (0x1 * 0x4) type 16

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x10);
        try std.testing.expect(@offsetOf(@This(), "hint") == 0x0);
        try std.testing.expect(@offsetOf(@This(), "nextUseTime") == 0x8);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");