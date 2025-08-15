module: *Module,
conCommandConstructor: *const fn (
    *tier1.ConCommand,
    name: [*:0]const u8,
    cb: *const tier1.ConCommand.CommandCallback,
    help_text: [*:0]const u8,
    flags: tier1.ConCommandBase.Flags,
    cbc: ?*const tier1.ConCommand.CommandCompletionCallback,
) callconv(.c) *tier1.ConCommand,

pub fn init(module: *Module) @This() {
    return .{
        .module = module,
        .conCommandConstructor = @ptrCast(module.offset(0x415f60)),
    };
}

const abi = @import("../abi.zig");
const Module = abi.Module;
const tier1 = @import("../valve/tier1.zig");
