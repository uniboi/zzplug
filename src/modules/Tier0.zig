module: *Module,
g_pMemAllocSingleton: *types.mem.CStdMemAlloc = undefined,

pub fn init(module: *Module) Tier0 {
    return .{
        .module = module,
        .g_pMemAllocSingleton = @as(**types.mem.CStdMemAlloc, @ptrCast(@alignCast(std.os.windows.kernel32.GetProcAddress(module.handle(), "g_pMemAllocSingleton")))).*,
    };
}

pub fn allocator(tier0: Tier0) std.mem.Allocator {
    return tier0.g_pMemAllocSingleton.allocator();
}

const Tier0 = @This();
const sq = @import("../squirrel.zig");
const abi = @import("../abi.zig");
const Module = abi.Module;
const types = @import("./types/tier0.zig");
const std = @import("std");
