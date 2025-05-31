pub const SQFunctionRegistration = extern struct {
    sq_name: [*:0]const u8,
    native_name: ?[*:0]const u8 = null,
    help_text: ?[*:0]const u8 = null,
    /// Unparsed squirrel return type
    raw_return_type: [*:0]const u8,
    /// Unparsed squirrel signature.
    /// Argument names are optional.
    signature: [*:0]const u8,
    unknown1: u32 = 0,
    dev_level: u32 = 0,
    short_name: ?[*:0]const u8 = null,
    unknown2: u32 = 0,
    return_type: ReturnType = .default,
    external_buffer: ?*anyopaque = null,
    external_buffer_size: usize = 0,
    unknown3: usize = 0,
    unknown4: usize = 0,
    implementation: *const Implementation,

    pub const ReturnType = enum(u32) {
        float = 0x1,
        vec = 0x3,
        int = 0x5,
        bool = 0x6,
        entity = 0xd,
        string = 0x21,
        default = 0x20,
        array = 0x25,
        asset = 0x28,
        table = 0x26,
    };

    pub const Implementation = fn (sqvm: *SQVM, unk1: *anyopaque, unk2: *anyopaque, unk3: *anyopaque) callconv(.c) SQResult;

    fn proxy(comptime function: anytype) Implementation {
        comptime {
            const Impl = @TypeOf(function);
            const impl_info = @typeInfo(Impl);

            if (impl_info != .@"fn") @compileError("SQ Function Implementation must be a function reference");
        }
    }

    const sq = @import("../squirrel.zig");
    const SQVM = sq.SQVM;
    const C_SQVM = sq.C_SQVM;
    const SQResult = sq.SQResult;

    const std = @import("std");
};
