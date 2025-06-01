fn init(_: *const PluginCallbacks.Instance, _: HMODULE, _: *const PluginCallbacks.InitData, _: bool) callconv(.C) void {}

fn onSqvmCreated(_: *const PluginCallbacks.Instance, c_sqvm: *sq.C_SQVM) callconv(.c) void {
    // onSqvmCreated is called for every SQVM, regardless of origin
    // to differentiate between Virtual Machines use c_sqvm.context
    switch (c_sqvm.context) {
        .server => {
            // only register this function for the SERVER vm

            const script_print_current_sequence: sq.SQFunctionRegistration = .{
                .sq_name = "PrintCurrentSequence", // Name of this function inside the sqvm
                .raw_return_type = "void", // Return type of this function. This is Squirrel syntax.
                .signature = "entity", // Parameters of this function. This is Squirrel syntax. Two parameters would be: `int a, float b` etc.
                .implementation = scriptPrintCurrentSequence,
            };

            c_sqvm.bindNativeScriptClosure(&script_print_current_sequence);
        },
        .client, .ui => {},
    }
}

/// void PrintCurrentSequence(entity)
fn scriptPrintCurrentSequence(sqvm: *sq.SQVM, _: *anyopaque, _3: *anyopaque, _4: *anyopaque) callconv(.c) sq.SQResult {
    const e = sqvm.getArgument(1);

    // Always check if the type of every argument passed is correct!
    if (e.type != .entity_instance) {
        return server.sq_throwerror(sqvm, "Argument 1 is not an entity");
    }

    const entity: ?*Server.types.CBaseAnimatingOverlay = @ptrCast(server.sq_getentityfrominstance(sqvm, e, server.entity_type));
    if (entity == null) {
        return server.sq_throwerror(sqvm, "Argument 1 is not a valid entity instance");
    }

    const sequence_idx = entity.?.CBaseAnimating.m_animSequence;
    const sequence_name = server.GetSequenceName(@ptrCast(entity), sequence_idx, _3, _4);
    ns.logFmt(.info, "sequence ({d}) \"{?s}\"", .{ sequence_idx, sequence_name });

    return .null;
}

const hello_world: zzplug.Plugin(
    .{
        .name = "zzplug_example",
        .log_name = "zzexample", // All NS log prefixes are 9 chars long. Plugins are free to choose any length but I usually use 9 to line the logs up
        .log_color = .{ .red = 224, .green = 187, .blue = 228 },
        .dependency_name = "ZZPLUG_EXAMPLE",
        .context = .always,
    },
    .{
        .init = init,
        .on_sqvm_created = onSqvmCreated,
    },
    .initComptime(.{}),
) = .{};

comptime {
    hello_world.embed();
}

const std = @import("std");
const HMODULE = std.os.windows.HMODULE;

const zzplug = @import("zzplug");
const sq = zzplug.squirrel;

const PluginCallbacks = zzplug.interfaces.PluginCallbacks;
const InterfaceStatus = zzplug.interfaces.InterfaceStatus;

const ns = &zzplug.modules.northstar;
const server = &zzplug.modules.server;
const Server = zzplug.modules.Server;
