CSQVM_RegisterFunction: *const fn (*sq.C_SQVM, *const sq.SQFunctionRegistration, usize) callconv(.c) void,

sq_throwerror: *const fn (vm: *sq.SQVM, msg: [*:0]const sq.SQChar) callconv(.c) sq.SQResult,

pub fn init(module: *Module) Client {
    return .{
        .CSQVM_RegisterFunction = @ptrCast(module.offset(0x108E0)),

        .sq_throwerror = @ptrCast(module.offset(0x8440)),
    };
}

const Client = @This();
const sq = @import("../squirrel.zig");
const abi = @import("../abi.zig");
const Module = abi.Module;
