pub const SQArray = extern struct {
    vtable: *VTable,
    SQCollectable: abi.Inherit(sq.SQCollectable),
    values: sq.Vector(sq.SQObject),

    pub fn format(array: *SQArray, writer: *std.Io.Writer) !void {
        _ = try writer.write("SQArray{ ");

        for (0.., array.values.slice()) |i, *item| {
            try writer.print("{f}", .{item});

            if (i + 1 < array.values._size) {
                _ = try writer.write(", ");
            }
        }

        _ = try writer.write(" }");
    }

    pub const VTable = extern struct {};

    test {
        abi.assertSize(@This(), 0x40);
    }
};

const sq = @import("../../squirrel.zig");
const abi = @import("../../abi.zig");
const std = @import("std");
