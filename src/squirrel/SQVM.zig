pub const SQVM = extern struct {
    const CallInfo = extern struct {
        ip: [*]SQInstruction,
        _literals: *sq.SQObject,
        unknown_10: sq.SQObject, // this is actually the closure
        closure: sq.SQObject,
        _etraps: [4]u32,
        _root: u32,
        _vargs_size: u16,
        _vargs_base: u16,
        unknown_48: [16]u8,

        test {
            try std.testing.expect(@offsetOf(CallInfo, "unknown_10") == 0x10);
            try std.testing.expect(@offsetOf(CallInfo, "closure") == 0x20);
        }
    };

    // some fields are probably incorrect
    vtable: *anyopaque,
    uiRef: sq.SQUnsignedInteger,
    gap_8: [12]u8,
    toString: *anyopaque,
    _roottable_ptr: *anyopaque,
    unknown_28: *anyopaque,
    ci: *const CallInfo,
    _callstack: [*]CallInfo,
    _callstack_size: sq.SQUnsignedInteger,
    _stackbase: sq.SQUnsignedInteger,
    _stack_of_current_function: [*]sq.SQObject,
    shared_state: *sq.SQSharedState,
    unknown_58: *anyopaque,
    unknown_60: *anyopaque,
    _top: sq.SQUnsignedInteger,
    _stack: sq.Vector(sq.SQObject),
    _vargvstack: [*]sq.SQObject,
    unknown_84: usize,
    _roottable_object: sq.SQObject,
    _lasterror: sq.SQObject,
    _errorHandler: sq.SQObject,
    unknown_e4: usize,
    traps: sq.SQUnsignedInteger,
    gap_f0: [12]u8,
    _nnativecalls: sq.SQUnsignedInteger,
    _suspended: sq.SQUnsignedInteger,
    _suspended_root: sq.SQUnsignedInteger,
    unknown_108: u32,
    _suspended_target: sq.SQUnsignedInteger,
    trapAmount: sq.SQUnsignedInteger,
    _suspend_varargs: sq.SQUnsignedInteger,
    unknown_118: sq.SQUnsignedInteger,
    unknown_11c: sq.SQObject,

    pub fn push(sqvm: *SQVM, o: *sq.SQObject) void {
        const top_obj = &sqvm._stack._vals[sqvm._top];

        o.addref();
        top_obj.release();

        top_obj.* = o.*;
        sqvm._top += 1;
    }

    pub fn push_integer(sqvm: *SQVM, n: sq.SQInteger) void {
        const top_obj = &sqvm._stack._vals[sqvm._top];
        top_obj.release();

        top_obj.type = .integer;
        top_obj.val.integer.value = n;

        sqvm._top += 1;
    }

    pub fn push_float(sqvm: *SQVM, n: sq.SQFloat) void {
        const top_obj = &sqvm._stack._vals[sqvm._top];
        top_obj.release();

        top_obj.type = .float;
        top_obj.val.float.value = n;

        sqvm._top += 1;
    }

    pub fn push_bool(sqvm: *SQVM, b: sq.SQBool) void {
        const top_obj = &sqvm._stack._vals[sqvm._top];
        top_obj.release();

        top_obj.type = .bool;
        top_obj.val.bool.value = b;

        sqvm._top += 1;
    }

    pub fn push_vector(sqvm: *SQVM, v: Vector) void {
        const top_obj = &sqvm._stack._vals[sqvm._top];
        top_obj.release();

        top_obj.type = .vector;
        top_obj.val.vec = v;

        sqvm._top += 1;
    }

    pub fn getArgument(sqvm: *SQVM, arg: sq.SQUnsignedInteger) *sq.SQObject {
        return @ptrCast(sqvm._stack_of_current_function + arg);
    }

    pub fn throwerror(sqvm: *SQVM, msg: [*:0]const sq.SQChar) sq.SQResult {
        return sqvm.shared_state.c_sqvm.context.relay().sq_throwerror(sqvm, msg);
    }

    test {
        try std.testing.expect(@offsetOf(SQVM, "_top") == 0x68);
        try std.testing.expect(@offsetOf(SQVM, "_stack") == 0x70);
    }
};

const sq = @import("../squirrel.zig");
const SQInstruction = @import("./sqopcodes.zig").SQInstruction;
const std = @import("std");
const Vector = @import("../math/vector.zig").Vector3;
const abi = @import("../abi.zig");
