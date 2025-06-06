pub const SQString = opaque {
    pub const Head = extern struct {
        vtable: *anyopaque,
        SQRefcounted: abi.Inherit(sq.SQRefcounted),

        shared_state: *sq.SQSharedState,
        length: sq.SQUnsignedInteger,
        hash: u64,

        test {
            abi.assertSize(@This(), 0x30);
        }
    };

    pub fn head(s: *SQString) *Head {
        return @ptrCast(@alignCast(s));
    }

    pub fn data(s: *SQString) []sq.SQChar {
        const length = s.head().length;
        const d: [*]sq.SQChar = @ptrFromInt(@intFromPtr(s) + @sizeOf(Head));

        // sometimes strings are zero terminated. respawn moment
        if (d[length - 1] == 0) {
            return d[0 .. length - 1];
        }

        return d[0..length];
    }
};

const sq = @import("../squirrel.zig");
const abi = @import("../abi.zig");
