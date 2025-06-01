CSQVM_RegisterFunction: *const fn (*sq.C_SQVM, *const sq.SQFunctionRegistration, usize) callconv(.c) void,
GetActivityNameByIndex: *const fn (index: i16) [*:0]const u8,

sq_throwerror: *const fn (vm: *sq.SQVM, msg: [*:0]const sq.SQChar) callconv(.c) sq.SQResult,
sq_getentityfrominstance: *const fn (vm: *sq.SQVM, instance: *sq.SQObject, classtype: [*:0]const u8) callconv(.c) *types.CBaseEntity,

GetSequenceName: *const fn (*types.CBaseAnimating, i32, *anyopaque, *anyopaque) callconv(.c) ?[*:0]const u8,

g_ActivityStrings: *anyopaque,

/// used to verify an sq instance object is an entity
/// TODO: only CBaseEntity type is used?
entity_type: [*:0]const u8,

pub fn init(module: *Module) Server {
    return .{
        .CSQVM_RegisterFunction = @ptrCast(module.offset(0x1DD10)),
        .GetActivityNameByIndex = @ptrCast(module.offset(0x8d510)),

        // .sq_pushinteger = @ptrCast(module.offset(0x36a0)),
        .sq_throwerror = @ptrCast(module.offset(0x8440)),
        .sq_getentityfrominstance = @ptrCast(module.offset(0x1e920)),
        // .sq_getCBaseEntityClassType = @ptrCast(module.offset(0x418af0)),

        .GetSequenceName = @ptrCast(module.offset(0xb91c0)),

        .g_ActivityStrings = @ptrCast(module.offset(0xbcd408)),

        .entity_type = @ptrCast(module.offset(0x1128cc0)),
    };
}

pub const ActivityList = extern struct {
    activityIndex: i32,
    stringKey: i16,
    isPrivate: i16,

    test {
        abi.assertSize(@This(), 0x8);
    }
};

pub const CStringRegistry = opaque {};

const Server = @This();
const sq = @import("../squirrel.zig");
const abi = @import("../abi.zig");
const Module = abi.Module;
pub const types = @import("./types/server.zig");
