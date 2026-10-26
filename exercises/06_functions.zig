const std = @import("std");

fn add(a: i32, b: i32) i32 {
    return a + b;
}

fn max(a: i32, b: i32) i32 {
    if (a > b) {
        return a;
    }
    return b;
}

fn is_even(number: u32) bool {
    return number % 2 == 0;
}

fn sum(numbers: []const u32) u32 {
    var total: u32 = 0;
    for (numbers) |number| {
        total += number;
    }
    return total;
}

pub fn main() void {
    std.debug.print("4 + 7 = {d}\n", .{add(4, 7)});
    std.debug.print("-3 + 8 = {d}\n", .{add(-3, 8)});
    std.debug.print("max of 12 and 7: {d}\n", .{max(12, 7)});
    std.debug.print("max of 3 and 9: {d}\n", .{max(3, 9)});

    const numbers = [_]u32{ 4, 7, 2, 9, 6 };
    std.debug.print("array sum: {d}\n", .{sum(&numbers)});
    std.debug.print("sum of the first three: {d}\n", .{sum(numbers[0..3])});

    for (numbers) |number| {
        std.debug.print("{d} is even: {}\n", .{ number, is_even(number) });
    }
}
