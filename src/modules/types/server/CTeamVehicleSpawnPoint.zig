pub const CTeamVehicleSpawnPoint = extern struct {
    vtable: *anyopaque,
    CTeamSpawnPoint: abi.Inherit(server.CTeamSpawnPoint),

    m_OnVehicleSpawn: [40]abi.undefined, // +0xff0 size: 0x28 (0x1 * 0x28) type 11

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x1018);
        try std.testing.expect(@offsetOf(@This(), "m_OnVehicleSpawn") == 0xff0);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
