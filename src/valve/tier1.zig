pub const IConCommandBaseAccessor = extern struct {
    vtable: *const VTable,

    pub const VTable = extern struct {
        RegisterConCommandBase: *const fn(pVar: *ConCommandBase) callconv(.c) bool,
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

const abi = @import("../abi.zig");

