const std = @import("std");

pub fn main() void {
    const language = "zig";

    std.debug.print("hello, {s}!\n", .{language});
    std.debug.print("first program\n", .{});
}
