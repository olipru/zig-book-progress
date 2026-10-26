const std = @import("std");

pub fn main() void {
    const numbers = [_]u32{ 4, 7, 2, 9, 6 };
    var total: u32 = 0;
    var highest: u32 = 0;

    for (numbers, 0..) |number, index| {
        total += number;
        if (number > highest) {
            highest = number;
        }
        std.debug.print("index {d}: {d}\n", .{ index, number });
    }

    std.debug.print("sum: {d}, highest: {d}\n", .{ total, highest });

    for (numbers) |number| {
        if (number % 2 != 0) {
            continue;
        }
        std.debug.print("even: {d}\n", .{number});
    }

    var counter: u32 = 1;
    while (counter <= 5) : (counter += 1) {
        std.debug.print("{d} x 3 = {d}\n", .{ counter, counter * 3 });
    }

    var found = false;
    for (numbers) |number| {
        if (number == 9) {
            found = true;
            break;
        }
    }
    std.debug.print("found 9: {}\n", .{found});
}
