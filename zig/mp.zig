//冒泡排序
const std = @import("std");
const print = @import("std").debug.print;
const c = @cImport({
    @cInclude("stdio.h");
});

pub fn main() void {
    var a: [100]u32 = undefined;
    var n: u32 = 0;
    var t: u32 = 0;

    _ = c.scanf("%u", &n);
    for (1..n + 1) |i| {
        _ = c.scanf("%u", &a[i]);
    }
    for (0..n - 1) |i| {
        for (1..n - i) |j| {
            if (a[j] < a[j + 1]) {
                t = a[j];
                a[j] = a[j + 1];
                a[j + 1] = t;
            }
        }
    }
    for (1..n + 1) |i| {
        print("{}  ", .{a[i]});
    }
}
