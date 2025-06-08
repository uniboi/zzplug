pub const C_SQVM = @import("squirrel/C_SQVM.zig").C_SQVM;
pub const SQFunctionRegistration = @import("squirrel/SQFunctionRegistration.zig").SQFunctionRegistration;

pub const SQSharedState = @import("squirrel/sharedstate.zig").SQSharedState;

const o = @import("./squirrel/objects.zig");
pub const SQArray = o.SQArray;
pub const SQClosure = o.SQClosure;
pub const SQCollectable = o.SQCollectable;
pub const SQDelegable = o.SQDelegable;
pub const SQFunctionProto = o.SQFunctionProto;
pub const SQObject = o.SQObject;
pub const SQRefCounted = o.SQRefCounted;
pub const SQString = o.SQString;
pub const SQStructDef = o.SQStructDef;
pub const SQStructInstance = o.SQStructInstance;
pub const SQTable = o.SQTable;
pub const SQVM = o.SQVM;
pub const SQWeakRef = o.SQWeakRef;

pub const SQObjectType = SQObject.SQObjectType;
pub const SQObjectValue = SQObject.SQObjectValue;

pub const Vector = @import("squirrel/vec.zig").Vec;

pub const ctx = @import("squirrel/ctx.zig");

pub const SQResult = enum(i32) {
    /// An Error occured.
    ///
    /// If returned by a native closure an exception is thrown with optional error information on the stack.
    @"error" = -1,
    /// Success. If returned by a native closure, null is returned.
    null = 0,
    /// Success. If returned by a native closure the returned object is on the top of the stack immediately after function parameters.
    not_null = 1,

    pub fn isSuccess(res: SQResult) bool {
        return @intFromEnum(res) >= 0;
    }
};

pub const ScriptContext = enum(u32) {
    server = 0,
    client = 1,
    ui = 2,

    pub fn relay(context: ScriptContext) *const ctx.ContextRelay {
        return ctx.of(context);
    }
};

pub const SQInteger = i32;
pub const SQUnsignedInteger = u32;
pub const SQFloat = f32;
pub const SQChar = u8;
pub const SQBool = SQUnsignedInteger;

const std = @import("std");
const abi = @import("abi.zig");
