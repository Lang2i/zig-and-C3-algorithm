//桶排序
const std = @import("std");
const print = std.debug.print;

const c = @cImport({
    @cInclude("stdio.h");
});

pub fn main() void {
    var a: [11]i32 = undefined;
    var t: i32 = 0;
    var j: i32 = 1;

    // 清零数组
    for (0..10) |i| {
        a[i] = 0;
    }

    // 输入4个数字
    for (0..5) |_| {
        c.scanf("%d", &t);
        a[@intCast(t)] = a[@intCast(t)] + 1;
    }
    var i: i32 = 10;
    // 输出桶排序结果
    while (i > 0) : (i = i - 1) {
        j = 1;
        while (j <= a[@intCast(i)]) : (j += 1) {
            print("{}", .{i});
        }
    }
    c.getchar();
}
