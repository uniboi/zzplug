const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.resolveTargetQuery(.{
        .cpu_arch = .x86_64,
        .cpu_model = .baseline,
        .os_tag = .windows,
    });
    const optimize = b.standardOptimizeOption(.{});

    const zzplug = b.addModule("zzplug", .{ .root_source_file = b.path("./src/zzplug.zig") });

    const lib_unit_tests = b.addTest(.{
        .root_source_file = b.path("src/zzplug.zig"),
        .target = target,
        .optimize = optimize,
    });
    const build_tests = b.addInstallArtifact(lib_unit_tests, .{});
    const build_tests_step = b.step("build-tests", "Build unit tests");
    build_tests_step.dependOn(&build_tests.step);

    const run_lib_unit_tests = b.addRunArtifact(lib_unit_tests);
    const test_step = b.step("test", "Run unit tests");
    test_step.dependOn(&run_lib_unit_tests.step);

    addDocs(b, target, optimize);

    addExample(b, "hello_world", "log hello world when the plugin is loaded", zzplug, target, optimize);
    addExample(b, "hello_squirrel", "register a squirrel function for all SQVMs", zzplug, target, optimize);
    addExample(b, "print_sequence", "register a sqvm function to print the current playing animation of an entity", zzplug, target, optimize);
}

fn addDocs(
    b: *std.Build,
    target: std.Build.ResolvedTarget,
    optimize: std.builtin.OptimizeMode,
) void {
    const shared_lib = b.addSharedLibrary(.{
        .name = "zzplug",
        .root_source_file = b.path("src/zzplug.zig"),
        .target = target,
        .optimize = optimize,
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
    optimize: std.builtin.OptimizeMode,
) void {
    const example = b.addSharedLibrary(.{
        .name = name ++ "_example",
        .root_source_file = b.path("examples/" ++ name ++ ".zig"),
        .target = target,
        .optimize = optimize,
    });
    example.root_module.addImport("zzplug", zzplug);

    const build_example = b.addInstallArtifact(example, .{});
    const build_example_step = b.step("example." ++ name, description);
    build_example_step.dependOn(&build_example.step);
}
