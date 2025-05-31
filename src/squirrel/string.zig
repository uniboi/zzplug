pub const SQString = opaque {
    pub const Head = extern struct {
        vtable: *anyopaque,
        rc: sq.SQInteger,
        weakref: ?*sq.SQWeakRef,
        _shared_state: *sq.SQSharedState,

        length: sq.SQUnsignedInteger,
        hash: u64,

        test {
            comptime abi.assertSize(@This(), 0x30);
            comptime abi.assertInheritance(@This(), sq.SQRefcounted);
        }
    };

    const data_offset = 0x30;

    pub fn head(s: *SQString) *Head {
        return @ptrCast(@alignCast(s));
    }

    pub fn data(s: *SQString) []sq.SQChar {
        const length = s.head().length;
        const d: [*]sq.SQChar = @ptrFromInt(@intFromPtr(s) + data_offset);

        // TODO: Are SQStrings always null terminated?
        if (d[length - 1] == 0) {
            return d[0 .. length - 1];
        }

        return d[0..length];
    }
};

const sq = @import("../squirrel.zig");
const abi = @import("../abi.zig");
