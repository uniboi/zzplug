pub const SQTable = extern struct {
    vtable: *anyopaque,
    rc: sq.SQInteger,
    weakref: ?*sq.SQWeakRef,
    _next: ?*sq.SQCollectable,
    _prev: ?*sq.SQCollectable,
    _shared_state: *sq.SQSharedState,
    _delegate: *@This(),

    _nodes: [*]HashNode,
    _numofnodes: sq.SQUnsignedInteger,
    _usednodes: sq.SQUnsignedInteger,
    unknown: u16,

    pub const HashNode = extern struct {
        val: sq.SQObject,
        key: sq.SQObject,
        next: *@This(),

        test {
            comptime abi.assertSize(@This(), 0x28);
        }
    };

    test {
        comptime abi.assertSize(@This(), 0x50);
        comptime abi.assertInheritance(@This(), sq.SQDelegable);
    }
};

const sq = @import("../squirrel.zig");
const std = @import("std");
const abi = @import("../abi.zig");
