/// CUtlVector<T>
///
/// Use CUtlVector_Allocator for CUtlVector<T, A>
pub fn CUtlVector(T: type) type {
    return CUtlVector_Allocator(T, tier1.CUtlMemory(T, i32));
}

/// CUtlVector<T, A>
pub fn CUtlVector_Allocator(T: type, CAllocator: type) type {
    return extern struct {
        m_Memory: CAllocator,
        m_Size: i32,
        m_pElements: [*]T,

        test "layout" {
            abi.assertSize(@This(), 0x20);
        }
    };
}

const tier1 = @import("../tier1.zig");
const abi = @import("../../abi.zig");
