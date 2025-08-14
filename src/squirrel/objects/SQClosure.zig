pub const SQClosure = extern struct {
    vtable: *anyopaque,
    SQCollectable: abi.cpp.Inherit(sq.SQCollectable),

    _env: sq.SQObject,
    _function: sq.SQObject,
    _outervalues: *sq.Vector(sq.SQObject),
    _defaultparams: *sq.Vector(sq.SQObject),

    test {
        abi.assertSize(@This(), 0x60);
    }
};

const sq = @import("../../squirrel.zig");
const std = @import("std");
const abi = @import("../../abi.zig");
