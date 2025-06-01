pub const CSnapshotCanaryA = extern struct {
    vtable: *anyopaque,
    CSnapshotCanary: abi.Inherit(server.CSnapshotCanary),


    test {
        try std.testing.expect(@sizeOf(@This()) == 0xa50);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");