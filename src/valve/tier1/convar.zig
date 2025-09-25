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
    m_nFlags: Flags,

    pub const VTable = extern struct {
        destructor: *const fn (*ConCommandBase, dealloc: bool) callconv(.c) *ConCommandBase,
        is_flag_set: *const fn (*ConCommandBase, flags: u32) callconv(.c) bool,
        add_flags: *const fn (*ConCommandBase, flags: u32) callconv(.c) void,
        remove_flags: *const fn (*ConCommandBase, flags: u32) callconv(.c) void,
        get_flags: *const fn (*ConCommandBase, flags: u32) callconv(.c) void,
        get_name: *const fn (*ConCommandBase) callconv(.c) [*:0]const u8,
        get_help_text: *const fn (*ConCommandBase) callconv(.c) [*:0]const u8,
        is_registered: *const fn (*ConCommandBase) callconv(.c) bool,
        get_dll_identifier: *const fn (*ConCommandBase) callconv(.c) CVarDLLIdentifier,
        create: *const fn (*ConCommandBase, name: [*:0]const u8, help_text: [*:0]const u8, flags: Flags) callconv(.c) void,
        init: *const fn (*ConCommandBase) callconv(.c) void,
    };

    pub const Flags = packed struct(u32) {
        /// FCVAR_UNREGISTERED
        unregistered: bool = false,

        /// FCVAR_DEVELOPMENTONLY
        development_only: bool = false,

        /// FCVAR_GAMEDLL
        game_dll: bool = false,

        /// FCVAR_CLIENTDLL
        client_dll: bool = false,

        /// FCVAR_HIDDEN
        hidden: bool = false,

        /// FCVAR_PROTECTED
        /// ConVar only
        protected: bool = false,

        /// FCVAR_SPONLY
        sp_only: bool = false,

        /// FCVAR_ARCHIVE
        archive: bool = false,

        /// FCVAR_NOTIFY
        notify: bool = false,

        /// FCVAR_USERINFO
        user_info: bool = false,

        /// Means different things for ConVars and ConCommands
        /// TODO: maybe create seperate types?
        ambiguous: packed union {
            /// FCVAR_PRINTABLEONLY
            ///
            /// ConVars only
            printable_only: bool,

            /// FCVAR_GAMEDLL_FOR_REMOTE_CLIENTS
            ///
            /// ConCommands only
            game_dll_for_remote_clients: bool,
        } = . { .printable_only = false },

        /// FCVAR_UNLOGGED
        unlogged: bool = false,

        /// FCVAR_NEVER_AS_STRING
        never_as_string: bool = false,

        /// FCVAR_REPLICATED
        replicated: bool = false,

        /// FCVAR_CHEAT
        cheat: bool = false,

        /// FCVAR_SS
        splitscreen: bool = false,

        /// FCVAR_DEMO
        demo: bool = false,

        /// FCVAR_DONTRECORD
        dont_record: bool = false,

        /// FCVAR_SS_ADDED
        splitscreen_added: bool = false,

        /// FCVAR_RELEASE
        release: bool = false,

        /// FCVAR_RELOAD_MATERIALS
        reload_materials: bool = false,

        /// FCVAR_RELOAD_TEXTURES
        reload_textures: bool = false,

        /// FCVAR_NOT_CONNECTED
        not_connected: bool = false,

        /// FCVAR_MATERIAL_SYSTEM_THREAD
        material_system_thread: bool = false,

        /// FCVAR_ARCHIVE_GAMECONSOLE
        archive_game_console: bool = false,

        /// FCVAR_ACCESSIBLE_FROM_THREADS
        accessible_from_threads: bool = false,

        _gap_26: u2 = 0,

        /// FCVAR_SERVER_CAN_EXECUTE
        server_can_execute: bool = false,

        /// FCVAR_SERVER_CANNOT_QUERY
        server_cannot_query: bool = false,

        /// FCVAR_CLIENTCMD_CAN_EXECUTE
        clientcmd_can_execute: bool = false,

        _gap_31: u1 = 0,
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

    m_fnSupplementalFinishCallback: *CommandSupplementalCompletionCallback,
    m_fnSupplementalCallback: ?*CommandSupplementalCallback,

    command_callback: extern union {
        m_fnCommandCallbackV1: *const fn() callconv(.c) void,
        m_fnCommandCallback: *const CommandCallback,
        m_pCommandCallback: *ICommandCallback,
    },

    completion_callback: extern union {
        m_pCompletionCallback: *const CommandCompletionCallback,
        m_pCommandCompletionCallback: *ICommandCompletionCallback,
    },

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

    pub const CallbackFlags = packed struct(u32) {
        m_bHasCompletionCallback: bool,
        m_bUsingNewCommandCallback: bool,
        m_bUsingCommandCallbackInterface: bool,
        _: u29 = 0,
    };

    /// FnCommandSupplementalFinishCallback_t
    const CommandSupplementalCompletionCallback = *const fn () callconv(.c) void;
    /// FnCommandSupplementalCallback_t
    /// missing supplemental completion callback arg?
    const CommandSupplementalCallback = *const fn (command: *const CCommand) void;

    pub const CommandCallback = fn (command: *const CCommand) callconv(.c) void;
    pub const CommandCompletionCallback = fn (partial: [*:0]const u8, commands: *const [command_completion_max_items][command_completion_item_length]u8) callconv(.c) i32;

    pub const ICommandCallback = extern struct {
        vtable: extern struct {
            callback: *const fn(command: *const CCommand) callconv(.c) void,
        },
    };

    pub const ICommandCompletionCallback = extern struct {
        vtable: extern struct {
            callback: *const fn(pPartial: [*:0]const u8, commands: *CUtlVector(CUtlString)) callconv(.c) void,
        },
    };

    const command_completion_max_items = 64;
    const command_completion_item_length = 128;

    const VTable = extern struct {
        // ...
    };

    test "layout" {
        abi.assertSize(@This(), 0x58);
    }
};

pub const CCommand = extern struct {
    m_nArgc: i32,
    m_nArgv0Size: i32,
    m_pArgSBuffer: [command_max_length]u8,
    m_pArgvBuffer: [command_max_length]u8,
    m_ppArgv: *const [command_max_argc]u8,

    // TODO: cmd_source_t m_source missing?

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
    IConVar: IConVar, // should technically be abi.cpp.Inherit(IConVar) and the vtable embedded directly
    m_pParent: *const ConCommandBase,
    m_pszDefaultValue: [*:0]const u8,
    m_Value: Value,
    m_bHasMin: bool,
    m_fMinVal: f32,
    m_bHasMax: bool,
    m_fMaxVal: f32,
    m_fnChangeCallbacks: CUtlVector(ChangeCallback),

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

pub const CVarDLLIdentifier = enum(i32) { _ };

const abi = @import("../../abi.zig");
const modules = @import("../../modules.zig");
const std = @import("std");
const tier1 = @import("../tier1.zig");
const CUtlVector = tier1.CUtlVector;
const CUtlString = tier1.CUtlString;
