const std = @import("std");

pub fn main() void {
    const maximum: u16 = 20;
    var points: u16 = 10;

    std.debug.print("start: {d}\n", .{points});
    points += 5;
    std.debug.print("after adding: {d}\n", .{points});
    points -= 2;
    std.debug.print("after subtracting: {d}\n", .{points});

    const reached: bool = points >= maximum;
    const remaining = maximum - points;
    std.debug.print("maximum reached: {}\n", .{reached});
    std.debug.print("still needed: {d}\n", .{remaining});

    const temperature: f32 = 18.5;
    const difference: i16 = -3;
    const letter: u8 = 'z';
    const message = "const does not change";

    std.debug.print("temperature: {d}\n", .{temperature});
    std.debug.print("difference: {d}\n", .{difference});
    std.debug.print("letter: {c}, byte: {d}\n", .{ letter, letter });
    std.debug.print("{s}\n", .{message});
}
