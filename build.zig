const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const zzplug = b.addModule("zzplug", .{ .root_source_file = b.path("./src/root.zig") });

    const lib_unit_tests = b.addTest(.{
        .root_source_file = b.path("src/root.zig"),
        .target = target,
        .optimize = optimize,
    });

    const run_lib_unit_tests = b.addRunArtifact(lib_unit_tests);
    const test_step = b.step("test", "Run unit tests");
    test_step.dependOn(&run_lib_unit_tests.step);

    addExample(b, "hello_world", "loghello world when the plugin is loaded", zzplug, target, optimize);
}

fn addExample(b: *std.Build, comptime name: []const u8, comptime description: []const u8, zzplug: *std.Build.Module, target: std.Build.ResolvedTarget, optimize: std.builtin.OptimizeMode) void {
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
