pub const SQSharedState = extern struct {
    gap_0: [0x4398]abi.undefined,
    unk_4398: sq.SQObject,
    unk_43a8: sq.SQObject,
    unk_43b8: sq.SQObject,
    unk_43c8: sq.SQObject,
    unk_43d8: sq.SQObject,
    c_sqvm: *sq.C_SQVM,
    gap_43f0: [4]abi.undefined,
    last_error_buf: [*]sq.SQChar,
    last_error_size: sq.SQUnsignedInteger,
    gap_4404: [4]abi.undefined,
};

const std = @import("std");
const sq = @import("../squirrel.zig");
const abi = @import("../abi.zig");
