pub const SQString = opaque {
    pub const Head = extern struct {
        vtable: *VTable,
        SQRefCounted: abi.Inherit(sq.SQRefCounted),

        shared_state: *sq.SQSharedState,
        length: sq.SQUnsignedInteger,
        hash: u64,

        pub const VTable = extern struct {
            destructor: *const fn (*SQString, deallocate: bool) callconv(.c) abi.IllegalPointer,
            release: *const fn (*SQString) callconv(.c) void,
        };

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
    pub fn format(self: *SQString, writer: *std.Io.Writer) !void {
        try writer.print("SQString{{ {s} }}", .{self.data()});
    }
};

const sq = @import("../../squirrel.zig");
const abi = @import("../../abi.zig");
const std = @import("std");
