pub const IConCommandBaseAccessor = extern struct {
    vtable: *const VTable,

    pub const VTable = extern struct {
        RegisterConCommandBase: *const fn (pVar: *ConCommandBase) callconv(.c) bool,
    };
};

pub const ConCommandBase = extern struct {
    vtable: *VTable,

    m_pNext: *ConCommandBase,
    m_bRegistered: bool,
    m_pszName: [*:0]const u8,
    m_pszHelpString: [*:0]const u8,
    m_nFlags: u32,
    s_pConCommandBases: [*]ConCommandBase,
    s_pAccessor: [*]IConCommandBaseAccessor,

    pub const VTable = extern struct {};
    pub const Flags = packed struct(u32) {
        _: u32 = 0, // TODO: figure out flags
    };

    test "layout" {
        abi.assertSize(@This(), 0x40);
        abi.assertOffset(@This(), "m_pNext", 0x8);
        abi.assertOffset(@This(), "m_bRegistered", 0x10);
        abi.assertOffset(@This(), "m_pszName", 0x18);
        abi.assertOffset(@This(), "m_pszHelpString", 0x20);
        abi.assertOffset(@This(), "m_nFlags", 0x28);
        abi.assertOffset(@This(), "s_pConCommandBases", 0x30);
        abi.assertOffset(@This(), "s_pAccessor", 0x38);
    }
};

pub const ConCommand = extern struct {
    vtable: *VTable,
    ConCommandBase: abi.cpp.Inherit(ConCommandBase),

    m_pCommandCallback: *const CommandCallback,
    m_pCompletionCallback: *const CommandCompletionCallback,
    m_nCallbackFlags: u32,

    // TODO: from ttf2sdk, but these might not exist in the structure
    unk_58: u32,
    unk_5c: u32,

    pub fn create(
        allocator: std.mem.Allocator,
        name: [*:0]const u8,
        callback: *const CommandCallback,
        help_text: [*:0]const u8,
        flags: ConCommandBase.Flags,
        completion_callback: ?*const CommandCompletionCallback,
    ) std.mem.Allocator.Error!*ConCommand {
        const cmd = try allocator.create(ConCommand);
        return modules.engine.?.conCommandConstructor(
            cmd,
            name,
            callback,
            help_text,
            flags,
            completion_callback,
        );
    }

    pub const VTable = extern struct {};
    pub const CallbackFlags = packed struct(u32) {
        m_bHasCompletionCallback: bool,
        m_bUsingNewCommandCallback: bool,
        m_bUsingCommandCallbackInterface: bool,
        _: u29 = 0,
    };

    pub const CommandCallback = fn (command: *const CCommand) callconv(.c) void;
    /// Returns 0 to COMMAND_COMPLETION_MAXITEMS worth of completion strings
    pub const CommandCompletionCallback = fn (partial: [*:0]const u8, commands: *const [command_completion_max_items][command_completion_item_length]u8) callconv(.c) i32;

    const command_completion_max_items = 64;
    const command_completion_item_length = 128;

    test "layout" {
        abi.assertSize(@This(), 0x60);
    }
};

pub const CCommand = extern struct {
    // TODO: how sure are we these are 64 bit and not 32?
    m_nArgc: i64,
    m_nArgv0Size: i64,
    m_pArgSBuffer: [command_max_length]u8,
    m_pArgvBuffer: [command_max_length]u8,
    m_ppArgv: *const [command_max_argc]u8,

    const command_max_argc = 64;
    const command_max_length = 512;
};

const abi = @import("../abi.zig");
const std = @import("std");
const modules = @import("../modules.zig");
