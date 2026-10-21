const std = @import("std");

pub fn main() void {
    // Keep amounts in cents to avoid floating-point rounding.
    const price: u32 = 125;
    const quantity: u32 = 4;
    const paid: u32 = 1000;

    const subtotal = price * quantity;
    const discount = subtotal / 10;
    const total = subtotal - discount;
    const change = paid - total;

    std.debug.print("subtotal: {d} cents\n", .{subtotal});
    std.debug.print("discount: {d} cents\n", .{discount});
    std.debug.print("total: {d} cents\n", .{total});
    std.debug.print("change: {d} cents\n", .{change});
    std.debug.print("paid enough: {}\n", .{paid >= total});

    const minutes: u32 = 95;
    const hours = minutes / 60;
    const remainder = minutes % 60;

    std.debug.print("{d} minutes = {d} hours and {d} minutes\n", .{ minutes, hours, remainder });
}
