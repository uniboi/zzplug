pub const SQArray = extern struct {
    vtable: *VTable,
    SQCollectable: abi.Inherit(sq.SQCollectable),
    values: sq.Vector(sq.SQObject),

    pub const VTable = extern struct {};

    test {
        abi.assertSize(@This(), 0x40);
    }
};

const sq = @import("../squirrel.zig");
const abi = @import("../abi.zig");
const std = @import("std");
