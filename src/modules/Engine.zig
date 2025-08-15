module: *Module,

pub fn init(module: *Module) @This() {
    return .{
        .module = module,
    };
}

const abi = @import("../abi.zig");
const Module = abi.Module;

