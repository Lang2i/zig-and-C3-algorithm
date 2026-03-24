// 桶排序
// Bucket Sort
const std = @import("std");
const print = std.debug.print;

// 导入C语言标准输入输出库
// Import C standard input/output library
const c = @cImport({
    @cInclude("stdio.h");
});

pub fn main() void {
    // 定义桶数组：范围 0~10，共11个桶
    // Define bucket array: range 0~10, total 11 buckets
    var a: [11]i32 = undefined;
    
    // 临时变量，用于接收输入的数字
    // Temporary variable for storing input number
    var t: i32 = 0;
    
    // 循环变量，控制输出次数
    // Loop variable to control output times
    var j: i32 = 1;

    // 初始化：将所有桶的计数清零
    // Initialize: set all bucket counts to 0
    for (0..10) |i| {
        a[i] = 0;
    }

    // 输入 5 个数字（0~10），统计每个数字出现次数
    // Input 5 numbers (0~10), count occurrences of each number
    for (0..5) |_| {
        c.scanf("%d", &t);
        a[@intCast(t)] = a[@intCast(t)] + 1;
    }

    // 从 10 到 1 遍历桶（降序输出）
    // Traverse buckets from 10 to 1 (descending output)
    var i: i32 = 10;
    
    // 输出桶排序结果
    // Print bucket sort result
    while (i > 0) : (i = i - 1) {
        j = 1;
        // 当前桶有几个数字，就输出几次
        // Print the number as many times as it appears in the bucket
        while (j <= a[@intCast(i)]) : (j += 1) {
            print("{}", .{i});
        }
    }

    // 等待输入，防止程序运行后立即退出
    // Wait for input to prevent console from closing immediately
    c.getchar();
}
