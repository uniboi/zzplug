pub const SQVM = @import("squirrel/SQVM.zig").SQVM;
pub const C_SQVM = @import("squirrel/C_SQVM.zig").C_SQVM;
pub const SQFunctionRegistration = @import("squirrel/SQFunctionRegistration.zig").SQFunctionRegistration;

const ob = @import("squirrel/sqobject.zig");
pub const SQObject = ob.SQObject;
pub const SQObjectType = ob.SQObjectType;

const structs = @import("squirrel/structs.zig");
pub const SQStructInstance = structs.SQStructInstance;
pub const SQStructDef = structs.SQStructDef;

pub const SQSharedState = @import("squirrel/sharedstate.zig").SQSharedState;
pub const SQString = @import("squirrel/string.zig").SQString;
pub const SQTable = @import("squirrel/SQTable.zig").SQTable;

const closures = @import("squirrel/closure.zig");
pub const SQClosure = closures.SQClosure;
pub const SQFunctionProto = closures.SQFunctionProto;

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
};

pub const SQInteger = i32;
pub const SQUnsignedInteger = u32;
pub const SQFloat = f32;
pub const SQChar = u8;
pub const SQBool = SQUnsignedInteger;

pub const SQRefcounted = extern struct {
    vtable: *VTable,
    rc: SQInteger,
    weakref: ?*SQWeakRef,

    const VTable = extern struct {
        destructor: *const fn (self: *SQRefcounted) callconv(.c) void,
        release: *const fn (self: *SQRefcounted) callconv(.c) void,
    };

    pub fn addref(self: *SQRefcounted) void {
        self.rc += 1;
    }

    pub fn release(self: *SQRefcounted) void {
        self.rc -= 1;
        if (self.rc == 0) {
            self.vtable.release(self);
        }
    }

    test {
        try std.testing.expect(@sizeOf(@This()) == 0x18);
    }
};

pub const SQWeakRef = extern struct {
    vtable: *anyopaque,
    rc: SQInteger,
    weakref: ?*SQWeakRef,
    obj: SQObject,

    test {
        comptime abi.assertSize(@This(), 0x28);
        comptime abi.assertInheritance(@This(), SQRefcounted);
    }
};

pub const SQCollectable = extern struct {
    vtable: *anyopaque,
    rc: SQInteger,
    weakref: ?*SQWeakRef,
    _next: ?*SQCollectable,
    _prev: ?*SQCollectable,
    _shared_state: *SQSharedState,

    pub fn format(self: SQCollectable, comptime _: []const u8, _: std.fmt.FormatOptions, writer: anytype) !void {
        _ = self;
        _ = try writer.write("SQCollectable{ ... }");
    }

    test {
        comptime abi.assertSize(@This(), 0x30);
        comptime abi.assertInheritance(@This(), SQRefcounted);
    }
};

pub const SQDelegable = extern struct {
    vtable: *anyopaque,
    rc: SQInteger,
    weakref: ?*SQWeakRef,
    _next: ?*SQCollectable,
    _prev: ?*SQCollectable,
    _shared_state: *SQSharedState,
    _delegate: *SQTable,

    test {
        comptime abi.assertSize(@This(), 0x38);
        comptime abi.assertInheritance(@This(), SQCollectable);
    }
};

const std = @import("std");
const abi = @import("abi.zig");
