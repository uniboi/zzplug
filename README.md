# zzplug

A small library implementing the plumbing required for [Northstar](https://northstar.tf) plugins.

For Rust plugins and an engine interface, check out [rrplug](https://github.com/r2northstartools/rrplug).

## Installation

First, download the package:

```
$ zig fetch --save git+https://github.com/uniboi/zzplug
```

then add zzplug as an import in your `build.zig`

```zig
const zzplug = b.dependency("zzplug", .{ .target = target, .optimize = optimize });
your_root_module.addImport("zzplug", zzplug.module());
```

Now you can use zzplug with `@import("zzplug")`.

## Usage

1. Create a configured plugin instance

    ```zig
    const zzplug = @import("zzplug");
    
    const my_plugin: zzplug.Plugin(
        // this is the plugin configuration object
        // customize general info here
        .{
            .name = "my_plugin",
            .log_name = "my_plugin",
            .dependency_name = "MY_PLUGIN",
            .context = .{ .client = true, .dedicated = true },
        },

        // northstar callbacks are defined here.
        // optional callbacks can be omitted and will be stubbed out.
        .{
            .init = init,
        },

        // define any additional interfaces your plugin exposes here as a static string map
        // unless other plugins depend on this plugin, this can be left empty.
        .{},
    ) = .{};
    ```

2. Define the plugin `init` callback

    ```zig
    const PluginCallbacks = zzplug.interfaces.PluginCallbacks;
    const InterfaceStatus = zzplug.interfaces.InterfaceStatus;
    const NsSys = zzplug.interfaces.NsSys;

    fn init(_: *const PluginCallbacks.Instance, ns_module: HMODULE, init_data: *const PluginCallbacks.InitData, reloaded: bool) callconv(.C) void {
        _ = reloaded;

        // interfaces can be instantiated with the `CreateInterface` function exported by most modules loaded by the game.
        // here, the `CreateInterface` function from Northstar is acquired
        const ns_create_interface = @as(*fn (name: [*:0]const u8, ?*InterfaceStatus) callconv(.C) *anyopaque, @ptrCast(std.os.windows.kernel32.GetProcAddress(ns_module, "CreateInterface")));
        const sys: *const NsSys = @alignCast(@ptrCast(ns_create_interface("NSSys001", null)));

        sys.vftable.log(sys, init_data.handle, .info, "Hello World!");
    }
    ```

3. Initialize your plugin

    Your Plugin must expose it's own `CreateInterface` function as well. zzplug can do this automatically for you:

    ```
    comptime {
        my_plugin.embed();
    }
    ```

## Examples

Examples can be ran with `zig build example.<name>`, e.g. `zig build example.hello_world`.
