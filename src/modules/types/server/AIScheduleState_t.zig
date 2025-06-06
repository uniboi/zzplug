pub const AIScheduleState_t = extern struct {
    iCurTask: i32, // +0x0 size: 0x4 (0x1 * 0x4) type 5
    fTaskStatus: i32, // +0x4 size: 0x4 (0x1 * 0x4) type 5
    timeStarted: valve.time, // +0x8 size: 0x4 (0x1 * 0x4) type 16
    timeCurTaskStarted: valve.time, // +0xc size: 0x4 (0x1 * 0x4) type 16
    failedSchedID: i32, // +0x10 size: 0x4 (0x1 * 0x4) type 5
    gap_14: [4]abi.undefined,
    taskFailureCode: i64, // +0x18 size: 0x8 (0x1 * 0x8) type 29
    iTaskInterrupt: i32, // +0x20 size: 0x4 (0x1 * 0x4) type 5
    bTaskRanAutomovement: bool, // +0x24 size: 0x1 (0x1 * 0x1) type 6
    bTaskRequestRunTillWait: bool, // +0x25 size: 0x1 (0x1 * 0x1) type 6
    doYawUpdatesForThisDecisionInterval: bool, // +0x26 size: 0x1 (0x1 * 0x1) type 6
    doYawUpdatesDuringThisTask: bool, // +0x27 size: 0x1 (0x1 * 0x1) type 6
    updateIdealYawToEnemyDuringThisTask: bool, // +0x28 size: 0x1 (0x1 * 0x1) type 6
    bScheduleWasInterrupted: bool, // +0x29 size: 0x1 (0x1 * 0x1) type 6
    bStopRunTasks: bool, // +0x2a size: 0x1 (0x1 * 0x1) type 6

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x31);
        try std.testing.expect(@offsetOf(@This(), "iCurTask") == 0x0);
        try std.testing.expect(@offsetOf(@This(), "fTaskStatus") == 0x4);
        try std.testing.expect(@offsetOf(@This(), "timeStarted") == 0x8);
        try std.testing.expect(@offsetOf(@This(), "timeCurTaskStarted") == 0xc);
        try std.testing.expect(@offsetOf(@This(), "failedSchedID") == 0x10);
        try std.testing.expect(@offsetOf(@This(), "taskFailureCode") == 0x18);
        try std.testing.expect(@offsetOf(@This(), "iTaskInterrupt") == 0x20);
        try std.testing.expect(@offsetOf(@This(), "bTaskRanAutomovement") == 0x24);
        try std.testing.expect(@offsetOf(@This(), "bTaskRequestRunTillWait") == 0x25);
        try std.testing.expect(@offsetOf(@This(), "doYawUpdatesForThisDecisionInterval") == 0x26);
        try std.testing.expect(@offsetOf(@This(), "doYawUpdatesDuringThisTask") == 0x27);
        try std.testing.expect(@offsetOf(@This(), "updateIdealYawToEnemyDuringThisTask") == 0x28);
        try std.testing.expect(@offsetOf(@This(), "bScheduleWasInterrupted") == 0x29);
        try std.testing.expect(@offsetOf(@This(), "bStopRunTasks") == 0x2a);
    }
};

const std = @import("std");
const valve = @import("../../../vsource.zig");
const abi = @import("../../../abi.zig");
const m = @import("../../../math/vector.zig");
const server = @import("../server.zig");
