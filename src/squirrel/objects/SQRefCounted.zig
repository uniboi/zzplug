pub const SQRefCounted = extern struct {
    vtable: *VTable,
    rc: sq.SQInteger,
    weakref: ?*sq.SQWeakRef,

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

const sq = @import("../../squirrel.zig");
const abi = @import("../../abi.zig");
const std = @import("std");
