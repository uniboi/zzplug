pub const SQStructInstance = opaque {
    pub const Head = extern struct {
        vtable: *VTable,
        SQCollectable: abi.cpp.Inherit(sq.SQCollectable),

        size: sq.SQUnsignedInteger,
        unknown_u34: sq.SQInteger,

        const VTable = extern struct {
            destructor: *const fn (*SQStructInstance, deallocate: bool) callconv(.c) abi.IllegalPointer,
            release: *const fn (*SQStructInstance) callconv(.c) void,
            mark: *const fn (*SQStructInstance, **sq.SQCollectable) callconv(.c) void,
            finalize: *const fn (*SQStructInstance) callconv(.c) void,
            print: *const fn (*SQStructInstance, buf: [*]u8, buf_size: u32, unk_1: i64, unk_2: i32) callconv(.c) usize,
        };

        test {
            try std.testing.expect(@offsetOf(Head, "size") == 0x30);
        }
    };

    const data_offset = 0x38;

    pub fn head(instance: *SQStructInstance) *Head {
        return @ptrCast(@alignCast(instance));
    }

    pub fn fields(instance: *SQStructInstance) []sq.SQObject {
        const size = instance.head().size;
        return @as([*]sq.SQObject, @ptrFromInt(@intFromPtr(instance) + data_offset))[0..size];
    }

    // TODO: what does this store?
    pub fn tail(instance: *SQStructInstance) *[56]u8 {
        const size = instance.head().size;
        return @as(*[56]u8, @ptrFromInt(@intFromPtr(instance) + data_offset + (@sizeOf(sq.SQObject) * size)));
    }

    pub fn format(instance: *SQStructInstance, writer: *std.Io.Writer) !void {
        _ = try writer.write("SQStructInstance{ ");

        for (0.., instance.fields()) |i, *field| {
            try writer.print("{f}", .{field});

            if (i + 1 < instance.fields().len) {
                _ = try writer.write(", ");
            }
        }

        _ = try writer.write(" }");
    }
};

const sq = @import("../../squirrel.zig");
const std = @import("std");
const abi = @import("../../abi.zig");
