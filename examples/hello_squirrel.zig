fn init(_: *const PluginCallbacks.Instance, _: HMODULE, _: *const PluginCallbacks.InitData, _: bool) callconv(.C) void {}

fn onSqvmCreated(_: *const PluginCallbacks.Instance, c_sqvm: *sq.C_SQVM) callconv(.c) void {
    zzplug.modules.northstar.logFmt(.info, "created vm {}", .{c_sqvm.context});

    // onSqvmCreated is called for every SQVM, regardless of origin
    // to differentiate between Virtual Machines use sqvm.context
    switch (c_sqvm.context) {
        .server => {
            // register script functions only for the SERVER vm here ...
        },
        .client => {},
        .ui => {},
    }
    const script_increment: sq.SQFunctionRegistration = .{
        .sq_name = "Increment", // Name of this function inside the sqvm
        .raw_return_type = "int", // Return type of this function. This is Squirrel syntax.
        .signature = "int n", // Parameters of this function. This is Squirrel syntax. Two parameters would be: `int a, float b` etc.
        .implementation = scriptIncrement,
    };

    // try this in the MP Lobby: `script print(Increment(1))`. Needs sv_cheats enabled.
    // or in the main menu: `script_ui print(Increment(1))`
    c_sqvm.bindNativeScriptClosure(&script_increment);
}

fn scriptIncrement(sqvm: *sq.SQVM, _: *anyopaque, _: *anyopaque, _: *anyopaque) callconv(.c) sq.SQResult {
    const n = sqvm.getArgument(1);

    // Always check if the type of every argument passed is correct!
    if (n.type != .integer) {
        zzplug.modules.northstar.logFmt(.err, "Argument 1 is not an integer. {}", .{n});
        return .@"error";
    }

    sqvm.push_integer(n.value(.integer) + 1);
    return .not_null;
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
