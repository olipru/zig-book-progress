const std = @import("std");

pub fn main() void {
    var numbers = [_]u8{ 3, 6, 9, 12, 15 };

    std.debug.print("length: {d}\n", .{numbers.len});
    std.debug.print("first: {d}\n", .{numbers[0]});
    std.debug.print("last: {d}\n", .{numbers[numbers.len - 1]});

    numbers[0] = 4;
    numbers[2] += 1;
    std.debug.print("updated: {d}, {d}\n", .{ numbers[0], numbers[2] });

    // The end index of a slice is excluded.
    const middle: []const u8 = numbers[1..4];
    std.debug.print("slice length: {d}\n", .{middle.len});
    std.debug.print("slice: {d}, {d}, {d}\n", .{ middle[0], middle[1], middle[2] });

    const text = "hello zig";
    const first_word = text[0..5];
    const second_word = text[6..];

    std.debug.print("text length: {d}\n", .{text.len});
    std.debug.print("first word: {s}\n", .{first_word});
    std.debug.print("second word: {s}\n", .{second_word});
}
