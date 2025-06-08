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
pub const SQString = @import("squirrel/SQString.zig").SQString;
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

    pub fn relay(context: ScriptContext) *const ctx.ContextRelay {
        return ctx.of(context);
    }
};

pub const SQInteger = i32;
pub const SQUnsignedInteger = u32;
pub const SQFloat = f32;
pub const SQChar = u8;
pub const SQBool = SQUnsignedInteger;

pub const SQRefCounted = extern struct {
    vtable: *VTable,
    rc: SQInteger,
    weakref: ?*SQWeakRef,

    const VTable = extern struct {
        destructor: *const fn (self: *SQRefCounted, deallocate: bool) callconv(.c) abi.IllegalPointer,
        release: *const fn (self: *SQRefCounted) callconv(.c) void,
    };

    pub fn addref(self: *SQRefCounted) void {
        self.rc += 1;
    }

    pub fn release(self: *SQRefCounted) void {
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
    vtable: *VTable,
    SQRefCounted: abi.Inherit(SQRefCounted),
    obj: SQObject,

    pub const VTable = extern struct {
        destructor: *const fn (*SQWeakRef, deallocate: bool) callconv(.c) abi.IllegalPointer,
        release: *const fn (*SQWeakRef) callconv(.c) void,
    };

    test {
        abi.assertSize(@This(), 0x28);
    }
};

pub const SQCollectable = extern struct {
    vtable: *VTable,
    SQRefCounted: abi.Inherit(SQRefCounted),
    _next: ?*SQCollectable,
    _prev: ?*SQCollectable,
    _shared_state: *SQSharedState,

    pub fn format(self: SQCollectable, comptime _: []const u8, _: std.fmt.FormatOptions, writer: anytype) !void {
        _ = try writer.print("SQCollectable{ next: {?*}, prev: {?*}, SQRefCounted: {}", .{ self._next, self._prev, self.SQRefCounted });
    }

    pub fn finalize(self: *SQCollectable) void {
        self.vtable.finalize(self);
    }

    pub fn mark(self: *SQCollectable, chain: **SQCollectable) void {
        self.vtable.mark(self, chain);
    }

    pub fn isMarked(self: *SQCollectable) bool {
        return @as(SQUnsignedInteger, @bitCast(self.SQRefCounted.rc)) & mark_flag != 0;
    }

    const mark_flag = 0x80000000;

    pub const VTable = extern struct {
        destructor: *const fn (*SQCollectable, deallocate: bool) callconv(.c) abi.IllegalPointer,
        release: *const fn (*SQCollectable) callconv(.c) void,
        mark: *const fn (*SQCollectable, **SQCollectable) callconv(.c) void,
        finalize: *const fn (*SQCollectable) callconv(.c) void,
        print: *const fn (*SQCollectable, buf: [*]u8, buf_size: u32, unk_1: i64, unk_2: i32) callconv(.c) i64,
    };

    test {
        abi.assertSize(@This(), 0x30);
    }
};

pub const SQDelegable = extern struct {
    vtable: *VTable,
    SQCollectable: abi.Inherit(SQCollectable),
    _delegate: *SQTable,

    pub const VTable = extern struct {
        destructor: *const fn (*SQDelegable, deallocate: bool) callconv(.c) abi.IllegalPointer,
        release: *const fn (*SQDelegable) callconv(.c) void,
        mark: *const fn (*SQDelegable, **SQCollectable) callconv(.c) void,
        finalize: *const fn (*SQDelegable) callconv(.c) void,
        print: *const fn (*SQDelegable, buf: [*]u8, buf_size: u32, unk_1: i64, unk_2: i32) callconv(.c) i64,
        getMetaMethod: *const fn (*SQDelegable, sqvm: *SQVM, metamethod: SQDelegable.MetaMethod, out: *SQObject) callconv(.c) bool,
    };

    test {
        abi.assertSize(@This(), 0x38);
    }

    // probably not correct
    // doesn't really matter either because metamethods are broken anyways
    pub const MetaMethod = enum(u64) {
        add = 0,
        sub,
        mul,
        div,
        unm,
        modulo,
        set,
        get,
        typeof,
        nextit,
        cmp,
        call,
        cloned,
        newslot,
        delslot,
        tostring,
        newmember,
        inherited,
        last,
    };
};

const std = @import("std");
const abi = @import("abi.zig");
