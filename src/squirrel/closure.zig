pub const SQClosure = extern struct {
    vtable: *anyopaque,
    SQCollectable: abi.Inherit(sq.SQCollectable),

    _env: sq.SQObject,
    _function: sq.SQObject,
    _outervalues: *sq.Vector(sq.SQObject),
    _defaultparams: *sq.Vector(sq.SQObject),

    test {
        abi.assertSize(@This(), 0x60);
    }
};

pub const SQFunctionProto = opaque {
    pub const Head = extern struct {
        vtable: *anyopaque,
        SQCollectable: abi.Inherit(sq.SQCollectable),

        unknown_30: *anyopaque,
        _source_name: sq.SQObject,
        _name: sq.SQObject,
        gap_58: [8]u8,
        unknown_60: sq.SQObject,
        gap_70: [4]u8,
        unknown_74: sq.SQInteger,
        gap_78: [4]u8,
        unknown_7c: sq.SQInteger,
        unknown_80: *anyopaque,
        unknown_88: sq.SQInteger,
        unknown_90: [*]sq.SQObject,
        unknown_98: sq.SQInteger,
        unknown_a0: [*]sq.SQObject,
        unknown_a8: sq.SQInteger,
        unknown_b0: [*]sq.SQObject,
        unknown_b8: sq.SQInteger,
        unknown_c0: [*]sq.SQObject,
        unknown_c8: sq.SQInteger,
        unknown_d0: [*]sq.SQObject,
        unknown_d8: sq.SQInteger,
        unknown_e0: [*]u8, // undefined
        unknown_e8: sq.SQInteger,
        unknown_f0: [*]sq.SQObject,
        unknown_f8: sq.SQInteger,

        test {
            try std.testing.expect(@offsetOf(@This(), "unknown_60") == 0x60);
            try std.testing.expect(@offsetOf(@This(), "unknown_74") == 0x74);
            try std.testing.expect(@offsetOf(@This(), "unknown_7c") == 0x7c);
            try std.testing.expect(@offsetOf(@This(), "unknown_80") == 0x80);
            try std.testing.expect(@offsetOf(@This(), "unknown_88") == 0x88);
            try std.testing.expect(@offsetOf(@This(), "unknown_90") == 0x90);
            try std.testing.expect(@offsetOf(@This(), "unknown_98") == 0x98);
            try std.testing.expect(@offsetOf(@This(), "unknown_a0") == 0xa0);
            try std.testing.expect(@offsetOf(@This(), "unknown_a8") == 0xa8);
            try std.testing.expect(@offsetOf(@This(), "unknown_b0") == 0xb0);
            try std.testing.expect(@offsetOf(@This(), "unknown_b8") == 0xb8);
            try std.testing.expect(@offsetOf(@This(), "unknown_c0") == 0xc0);
            try std.testing.expect(@offsetOf(@This(), "unknown_d0") == 0xd0);
            try std.testing.expect(@offsetOf(@This(), "unknown_d8") == 0xd8);
            try std.testing.expect(@offsetOf(@This(), "unknown_e0") == 0xe0);
            try std.testing.expect(@offsetOf(@This(), "unknown_e8") == 0xe8);
            try std.testing.expect(@offsetOf(@This(), "unknown_f0") == 0xf0);
            try std.testing.expect(@offsetOf(@This(), "unknown_f8") == 0xf8);
        }
    };

    pub fn head(fp: *SQFunctionProto) *Head {
        return @ptrCast(@alignCast(fp));
    }
};

pub const SQOpcode = enum(u8) {
    line,
    load,
    loadcopy,
    loadint,
    loadfloat,
    dload,
    tailcall,
    call,
    prepcall,
    prepcallk,
    getk,
    move,
    newslot,
    delete,
    set,
    get,
    eq,
    ne,
    arith,
    bitw,
    @"return",
    loadnulls,
    loadroottable,
    loadbool,
    dmove,
    jmp,
    jnz,
    jz,
    loadfreevar,
    vargc,
    getvargv,
    newtable,
    newarray,
    appendarray,
    getparent,
    compound_arith,
    compound_arith_local,
    increment_prefix,
    increment_prefix_local,
    increment_prefix_structfield,
    increment_postfix,
    increment_postfix_local,
    increment_postfix_structfield,
    cmp,
    exists,
    instanceof,
    neg,
    not,
    bwnot,
    closure,
    foreach,
    foreach_staticarray_start,
    foreach_staticarray_next,
    foreach_staticarray_nestedstruct_start,
    foreach_staticarray_nestedstruct_next,
    delegate,
    clone,
    typeof,
    pushtrap,
    poptrag,
    throw,
    class,
    newslota,
    eq_literal,
    ne_literal,
    foreach_setup,
    assert_failed,
    add,
    sub,
    mul,
    div,
    mod,
    prepcallk_call,
    prepcallk_move_call,
    prepcallk_loadint_call,
    cmp_jz,
    increment_local_discard_jmp,
    jz_return,
    jz_loadbool_return,
    newvector,
    zerovector,
    get_vector_component,
    set_vector_component,
    vector_component_minuseq,
    vector_component_pluseq,
    vector_component_muleq,
    vector_component_diveq,
    vector_normalize,
    vector_normalize_in_place,
    vector_dot_product,
    vector_dot_product2d,
    vector_cross_product,
    vector_cross_product2d,
    vector_length,
    vector_lengthsqr,
    vector_length2d,
    vector_length2dsqr,
    vector_distance,
    vector_distancesqr,
    vector_distance2d,
    vector_distance2dsqr,
    increment_local_discard,
    fastcall,
    fastcall_native,
    fastcall_native_argtypecheck,
    fastcall_env,
    fastcall_native_env,
    fastcall_native_env_argtypecheck,
    loadglobalarray,
    getglobal,
    setglobal,
    compound_arith_global,
    getstructfield,
    setstructfield,
    compound_arith_structfield,
    newstruct,
    getsubstruct,
    getsubstruct_dynamic,
    typecast,
    typecheck,
    typecheck_ornull,
    typecheck_notnull,
    check_entity_class,
    @"unreachable",
    array_resize,

    test {
        try std.testing.expect(@intFromEnum(SQOpcode.array_resize) == 0x7c);
    }
};

const sq = @import("../squirrel.zig");
const std = @import("std");
const abi = @import("../abi.zig");
