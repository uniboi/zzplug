pub const Vector3 = extern struct {
    x: f32,
    y: f32,
    z: f32,

    pub fn isZero(v: Vector3) bool {
        return v.x == 0 and v.y == 0 and v.z == 0;
    }

    test {
        comptime abi.assertSize(@This(), 0xc);
    }
};

pub const Vector2 = extern struct {
    x: f32,
    y: f32,

    pub fn isZero(v: Vector2) bool {
        return v.x == 0 and v.y == 0;
    }

    test {
        comptime abi.assertSize(@This(), 0x8);
    }
};

pub const Quaternion = extern struct {
    x: f32,
    y: f32,
    z: f32,
    w: f32,

    pub fn isZero(v: Quaternion) bool {
        return v.x == 0 and v.y == 0 and v.z == 0 and v.w == 0;
    }
};

const abi = @import("../abi.zig");
