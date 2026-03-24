// 导入标准库的打印函数
const print = @import("std").debug.print;

// 定义主函数（Zig 要求 main 函数有明确的返回值声明）
pub fn main() void {
    // 打印 Hello World，末尾加换行符 \n 让输出更整洁
    print("Hello World\n", .{});
}