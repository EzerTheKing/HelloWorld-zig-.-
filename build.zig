const std = @import("std");
const BlD = std.Build;

pub fn build(b: *BlD) void {
    const exe = b.addExecutable(.{
        .name = "HelloZig",
        .root_source_file = b.path("src/HelloBro.zig"),
        .target = b.graph.host,
    });

    b.installArtifact(exe);
}
