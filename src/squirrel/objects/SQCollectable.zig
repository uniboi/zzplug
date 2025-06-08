pub const SQCollectable = extern struct {
    vtable: *VTable,
    SQRefCounted: abi.Inherit(sq.SQRefCounted),
    _next: ?*SQCollectable,
    _prev: ?*SQCollectable,
    _shared_state: *sq.SQSharedState,

    pub fn format(self: SQCollectable, comptime _: []const u8, _: std.fmt.FormatOptions, writer: anytype) !void {
        _ = try writer.print("SQCollectable{ next: {?*}, prev: {?*}, SQRefCounted: {}", .{ self._next, self._prev, sq.SQObject.downCast(sq.SQRefCounted, self) });
    }

    pub fn finalize(self: *SQCollectable) void {
        self.vtable.finalize(self);
    }

    pub fn mark(self: *SQCollectable, chain: **SQCollectable) void {
        self.vtable.mark(self, chain);
    }

    pub fn isMarked(self: *SQCollectable) bool {
        return @as(sq.SQUnsignedInteger, @bitCast(self.SQRefCounted.rc)) & mark_flag != 0;
    }

    const mark_flag = 0x80000000;

    pub const VTable = extern struct {
        destructor: *const fn (*SQCollectable, deallocate: bool) callconv(.c) abi.IllegalPointer,
        release: *const fn (*SQCollectable) callconv(.c) void,
        mark: *const fn (*SQCollectable, **SQCollectable) callconv(.c) void,
        finalize: *const fn (*SQCollectable) callconv(.c) void,
        print: *const fn (*SQCollectable, buf: [*]u8, buf_size: u32, unk_1: i64, unk_2: i32) callconv(.c) i64,
    };

    test {
        abi.assertSize(@This(), 0x30);
    }
};

const sq = @import("../../squirrel.zig");
const abi = @import("../../abi.zig");
const std = @import("std");
