pub const Vector3 = extern struct {
    x: f32,
    y: f32,
    z: f32,

    test {
        comptime abi.assertSize(@This(), 0xc);
    }
};

pub const Vector2 = extern struct {
    x: f32,
    y: f32,

    test {
        comptime abi.assertSize(@This(), 0x8);
    }
};

pub const Quaternion = extern struct {
    x: f32,
    y: f32,
    z: f32,
    w: f32,
};

const abi = @import("../abi.zig");
