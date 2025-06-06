pub const CStatusEffectPlugin = extern struct {
    vtable: *anyopaque,
    CBaseEntity: abi.Inherit(server.CBaseEntity),

    m_statusEffectsTimedPluginNV: server.StatusEffectTimedData, // +0x9e0 size: 0x18 (0x1 * 0x18) type 10
    m_statusEffectsEndlessPluginNV: server.StatusEffectEndlessData, // +0x9f8 size: 0x10 (0x1 * 0x10) type 10

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xa08);
        try std.testing.expect(@offsetOf(@This(), "m_statusEffectsTimedPluginNV") == 0x9e0);
        try std.testing.expect(@offsetOf(@This(), "m_statusEffectsEndlessPluginNV") == 0x9f8);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
