pub const C_SQVM = extern struct {
    vtable: *anyopaque,
    sqvm: *SQVM,
    unknown_10: usize,
    // unknown_object: sq.SQObject,
    // unknown_object: u128,
    unknown_object: [0x10]u8,
    unk: usize,
    gap_30: [12]u8,
    context: sq.ScriptContext,
    formatString: *anyopaque,
    gap_48: [24]u8,

    // ... and more

    const sq = @import("../squirrel.zig");
    const SQVM = sq.SQVM;

    pub fn bindNativeScriptClosure(c_sqvm: *C_SQVM, reg: *const sq.SQFunctionRegistration) void {
        sq.ctx.of(c_sqvm.context).c_sqvm_register_function(c_sqvm, reg, 1);
    }

    test {
        // @compileLog(@sizeOf([0x10]u8), @sizeOf(u128));
        // @compileLog("vtable", @offsetOf(C_SQVM, "vtable"));
        // @compileLog("sqvm", @offsetOf(C_SQVM, "sqvm"));
        // @compileLog("unknown_10", @offsetOf(C_SQVM, "unknown_10"));
        // @compileLog("unknown_object", @offsetOf(C_SQVM, "unknown_object"));
        // @compileLog("unk", @offsetOf(C_SQVM, "unk"));
        // @compileLog("gap_30", @offsetOf(C_SQVM, "gap_30"));
        // @compileLog("context", @offsetOf(C_SQVM, "context"));
        try std.testing.expect(@offsetOf(C_SQVM, "context") == 0x3c);
    }
};

const std = @import("std");
