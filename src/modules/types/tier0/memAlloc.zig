pub const IMemAlloc = extern struct {
    vtable: *VTable,

    pub const VTable = extern struct {
        alloc_1: *const Alloc,
        alloc: *const Alloc,
        realloc_1: *const Realloc,
        realloc: *const Realloc,
        free_1: *const Free,
        free: *const Free,
        unk_30: *const anyopaque,
        unk_38: *const anyopaque,
        getSize: *const fn (*IMemAlloc, *anyopaque) callconv(.c) usize,
        unk_48: *const anyopaque,
        unk_50: *const anyopaque,
        unk_58: *const anyopaque,
        unk_60: *const anyopaque,
        unk_68: *const anyopaque,
        unk_70: *const anyopaque,
        crtCheckMemory: *const fn (*IMemAlloc) callconv(.c) i32,
        unk_80: *const anyopaque,
        unk_88: *const anyopaque,
        dumpStats: *const fn (*IMemAlloc) callconv(.c) void,
        dumpStatsFileBase: *const fn (*IMemAlloc, [*:0]const u8) callconv(.c) void,
        unk_a0: *const anyopaque,
        unk_a8: *const anyopaque,
        unk_b0: *const anyopaque,
        unk_b8: *const anyopaque,
        unk_c0: *const anyopaque,
        heapchk: *const fn (*IMemAlloc) callconv(.c) i32,
        unk_d0: *const anyopaque,
        unk_d8: *const anyopaque,
        unk_e0: *const anyopaque,
        unk_e8: *const anyopaque,
        unk_f0: *const anyopaque,
        unk_f8: *const anyopaque,
        setAllocFailHandler: *const fn (*IMemAlloc, *const AllocFailHandler) callconv(.c) *const AllocFailHandler,
        unk_108: *const anyopaque,
        unk_110: *const anyopaque,
        unk_118: *const anyopaque,
        unk_120: *const anyopaque,
        setCrtAllocFailed: *const fn (*IMemAlloc, *usize) callconv(.c) void,
        internalAlloc_1: *const InternalAlloc,
        internalAlloc: *const InternalAlloc,
        unk_140: *const anyopaque,
        unk_148: *const anyopaque,
        getGenericMemoryStats: *const fn (*IMemAlloc, **GenericMemoryStat) callconv(.c) void,
        unk_158: *const anyopaque,

        const Alloc = fn (*IMemAlloc, u64) callconv(.c) ?*anyopaque;
        const Realloc = fn (*IMemAlloc, *anyopaque, u64) callconv(.c) ?*anyopaque;
        const Free = fn (*IMemAlloc, *anyopaque) callconv(.c) void;
        const InternalAlloc = fn (*IMemAlloc, region: u32, size: usize) callconv(.c) ?*anyopaque;

        pub const AllocFailHandler = fn (alloc_size: usize) callconv(.c) usize;

        test {
            try std.testing.expect(@sizeOf(@This()) == 0x160);
            try std.testing.expect(@offsetOf(@This(), "alloc") == 0x8);
            try std.testing.expect(@offsetOf(@This(), "free") == 0x28);
            try std.testing.expect(@offsetOf(@This(), "getSize") == 0x40);
        }
    };
};

pub const GenericMemoryStat = extern struct {
    name: [*:0]u8,
    value: i32,
};

pub const CStdMemAlloc = extern struct {
    vtable: *IMemAlloc.VTable,

    // ... at least 0x1db7 bytes large

    pub fn alloc(self: *CStdMemAlloc, size: u64) ?*anyopaque {
        return self.vtable.alloc(@ptrCast(self), size);
    }

    pub fn realloc(self: *CStdMemAlloc, chunk: *anyopaque, size: u64) ?*anyopaque {
        return self.vtable.realloc(@ptrCast(self), chunk, size);
    }

    pub fn free(self: *CStdMemAlloc, chunk: *anyopaque) void {
        self.vtable.free(@ptrCast(self), chunk);
    }

    pub fn getSize(self: *CStdMemAlloc, chunk: *anyopaque) u64 {
        return self.vtable.getSize(@ptrCast(self), chunk);
    }

    // utilities

    /// Does not support resizing in place
    ///
    /// TODO: Alignment?
    pub fn allocator(mem: *CStdMemAlloc) std.mem.Allocator {
        return .{
            .ptr = mem,
            .vtable = &.{
                .alloc = _interfaceAlloc,
                .resize = _interfaceResize,
                .remap = _interfaceRemap,
                .free = _interfaceFree,
            },
        };
    }

    fn _interfaceAlloc(context: *anyopaque, size: usize, alignment: std.mem.Alignment, ret_addr: usize) ?[*]u8 {
        const self: *CStdMemAlloc = @ptrCast(@alignCast(context));
        _ = alignment;
        _ = ret_addr;

        return @ptrCast(self.alloc(size));
    }

    fn _interfaceResize(context: *anyopaque, memory: []u8, alignment: std.mem.Alignment, new_len: usize, ret_addr: usize) bool {
        const mem: *IMemAlloc = @ptrCast(@alignCast(context));
        _ = mem;
        _ = memory;
        _ = alignment;
        _ = new_len;
        _ = ret_addr;

        return false;
    }

    fn _interfaceRemap(context: *anyopaque, memory: []u8, alignment: std.mem.Alignment, new_len: usize, ret_addr: usize) ?[*]u8 {
        const self: *CStdMemAlloc = @ptrCast(@alignCast(context));
        _ = alignment;
        _ = ret_addr;

        return @ptrCast(self.realloc(@ptrCast(memory.ptr), new_len));
    }

    fn _interfaceFree(context: *anyopaque, memory: []u8, alignment: std.mem.Alignment, ret_addr: usize) void {
        const self: *CStdMemAlloc = @ptrCast(@alignCast(context));
        _ = alignment;
        _ = ret_addr;

        self.free(@ptrCast(memory.ptr));
    }
};

const abi = @import("../../../abi.zig");
const std = @import("std");
