pub const CUtlBinaryBlock = extern struct {
    m_Memory: tier1.CUtlMemory(u8, i32),
    m_nActualLength: i32,
};

pub const CUtlString = extern struct {
    m_Storage: CUtlBinaryBlock,
};

const tier1 = @import("../tier1.zig");
