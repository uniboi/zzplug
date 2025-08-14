pub const CRopeKeyframe = extern struct {
    vtable: *anyopaque,
    CBaseEntity: abi.Inherit(server.CBaseEntity),

    m_RopeFlags: i32, // +0x9e0 size: 0x4 (0x1 * 0x4) type 5
    gap_9e4: [4]abi.undefined,
    m_iNextLinkName: [*:0]u8, // +0x9e8 size: 0x8 (0x1 * 0x8) type 2
    m_Slack: i32, // +0x9f0 size: 0x4 (0x1 * 0x4) type 5
    m_Width: f32, // +0x9f4 size: 0x4 (0x1 * 0x4) type 1
    m_TextureScale: f32, // +0x9f8 size: 0x4 (0x1 * 0x4) type 1
    m_nSegments: i32, // +0x9fc size: 0x4 (0x1 * 0x4) type 5
    m_bConstrainBetweenEndpoints: bool, // +0xa00 size: 0x1 (0x1 * 0x1) type 6
    gap_a01: [7]abi.undefined,
    m_strRopeMaterialModel: [*:0]u8, // +0xa08 size: 0x8 (0x1 * 0x8) type 2
    m_iRopeMaterialModelIndex: valve.ModelIndex, // +0xa10 size: 0x4 (0x1 * 0x4) type 26
    m_Subdiv: i32, // +0xa14 size: 0x4 (0x1 * 0x4) type 5
    m_nChangeCount: u8, // +0xa18 size: 0x1 (0x1 * 0x1) type 8
    gap_a19: [3]abi.undefined,
    m_RopeLength: i32, // +0xa1c size: 0x4 (0x1 * 0x4) type 5
    m_fLockedPoints: i32, // +0xa20 size: 0x4 (0x1 * 0x4) type 5
    m_bCreatedFromMapFile: bool, // +0xa24 size: 0x1 (0x1 * 0x1) type 6
    gap_a25: [3]abi.undefined,
    m_flScrollSpeed: f32, // +0xa28 size: 0x4 (0x1 * 0x4) type 1
    m_ziplineAutoDetachDistance: f32, // +0xa2c size: 0x4 (0x1 * 0x4) type 1
    m_ziplineSagEnable: bool, // +0xa30 size: 0x1 (0x1 * 0x1) type 6
    gap_a31: [3]abi.undefined,
    m_ziplineSagHeight: f32, // +0xa34 size: 0x4 (0x1 * 0x4) type 1
    m_ziplineCurveA: f32, // +0xa38 size: 0x4 (0x1 * 0x4) type 1
    m_ziplineCurveB: f32, // +0xa3c size: 0x4 (0x1 * 0x4) type 1
    m_ziplineCurveC: f32, // +0xa40 size: 0x4 (0x1 * 0x4) type 1
    m_ziplinePoints: [20]m.Vector3, // +0xa44 size: 0xf0 (0x14 * 0xc) type 3
    gap_b34: [4]abi.undefined,
    m_ziplineNext: *server.CBaseEntity, // +0xb38 size: 0x8 (0x1 * 0x8) type 12
    m_ziplinePrev: *server.CBaseEntity, // +0xb40 size: 0x8 (0x1 * 0x8) type 12
    m_ziplineSetupStart: m.Vector3, // +0xb48 size: 0xc (0x1 * 0xc) type 3
    m_ziplineSetupEnd: m.Vector3, // +0xb54 size: 0xc (0x1 * 0xc) type 3
    m_ziplineMoveSpeedScale: f32, // +0xb60 size: 0x4 (0x1 * 0x4) type 1
    m_bStartPointValid: bool, // +0xb64 size: 0x1 (0x1 * 0x1) type 6
    m_bEndPointValid: bool, // +0xb65 size: 0x1 (0x1 * 0x1) type 6
    gap_b66: [2]abi.undefined,
    m_prevEndPoints: [2]m.Vector3, // +0xb68 size: 0x18 (0x2 * 0xc) type 3
    m_hStartPoint: valve.EHANDLE, // +0xb80 size: 0x4 (0x1 * 0x4) type 13
    m_hEndPoint: valve.EHANDLE, // +0xb84 size: 0x4 (0x1 * 0x4) type 13
    m_hPrevPoint: valve.EHANDLE, // +0xb88 size: 0x4 (0x1 * 0x4) type 13
    m_iStartAttachment: i16, // +0xb8c size: 0x2 (0x1 * 0x2) type 7
    m_iEndAttachment: i16, // +0xb8e size: 0x2 (0x1 * 0x2) type 7
    m_wiggleFadeStartTime: f32, // +0xb90 size: 0x4 (0x1 * 0x4) type 1
    m_wiggleEndTime: f32, // +0xb94 size: 0x4 (0x1 * 0x4) type 1
    m_wiggleMaxLen: f32, // +0xb98 size: 0x4 (0x1 * 0x4) type 1
    m_wiggleMagnitude: f32, // +0xb9c size: 0x4 (0x1 * 0x4) type 1
    m_wiggleSpeed: f32, // +0xba0 size: 0x4 (0x1 * 0x4) type 1

    test {
        try std.testing.expect(@sizeOf(@This()) == 0xba8);
        try std.testing.expect(@offsetOf(@This(), "m_RopeFlags") == 0x9e0);
        try std.testing.expect(@offsetOf(@This(), "m_iNextLinkName") == 0x9e8);
        try std.testing.expect(@offsetOf(@This(), "m_Slack") == 0x9f0);
        try std.testing.expect(@offsetOf(@This(), "m_Width") == 0x9f4);
        try std.testing.expect(@offsetOf(@This(), "m_TextureScale") == 0x9f8);
        try std.testing.expect(@offsetOf(@This(), "m_nSegments") == 0x9fc);
        try std.testing.expect(@offsetOf(@This(), "m_bConstrainBetweenEndpoints") == 0xa00);
        try std.testing.expect(@offsetOf(@This(), "m_strRopeMaterialModel") == 0xa08);
        try std.testing.expect(@offsetOf(@This(), "m_iRopeMaterialModelIndex") == 0xa10);
        try std.testing.expect(@offsetOf(@This(), "m_Subdiv") == 0xa14);
        try std.testing.expect(@offsetOf(@This(), "m_nChangeCount") == 0xa18);
        try std.testing.expect(@offsetOf(@This(), "m_RopeLength") == 0xa1c);
        try std.testing.expect(@offsetOf(@This(), "m_fLockedPoints") == 0xa20);
        try std.testing.expect(@offsetOf(@This(), "m_bCreatedFromMapFile") == 0xa24);
        try std.testing.expect(@offsetOf(@This(), "m_flScrollSpeed") == 0xa28);
        try std.testing.expect(@offsetOf(@This(), "m_ziplineAutoDetachDistance") == 0xa2c);
        try std.testing.expect(@offsetOf(@This(), "m_ziplineSagEnable") == 0xa30);
        try std.testing.expect(@offsetOf(@This(), "m_ziplineSagHeight") == 0xa34);
        try std.testing.expect(@offsetOf(@This(), "m_ziplineCurveA") == 0xa38);
        try std.testing.expect(@offsetOf(@This(), "m_ziplineCurveB") == 0xa3c);
        try std.testing.expect(@offsetOf(@This(), "m_ziplineCurveC") == 0xa40);
        try std.testing.expect(@offsetOf(@This(), "m_ziplinePoints") == 0xa44);
        try std.testing.expect(@offsetOf(@This(), "m_ziplineNext") == 0xb38);
        try std.testing.expect(@offsetOf(@This(), "m_ziplinePrev") == 0xb40);
        try std.testing.expect(@offsetOf(@This(), "m_ziplineSetupStart") == 0xb48);
        try std.testing.expect(@offsetOf(@This(), "m_ziplineSetupEnd") == 0xb54);
        try std.testing.expect(@offsetOf(@This(), "m_ziplineMoveSpeedScale") == 0xb60);
        try std.testing.expect(@offsetOf(@This(), "m_bStartPointValid") == 0xb64);
        try std.testing.expect(@offsetOf(@This(), "m_bEndPointValid") == 0xb65);
        try std.testing.expect(@offsetOf(@This(), "m_prevEndPoints") == 0xb68);
        try std.testing.expect(@offsetOf(@This(), "m_hStartPoint") == 0xb80);
        try std.testing.expect(@offsetOf(@This(), "m_hEndPoint") == 0xb84);
        try std.testing.expect(@offsetOf(@This(), "m_hPrevPoint") == 0xb88);
        try std.testing.expect(@offsetOf(@This(), "m_iStartAttachment") == 0xb8c);
        try std.testing.expect(@offsetOf(@This(), "m_iEndAttachment") == 0xb8e);
        try std.testing.expect(@offsetOf(@This(), "m_wiggleFadeStartTime") == 0xb90);
        try std.testing.expect(@offsetOf(@This(), "m_wiggleEndTime") == 0xb94);
        try std.testing.expect(@offsetOf(@This(), "m_wiggleMaxLen") == 0xb98);
        try std.testing.expect(@offsetOf(@This(), "m_wiggleMagnitude") == 0xb9c);
        try std.testing.expect(@offsetOf(@This(), "m_wiggleSpeed") == 0xba0);
    }
};

const std = @import("std");
const valve = @import("../../../valve.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
