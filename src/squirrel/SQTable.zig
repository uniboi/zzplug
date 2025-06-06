pub const SQTable = extern struct {
    vtable: *anyopaque,
    SQDelegable: abi.Inherit(sq.SQDelegable),

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
        abi.assertSize(@This(), 0x50);
    }
};

const sq = @import("../squirrel.zig");
const std = @import("std");
const abi = @import("../abi.zig");
