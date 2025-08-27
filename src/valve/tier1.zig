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

    pub const VTable = extern struct {
        // ...
    };

    pub const Flags = packed struct(u32) {
        _: u32 = 0, // TODO: figure out flags
    };

    test "layout" {
        abi.assertSize(@This(), 0x30);
        abi.assertOffset(@This(), "m_pNext", 0x8);
        abi.assertOffset(@This(), "m_bRegistered", 0x10);
        abi.assertOffset(@This(), "m_pszName", 0x18);
        abi.assertOffset(@This(), "m_pszHelpString", 0x20);
        abi.assertOffset(@This(), "m_nFlags", 0x28);
    }
};

pub const ConCommand = extern struct {
    vtable: *VTable,
    ConCommandBase: abi.cpp.Inherit(ConCommandBase),

    m_fnSupplementalFinishCallback: *anyopaque,
    m_fnSupplementalCallback: *anyopaque,
    m_pCommandCallback: *const CommandCallback,
    m_pCompletionCallback: *const CommandCompletionCallback,
    m_nCallbackFlags: u32,

    /// Create a ConCommand.
    /// Depends on engine.dll being loaded
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

    pub const VTable = extern struct {
        // ...
    };

    pub const CallbackFlags = packed struct(u32) {
        m_bHasCompletionCallback: bool,
        m_bUsingNewCommandCallback: bool,
        m_bUsingCommandCallbackInterface: bool,
        _: u29 = 0,
    };

    pub const CommandCallback = fn (command: *const CCommand) callconv(.c) void;
    pub const CommandCompletionCallback = fn (partial: [*:0]const u8, commands: *const [command_completion_max_items][command_completion_item_length]u8) callconv(.c) i32;

    const command_completion_max_items = 64;
    const command_completion_item_length = 128;

    test "layout" {
        abi.assertSize(@This(), 0x58);
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

pub const IConVar = extern struct {
    vtable: *const VTable,

    pub const VTable = extern struct {
        // ...
    };
};

pub const ConVar = extern struct {
    vtable: *const VTable,
    ConCommandBase: abi.cpp.Inherit(ConCommandBase),
    IConVar: IConVar, // should technically be abi.Inherit(IConVar) and the vtable embedded directly
    m_pParent: *const ConCommandBase,
    m_pszDefaultValue: [*:0]const u8,
    m_Value: Value,
    m_bHasMin: bool,
    m_fMinVal: f32,
    m_bHasMax: bool,
    m_fMaxVal: f32,
    m_fnChangeCallbacks: CUtlVector(ChangeCallback, CUtlMemory(ChangeCallback, i32)),

    /// CVValue_t
    pub const Value = extern struct {
        m_pszString: [*:0]u8,
        m_iStringLength: i32,
        m_fValue: f32,
        m_nValue: i32,

        test "layout" {
            abi.assertSize(Value, 0x18);
        }
    };

    /// FnChangeCallback_t
    pub const ChangeCallback = *const fn (
        variable: *const IConVar,
        pOldValue: [*:0]const u8,
        fOldValue: f32,
    ) callconv(.c) void;

    const VTable = extern struct {
        // ...
    };

    test "layout" {
        abi.assertSize(ConVar, 0x90);
    }
};

pub fn CUtlMemory(T: type, I: type) type {
    _ = I; // Index type

    return extern struct {
        m_pMemory: [*]T,
        m_nAllocationCount: i32,
        m_nGrowSize: i32,

        test "layout" {
            abi.assertSize(@This(), 0x10);
        }
    };
}

pub fn CUtlVector(T: type, CAllocator: type) type {
    return extern struct {
        m_Memory: CAllocator,
        m_Size: i32,
        m_pElements: [*]T,

        test "layout" {
            abi.assertSize(@This(), 0x20);
        }
    };
}

const abi = @import("../abi.zig");
const std = @import("std");
const modules = @import("../modules.zig");
