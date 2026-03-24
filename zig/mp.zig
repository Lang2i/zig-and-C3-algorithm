// 冒泡排序 (Bubble Sort)
// 从大到小降序排列 / Sort in descending order
const std = @import("std");     // 引入Zig标准库 / Import Zig standard library
const print = @import("std").debug.print;  // 绑定打印函数 / Bind debug print function
const c = @cImport({           // 导入C语言标准库 / Import C standard library
    @cInclude("stdio.h");      // 包含C的输入输出头文件 / Include C stdio.h for input
});

// 主函数 / Main function
pub fn main() void {
    var a: [100]u32 = undefined;  // 定义最多存储100个无符号整数的数组 / Array for up to 100 unsigned integers
    var n: u32 = 0;               // 实际要排序的数字个数 / Number of elements to sort
    var t: u32 = 0;               // 交换时使用的临时变量 / Temporary variable for swapping

    // 输入元素个数 / Input the count of numbers
    _ = c.scanf("%u", &n);
    // 循环输入n个数字存入数组 / Loop to input n numbers into the array
    for (1..n + 1) |i| {
        _ = c.scanf("%u", &a[i]);
    }

    // ======================
    // 冒泡排序核心逻辑（降序）
    // Bubble Sort Core (Descending Order)
    // ======================
    // 外层循环：控制排序轮数 / Outer loop: control sorting rounds
    for (0..n - 1) |i| {
        // 内层循环：两两比较并交换 / Inner loop: compare and swap adjacent elements
        for (1..n - i) |j| {
            // 如果当前元素 < 下一个元素，则交换（实现从大到小）
            // Swap if current < next (to make it descending)
            if (a[j] < a[j + 1]) {
                t = a[j];
                a[j] = a[j + 1];
                a[j + 1] = t;
            }
        }
    }

    // 输出排序后的结果 / Print sorted result
    for (1..n + 1) |i| {
        print("{}  ", .{a[i]});
    }
}
