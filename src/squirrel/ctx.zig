var sv: ContextRelay = undefined;
var cl: ContextRelay = undefined;

pub const ContextRelay = struct {
    c_sqvm_register_function: *const fn (*sq.C_SQVM, *const sq.SQFunctionRegistration, usize) callconv(.c) void,

    sq_throwerror: *const fn (*sq.SQVM, [*:0]const sq.SQChar) callconv(.c) sq.SQResult,
};

pub fn initForServer(server: *const Server) void {
    sv = .{
        .c_sqvm_register_function = server.CSQVM_RegisterFunction,
        .sq_throwerror = server.sq_throwerror,
    };
}

pub fn initForClient(client: *const Client) void {
    cl = .{
        .c_sqvm_register_function = client.CSQVM_RegisterFunction,
        .sq_throwerror = client.sq_throwerror,
    };
}

fn at(module: *anyopaque, offset: usize) *anyopaque {
    return @ptrFromInt(@intFromPtr(module) + offset);
}

pub fn of(vm_context: sq.ScriptContext) *const ContextRelay {
    return switch (vm_context) {
        .server => &sv,
        else => &cl,
    };
}

const sq = @import("../squirrel.zig");
const HMODULE = @import("std").os.windows.HMODULE;
const Server = @import("../modules/Server.zig");
const Client = @import("../modules/Client.zig");
