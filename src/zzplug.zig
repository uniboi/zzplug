pub const Plugin = @import("plugin.zig").Plugin;
pub const interfaces = @import("interfaces.zig");
pub const abi = @import("abi.zig");
pub const modules = @import("modules.zig");
pub const squirrel = @import("squirrel.zig");
pub const math = @import("math.zig");
pub const vsource = @import("vsource.zig");

const std = @import("std");

test {
    std.testing.refAllDeclsRecursive(@This());
    try std.testing.expect(false);
}
