pub const SQWeakRef = extern struct {
    vtable: *VTable,
    SQRefCounted: abi.Inherit(sq.SQRefCounted),
    obj: sq.SQObject,

    pub const VTable = extern struct {
        destructor: *const fn (*SQWeakRef, deallocate: bool) callconv(.c) abi.IllegalPointer,
        release: *const fn (*SQWeakRef) callconv(.c) void,
    };

    test {
        abi.assertSize(@This(), 0x28);
    }
};

const sq = @import("../../squirrel.zig");
const abi = @import("../../abi.zig");
const std = @import("std");
