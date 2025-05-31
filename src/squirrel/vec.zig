pub fn Vec(comptime T: type) type {
    return extern struct {
        _vals: [*]T,
        _size: sq.SQUnsignedInteger,
        _allocated: sq.SQUnsignedInteger,

        pub fn slice(v: @This()) []T {
            return v._vals[0..v._size];
        }
    };
}

const sq = @import("../squirrel.zig");
