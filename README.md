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
your_root_module.addImport("zzplug", zzplug.module("zzplug"));
```

Now you can use zzplug with `@import("zzplug")`.

## Usage

```zig
const my_plugin: zzplug.Plugin(
    // this is the identity configuration
    .{
        .name = "my_plugin",
        .log_name = "my_plugin",
        .dependency_name = "MY_PLUGIN",
        .context = .{ .client = true, .dedicated = true },
    },

    // northstar callbacks
    .{
        .init = init,
    },

    // define any additional interfaces your plugin exposes here as a static string map
    // unless other plugins depend on this plugin, this can be left empty.
    .{},
) = .{};

comptime {
    my_plugin.embed();
}

fn init(_: *const Ins, _: std.os.windows.HMODULE, _: *const InitData, _: bool) callconv(.c) void {
    zzplug.modules.northstar.?.log(.info, "Hello World");
}
```

const zzplug = @import("zzplug");
const std = @import("std");
const Ins = zzplug.interfaces.PluginCallbacks.Instance;
const InitData = zzplug.interfaces.PluginCallbacks.InitData;
```

## Docs

Build docs with `zig build docs`.

Examples can be ran with `zig build example.<name>`, e.g. `zig build example.hello_world`.
