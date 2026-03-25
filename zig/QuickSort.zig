// 导入Zig标准库
// Import Zig standard library
const std = @import("std");

// 引入打印函数
// Import print function for output
const print = @import("std").debug.print;

// 导入C语言标准库（用于scanf输入）
// Import C standard library (for scanf input)
const c = @cImport({
    @cInclude("stdio.h");
});

// 定义全局数组，存储待排序数据，长度101
// Define global array to store data to be sorted, length 101
var a: [101]u32 = undefined;

// 存储实际输入的数据个数
// Store the count of input data
var n: u32 = 0;

// 快速排序函数：left=左边界，right=右边界
// QuickSort function: left = left boundary, right = right boundary
pub fn QuickSort(left: u32, right: u32) void {
    // 定义循环变量、临时交换变量、基准数
    // Declare loop variables, swap temp, pivot value
    var i: u32 = 0;
    var j: u32 = 0;
    var t: u32 = 0;
    var temp: u32 = 0;

    // 递归终止条件：左边界超过右边界，直接返回
    // Recursion termination condition: return if left > right
    if (left > right) return;

    // 选取最左边的数作为基准数
    // Select the leftmost number as the pivot
    temp = a[left];
    i = left; // i从左向右扫描
    j = right; // j从右向左扫描

    // i和j未相遇时循环
    // Loop while i and j have not met
    while (i != j) {
        // 从右往左找：小于基准数的数
        // Search from right to left: find number < pivot
        while (a[j] >= temp and i < j) {
            j = j - 1;
        }

        // 从左往右找：大于基准数的数
        // Search from left to right: find number > pivot
        while (a[i] <= temp and i < j) {
            i = i + 1;
        }

        // i<j说明找到可交换的两个数
        // Swap if i<j (found valid pairs to swap)
        if (i < j) {
            t = a[i];
            a[i] = a[j];
            a[j] = t;
        }
    }

    // 基准数归位：将基准数放到正确位置
    // Place pivot to its correct position
    a[left] = a[i];
    a[i] = temp;

    // 递归排序基准数左侧
    // Recursively sort left part of pivot
    QuickSort(left, i - 1);

    // 递归排序基准数右侧
    // Recursively sort right part of pivot
    QuickSort(i + 1, right);
}

// 主函数：程序入口
// Main function: program entry point
pub fn main() void {
    // 输入数据个数n
    // Input the count of numbers: n
    _ = c.scanf("%d", &n);

    // 循环输入n个数字存入数组a
    // Loop to input n numbers into array a
    for (1..n + 1) |i| {
        _ = c.scanf("%d", &a[i]);
    }

    // 调用快速排序
    // Call quick sort function
    QuickSort(1, n);

    // 输出排序后的数组
    // Print sorted array
    for (1..n + 1) |i| {
        print("{}  ", .{a[i]});
    }

    // 暂停程序，防止窗口闪退
    // Pause program to prevent window from closing instantly
    _ = c.getchar();
    _ = c.getchar();
}
