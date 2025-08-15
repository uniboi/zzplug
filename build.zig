const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.resolveTargetQuery(.{
        .cpu_arch = .x86_64,
        .cpu_model = .baseline,
        .os_tag = .windows,
    });

    const zzplug = b.addModule("zzplug", .{
        .root_source_file = b.path("./src/zzplug.zig"),
        .target = target,
    });

    const lib_unit_tests = b.addTest(.{
        .root_module = zzplug,
    });

    const run_lib_unit_tests = b.addRunArtifact(lib_unit_tests);
    const test_step = b.step("test", "Run unit tests");
    test_step.dependOn(&run_lib_unit_tests.step);

    addDocs(b, zzplug);

    addExample(b, "hello_world", "log hello world when the plugin is loaded", zzplug, target);
    addExample(b, "hello_squirrel", "register a squirrel function for all SQVMs", zzplug, target);
    addExample(b, "print_sequence", "register a sqvm function to print the current playing animation of an entity", zzplug, target);
    addExample(b, "con_commands", "create a ConCommand named \"zzplug_hello_world\".", zzplug, target);
}

fn addDocs(
    b: *std.Build,
    root_module: *std.Build.Module,
) void {
    const shared_lib = b.addLibrary(.{
        .name = "zzplug",
        .root_module = root_module,
    });

    const docs_step = b.step("docs", "Emit documentation");
    const docs_install_dir = b.addInstallDirectory(.{
        .install_dir = .prefix,
        .install_subdir = "docs",
        .source_dir = shared_lib.getEmittedDocs(),
    });
    docs_step.dependOn(&docs_install_dir.step);
}

fn addExample(
    b: *std.Build,
    comptime name: []const u8,
    comptime description: []const u8,
    zzplug: *std.Build.Module,
    target: std.Build.ResolvedTarget,
) void {
    const example_module = b.addModule("example." ++ name, .{ .root_source_file = b.path("examples/" ++ name ++ ".zig"), .target = target });

    const example = b.addLibrary(.{
        .name = name ++ "_example",
        .root_module = example_module,
        .linkage = .dynamic,
    });
    example.root_module.addImport("zzplug", zzplug);

    const build_example = b.addInstallArtifact(example, .{});
    const build_example_step = b.step("example." ++ name, description);
    build_example_step.dependOn(&build_example.step);
}
