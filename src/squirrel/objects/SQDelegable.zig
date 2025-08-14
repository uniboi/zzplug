pub const SQDelegable = extern struct {
    vtable: *VTable,
    SQCollectable: abi.cpp.Inherit(sq.SQCollectable),
    _delegate: *sq.SQTable,

    pub const VTable = extern struct {
        destructor: *const fn (*SQDelegable, deallocate: bool) callconv(.c) abi.IllegalPointer,
        release: *const fn (*SQDelegable) callconv(.c) void,
        mark: *const fn (*SQDelegable, **sq.SQCollectable) callconv(.c) void,
        finalize: *const fn (*SQDelegable) callconv(.c) void,
        print: *const fn (*SQDelegable, buf: [*]u8, buf_size: u32, unk_1: i64, unk_2: i32) callconv(.c) i64,
        getMetaMethod: *const fn (*SQDelegable, sqvm: *sq.SQVM, metamethod: SQDelegable.MetaMethod, out: *sq.SQObject) callconv(.c) bool,
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

const sq = @import("../../squirrel.zig");
const abi = @import("../../abi.zig");
const std = @import("std");
