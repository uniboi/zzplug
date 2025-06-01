pub const PredictedAnimEventData = extern struct {
    vtable: *anyopaque,
    m_predictedAnimEventTimes: [8]valve.time, // +0x8 size: 0x20 (0x8 * 0x4) type 16
    m_predictedAnimEventIndices: [8]i32, // +0x28 size: 0x20 (0x8 * 0x4) type 5
    m_predictedAnimEventCount: i32, // +0x48 size: 0x4 (0x1 * 0x4) type 5
    m_predictedAnimEventTarget: valve.EHANDLE, // +0x4c size: 0x4 (0x1 * 0x4) type 13
    m_predictedAnimEventSequence: i32, // +0x50 size: 0x4 (0x1 * 0x4) type 5
    m_predictedAnimEventModel: i32, // +0x54 size: 0x4 (0x1 * 0x4) type 5
    m_predictedAnimEventsReadyToFireTime: valve.time, // +0x58 size: 0x4 (0x1 * 0x4) type 16

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x60);
        try std.testing.expect(@offsetOf(@This(), "m_predictedAnimEventTimes") == 0x8);
        try std.testing.expect(@offsetOf(@This(), "m_predictedAnimEventIndices") == 0x28);
        try std.testing.expect(@offsetOf(@This(), "m_predictedAnimEventCount") == 0x48);
        try std.testing.expect(@offsetOf(@This(), "m_predictedAnimEventTarget") == 0x4c);
        try std.testing.expect(@offsetOf(@This(), "m_predictedAnimEventSequence") == 0x50);
        try std.testing.expect(@offsetOf(@This(), "m_predictedAnimEventModel") == 0x54);
        try std.testing.expect(@offsetOf(@This(), "m_predictedAnimEventsReadyToFireTime") == 0x58);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");