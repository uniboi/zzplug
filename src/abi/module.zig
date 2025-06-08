pub const Module = opaque {
    pub fn fromHandle(h: std.os.windows.HMODULE) *Module {
        return @ptrCast(h);
    }

    pub fn handle(mod: *Module) std.os.windows.HMODULE {
        return @ptrCast(mod);
    }

    pub fn offset(mod: *Module, data_offset: usize) *align(8) anyopaque {
        return @ptrFromInt(@intFromPtr(mod) + data_offset);
    }

    pub fn patch(mod: *Module, data_offset: usize, data: []const u8) usize {
        const bytes: [*]u8 = @ptrCast(mod.offset(data_offset));
        var stream = std.io.fixedBufferStream(bytes[0..data.len]);
        return stream.writer().write(data) catch unreachable;
    }
};

const std = @import("std");
