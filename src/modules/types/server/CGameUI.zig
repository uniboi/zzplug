pub const CGameUI = extern struct {
    vtable: *anyopaque,
    CBaseEntity: abi.Inherit(server.CBaseEntity),

    m_flFieldOfView: f32, // +0x9e0 size: 0x4 (0x1 * 0x4) type 1
    m_hSaveWeapon: valve.EHANDLE, // +0x9e4 size: 0x4 (0x1 * 0x4) type 13
    m_playerOn: [40]abi.undefined, // +0x9e8 size: 0x28 (0x1 * 0x28) type 11
    m_playerOff: [40]abi.undefined, // +0xa10 size: 0x28 (0x1 * 0x28) type 11
    m_pressedMoveLeft: [40]abi.undefined, // +0xa38 size: 0x28 (0x1 * 0x28) type 11
    m_pressedMoveRight: [40]abi.undefined, // +0xa60 size: 0x28 (0x1 * 0x28) type 11
    m_pressedForward: [40]abi.undefined, // +0xa88 size: 0x28 (0x1 * 0x28) type 11
    m_pressedBack: [40]abi.undefined, // +0xab0 size: 0x28 (0x1 * 0x28) type 11
    m_pressedAttack: [40]abi.undefined, // +0xad8 size: 0x28 (0x1 * 0x28) type 11
    m_pressedJump: [40]abi.undefined, // +0xb00 size: 0x28 (0x1 * 0x28) type 11
    m_pressedUse: [40]abi.undefined, // +0xb28 size: 0x28 (0x1 * 0x28) type 11
    m_pressedReload: [40]abi.undefined, // +0xb50 size: 0x28 (0x1 * 0x28) type 11
    m_pressedUseAndReload: [40]abi.undefined, // +0xb78 size: 0x28 (0x1 * 0x28) type 11
    m_pressedSpeed: [40]abi.undefined, // +0xba0 size: 0x28 (0x1 * 0x28) type 11
    m_pressedZoom: [40]abi.undefined, // +0xbc8 size: 0x28 (0x1 * 0x28) type 11
    m_pressedOffhand0: [40]abi.undefined, // +0xbf0 size: 0x28 (0x1 * 0x28) type 11
    m_pressedOffhand1: [40]abi.undefined, // +0xc18 size: 0x28 (0x1 * 0x28) type 11
    m_pressedOffhand2: [40]abi.undefined, // +0xc40 size: 0x28 (0x1 * 0x28) type 11
    m_pressedOffhand3: [40]abi.undefined, // +0xc68 size: 0x28 (0x1 * 0x28) type 11
    m_pressedOffhand4: [40]abi.undefined, // +0xc90 size: 0x28 (0x1 * 0x28) type 11
    m_pressedDuck: [40]abi.undefined, // +0xcb8 size: 0x28 (0x1 * 0x28) type 11
    m_pressedWeaponCycle: [40]abi.undefined, // +0xce0 size: 0x28 (0x1 * 0x28) type 11
    m_pressedPauseMenu: [40]abi.undefined, // +0xd08 size: 0x28 (0x1 * 0x28) type 11
    m_unpressedMoveLeft: [40]abi.undefined, // +0xd30 size: 0x28 (0x1 * 0x28) type 11
    m_unpressedMoveRight: [40]abi.undefined, // +0xd58 size: 0x28 (0x1 * 0x28) type 11
    m_unpressedForward: [40]abi.undefined, // +0xd80 size: 0x28 (0x1 * 0x28) type 11
    m_unpressedBack: [40]abi.undefined, // +0xda8 size: 0x28 (0x1 * 0x28) type 11
    m_unpressedAttack: [40]abi.undefined, // +0xdd0 size: 0x28 (0x1 * 0x28) type 11
    m_unpressedJump: [40]abi.undefined, // +0xdf8 size: 0x28 (0x1 * 0x28) type 11
    m_unpressedUse: [40]abi.undefined, // +0xe20 size: 0x28 (0x1 * 0x28) type 11
    m_unpressedReload: [40]abi.undefined, // +0xe48 size: 0x28 (0x1 * 0x28) type 11
    m_unpressedUseAndReload: [40]abi.undefined, // +0xe70 size: 0x28 (0x1 * 0x28) type 11
    m_unpressedSpeed: [40]abi.undefined, // +0xe98 size: 0x28 (0x1 * 0x28) type 11
    m_unpressedZoom: [40]abi.undefined, // +0xec0 size: 0x28 (0x1 * 0x28) type 11
    m_unpressedOffhand0: [40]abi.undefined, // +0xee8 size: 0x28 (0x1 * 0x28) type 11
    m_unpressedOffhand1: [40]abi.undefined, // +0xf10 size: 0x28 (0x1 * 0x28) type 11
    m_unpressedOffhand2: [40]abi.undefined, // +0xf38 size: 0x28 (0x1 * 0x28) type 11
    m_unpressedOffhand3: [40]abi.undefined, // +0xf60 size: 0x28 (0x1 * 0x28) type 11
    m_unpressedOffhand4: [40]abi.undefined, // +0xf88 size: 0x28 (0x1 * 0x28) type 11
    m_unpressedDuck: [40]abi.undefined, // +0xfb0 size: 0x28 (0x1 * 0x28) type 11
    m_unpressedWeaponCycle: [40]abi.undefined, // +0xfd8 size: 0x28 (0x1 * 0x28) type 11
    m_unpressedPauseMenu: [40]abi.undefined, // +0x1000 size: 0x28 (0x1 * 0x28) type 11
    m_xaxis: [40]abi.undefined, // +0x1028 size: 0x28 (0x1 * 0x28) type 11
    m_yaxis: [40]abi.undefined, // +0x1050 size: 0x28 (0x1 * 0x28) type 11
    m_attackaxis: [40]abi.undefined, // +0x1078 size: 0x28 (0x1 * 0x28) type 11
    m_bForceUpdate: bool, // +0x10a0 size: 0x1 (0x1 * 0x1) type 6
    gap_10a1: [3]abi.undefined,
    m_nLastButtonState: i32, // +0x10a4 size: 0x4 (0x1 * 0x4) type 5
    m_player: valve.EHANDLE, // +0x10a8 size: 0x4 (0x1 * 0x4) type 13

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x10b0);
        try std.testing.expect(@offsetOf(@This(), "m_flFieldOfView") == 0x9e0);
        try std.testing.expect(@offsetOf(@This(), "m_hSaveWeapon") == 0x9e4);
        try std.testing.expect(@offsetOf(@This(), "m_playerOn") == 0x9e8);
        try std.testing.expect(@offsetOf(@This(), "m_playerOff") == 0xa10);
        try std.testing.expect(@offsetOf(@This(), "m_pressedMoveLeft") == 0xa38);
        try std.testing.expect(@offsetOf(@This(), "m_pressedMoveRight") == 0xa60);
        try std.testing.expect(@offsetOf(@This(), "m_pressedForward") == 0xa88);
        try std.testing.expect(@offsetOf(@This(), "m_pressedBack") == 0xab0);
        try std.testing.expect(@offsetOf(@This(), "m_pressedAttack") == 0xad8);
        try std.testing.expect(@offsetOf(@This(), "m_pressedJump") == 0xb00);
        try std.testing.expect(@offsetOf(@This(), "m_pressedUse") == 0xb28);
        try std.testing.expect(@offsetOf(@This(), "m_pressedReload") == 0xb50);
        try std.testing.expect(@offsetOf(@This(), "m_pressedUseAndReload") == 0xb78);
        try std.testing.expect(@offsetOf(@This(), "m_pressedSpeed") == 0xba0);
        try std.testing.expect(@offsetOf(@This(), "m_pressedZoom") == 0xbc8);
        try std.testing.expect(@offsetOf(@This(), "m_pressedOffhand0") == 0xbf0);
        try std.testing.expect(@offsetOf(@This(), "m_pressedOffhand1") == 0xc18);
        try std.testing.expect(@offsetOf(@This(), "m_pressedOffhand2") == 0xc40);
        try std.testing.expect(@offsetOf(@This(), "m_pressedOffhand3") == 0xc68);
        try std.testing.expect(@offsetOf(@This(), "m_pressedOffhand4") == 0xc90);
        try std.testing.expect(@offsetOf(@This(), "m_pressedDuck") == 0xcb8);
        try std.testing.expect(@offsetOf(@This(), "m_pressedWeaponCycle") == 0xce0);
        try std.testing.expect(@offsetOf(@This(), "m_pressedPauseMenu") == 0xd08);
        try std.testing.expect(@offsetOf(@This(), "m_unpressedMoveLeft") == 0xd30);
        try std.testing.expect(@offsetOf(@This(), "m_unpressedMoveRight") == 0xd58);
        try std.testing.expect(@offsetOf(@This(), "m_unpressedForward") == 0xd80);
        try std.testing.expect(@offsetOf(@This(), "m_unpressedBack") == 0xda8);
        try std.testing.expect(@offsetOf(@This(), "m_unpressedAttack") == 0xdd0);
        try std.testing.expect(@offsetOf(@This(), "m_unpressedJump") == 0xdf8);
        try std.testing.expect(@offsetOf(@This(), "m_unpressedUse") == 0xe20);
        try std.testing.expect(@offsetOf(@This(), "m_unpressedReload") == 0xe48);
        try std.testing.expect(@offsetOf(@This(), "m_unpressedUseAndReload") == 0xe70);
        try std.testing.expect(@offsetOf(@This(), "m_unpressedSpeed") == 0xe98);
        try std.testing.expect(@offsetOf(@This(), "m_unpressedZoom") == 0xec0);
        try std.testing.expect(@offsetOf(@This(), "m_unpressedOffhand0") == 0xee8);
        try std.testing.expect(@offsetOf(@This(), "m_unpressedOffhand1") == 0xf10);
        try std.testing.expect(@offsetOf(@This(), "m_unpressedOffhand2") == 0xf38);
        try std.testing.expect(@offsetOf(@This(), "m_unpressedOffhand3") == 0xf60);
        try std.testing.expect(@offsetOf(@This(), "m_unpressedOffhand4") == 0xf88);
        try std.testing.expect(@offsetOf(@This(), "m_unpressedDuck") == 0xfb0);
        try std.testing.expect(@offsetOf(@This(), "m_unpressedWeaponCycle") == 0xfd8);
        try std.testing.expect(@offsetOf(@This(), "m_unpressedPauseMenu") == 0x1000);
        try std.testing.expect(@offsetOf(@This(), "m_xaxis") == 0x1028);
        try std.testing.expect(@offsetOf(@This(), "m_yaxis") == 0x1050);
        try std.testing.expect(@offsetOf(@This(), "m_attackaxis") == 0x1078);
        try std.testing.expect(@offsetOf(@This(), "m_bForceUpdate") == 0x10a0);
        try std.testing.expect(@offsetOf(@This(), "m_nLastButtonState") == 0x10a4);
        try std.testing.expect(@offsetOf(@This(), "m_player") == 0x10a8);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
