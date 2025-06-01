pub const CPhysForce = extern struct {
    vtable: *anyopaque,
    CBaseEntity: abi.Inherit(server.CBaseEntity),

    m_pController: [8]abi.undefined, // +0x9e0 size: 0x8 (0x1 * 0x8) type 11
    m_nameAttach: [*:0]u8, // +0x9e8 size: 0x8 (0x1 * 0x8) type 2
    m_force: f32, // +0x9f0 size: 0x4 (0x1 * 0x4) type 1
    m_forceTime: f32, // +0x9f4 size: 0x4 (0x1 * 0x4) type 1
    m_attachedObject: valve.EHANDLE, // +0x9f8 size: 0x4 (0x1 * 0x4) type 13
    gap_9fc: [4]abi.undefined,
    m_integrator: server.CConstantForceController, // +0xa00 size: 0x40 (0x1 * 0x40) type 10

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xa40);
        try std.testing.expect(@offsetOf(@This(), "m_pController") == 0x9e0);
        try std.testing.expect(@offsetOf(@This(), "m_nameAttach") == 0x9e8);
        try std.testing.expect(@offsetOf(@This(), "m_force") == 0x9f0);
        try std.testing.expect(@offsetOf(@This(), "m_forceTime") == 0x9f4);
        try std.testing.expect(@offsetOf(@This(), "m_attachedObject") == 0x9f8);
        try std.testing.expect(@offsetOf(@This(), "m_integrator") == 0xa00);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
