pub const SQTable = extern struct {
    vtable: *VTable,
    SQDelegable: abi.cpp.Inherit(sq.SQDelegable),

    /// all table slots
    nodes: [*]HashNode,
    /// capacity of nodes
    numofnodes: sq.SQUnsignedInteger,
    /// amount of used nodes
    usednodes: sq.SQUnsignedInteger,
    /// node index of the first unused node
    first_free_index: usize,

    pub fn slots(table: *SQTable) []HashNode {
        return table.nodes[0..table.numofnodes];
    }

    pub fn format(table: *SQTable, writer: *std.Io.Writer) !void {
        _ = try writer.write("SQTable{");

        var iter: Iterator = .{ .table = table };
        while (iter.next()) |node| {
            try writer.print(" [{f}] = {f}", .{ node.key, node.val });
            if (node.next != null) {
                _ = try writer.write(", ");
            }
        }

        _ = try writer.write(" }");
    }

    pub const Iterator = struct {
        table: *SQTable,
        current_node: ?*HashNode = null,

        pub fn next(iter: *Iterator) ?*HashNode {
            const idx = if (iter.current_node != null) (@intFromPtr(iter.current_node) - @intFromPtr(iter.table.nodes)) / @sizeOf(HashNode) else 0;
            if (idx + 1 == iter.table.numofnodes) return null;

            for (iter.table.slots()[idx + 1 ..]) |*node| {
                if (node.key.type != .null) {
                    iter.current_node = node;
                    return node;
                }
            }

            return null;
        }
    };

    pub const HashNode = extern struct {
        val: sq.SQObject,
        key: sq.SQObject,
        next: ?*HashNode,

        test {
            comptime abi.assertSize(@This(), 0x28);
        }
    };

    pub const VTable = extern struct {
        destructor: *const fn (*SQTable, deallocate: bool) callconv(.c) void,
        destroy: *const fn (*SQTable) callconv(.c) void,
        mark: *const fn (*SQTable, **sq.SQCollectable) callconv(.c) void,
        finalize: *const fn (*SQTable) callconv(.c) void,
        print: *const fn (*SQTable, buf: [*]u8, buf_size: u32, unk_1: i64, unk_2: i32) callconv(.c) i64,
        getMetaMethod: *const fn (*SQTable, sqvm: *sq.SQVM, metamethod: sq.SQDelegable.MetaMethod, out: *sq.SQObject) callconv(.c) bool,
    };

    test {
        abi.assertSize(@This(), 0x50);
    }
};

const sq = @import("../../squirrel.zig");
const std = @import("std");
const abi = @import("../../abi.zig");
