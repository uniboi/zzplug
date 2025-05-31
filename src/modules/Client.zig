CSQVM_RegisterFunction: *const fn (*sq.C_SQVM, *const sq.SQFunctionRegistration, usize) callconv(.c) void,

pub fn init(module: *Module) Client {
    return .{
        .CSQVM_RegisterFunction = @ptrCast(module.offset(0x108E0)),
    };
}

const Client = @This();
const sq = @import("../squirrel.zig");
const abi = @import("../abi.zig");
const Module = abi.Module;
