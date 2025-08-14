pub const CDynamicProp = extern struct {
    vtable: *anyopaque,
    CBreakableProp: abi.Inherit(server.CBreakableProp),

    IPositionWatcher: *anyopaque, // +0xfc0 size: 0x8 (0x0 * 0x8) type 0
    m_OnPlayerUse: [40]abi.undefined, // +0xfc8 size: 0x28 (0x1 * 0x28) type 11
    m_bDisableBoneFollowers: bool, // +0xff0 size: 0x1 (0x1 * 0x1) type 6
    m_bClientSide: bool, // +0xff1 size: 0x1 (0x1 * 0x1) type 6
    m_bUseHitboxesForRenderBox: bool, // +0xff2 size: 0x1 (0x1 * 0x1) type 6
    gap_ff3: [5]abi.undefined,
    m_BoneFollowerManager: server.CBoneFollowerManager, // +0xff8 size: 0x28 (0x1 * 0x28) type 10
    m_needBoneFollowerUpdate: i32, // +0x1020 size: 0x4 (0x1 * 0x4) type 5

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x1028);
        try std.testing.expect(@offsetOf(@This(), "IPositionWatcher") == 0xfc0);
        try std.testing.expect(@offsetOf(@This(), "m_OnPlayerUse") == 0xfc8);
        try std.testing.expect(@offsetOf(@This(), "m_bDisableBoneFollowers") == 0xff0);
        try std.testing.expect(@offsetOf(@This(), "m_bClientSide") == 0xff1);
        try std.testing.expect(@offsetOf(@This(), "m_bUseHitboxesForRenderBox") == 0xff2);
        try std.testing.expect(@offsetOf(@This(), "m_BoneFollowerManager") == 0xff8);
        try std.testing.expect(@offsetOf(@This(), "m_needBoneFollowerUpdate") == 0x1020);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
