pub const CNPC_Bullseye = extern struct {
    vtable: *anyopaque,
    CAI_BaseNPC: abi.Inherit(server.CAI_BaseNPC),

    m_hPainPartner: valve.EHANDLE, // +0x20b0 size: 0x4 (0x1 * 0x4) type 13
    gap_20b4: [4]abi.undefined,
    m_OnTargeted: [40]abi.undefined, // +0x20b8 size: 0x28 (0x1 * 0x28) type 11
    m_OnReleased: [40]abi.undefined, // +0x20e0 size: 0x28 (0x1 * 0x28) type 11
    m_flMinDistValidEnemy: f32, // +0x2108 size: 0x4 (0x1 * 0x4) type 1
    m_bPerfectAccuracy: bool, // +0x210c size: 0x1 (0x1 * 0x1) type 6
    m_bAlwaysTransmitToClient: bool, // +0x210d size: 0x1 (0x1 * 0x1) type 6

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x2110);
        try std.testing.expect(@offsetOf(@This(), "m_hPainPartner") == 0x20b0);
        try std.testing.expect(@offsetOf(@This(), "m_OnTargeted") == 0x20b8);
        try std.testing.expect(@offsetOf(@This(), "m_OnReleased") == 0x20e0);
        try std.testing.expect(@offsetOf(@This(), "m_flMinDistValidEnemy") == 0x2108);
        try std.testing.expect(@offsetOf(@This(), "m_bPerfectAccuracy") == 0x210c);
        try std.testing.expect(@offsetOf(@This(), "m_bAlwaysTransmitToClient") == 0x210d);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
