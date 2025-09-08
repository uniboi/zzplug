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

const abi = @import("../../abi.zig");
