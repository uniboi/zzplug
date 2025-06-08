pub fn Tree(T: type) type {
    return struct {
        value: T,
        children: []const Tree(T) = &.{},

        pub fn find(tree: *const @This(), v: T) ?*const Tree(T) {
            if (tree.value == v) {
                return tree;
            }

            for (tree.children) |child| {
                if (child.find(v)) |ret| return ret;
            }

            return null;
        }
    };
}

test {
    const tree: Tree(i32) = .{
        .value = 1,
        .children = &.{
            .{ .value = 2 },
            .{
                .value = 3,
                .children = &.{.{ .value = 4 }},
            },
        },
    };

    try std.testing.expect(tree.find(4) != null);
}

const std = @import("std");
