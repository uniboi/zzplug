pub const @"undefined" = u8;
pub const EHANDLE = enum(u32) { _ };
pub const Func = *anyopaque;
pub const time = f32;
pub const tick = i32;
pub const Color32 = extern struct { r: u8, g: u8, b: u8, a: u8 };
pub const Matrix3x4 = [4][3]f32;
pub const SoundName = [*:0]u8;
pub const ModelName = [*:0]u8;
pub const ModelIndex = enum(i32) { invalid = -1, _ };

pub const edict_t = [0x68]u8;
