// 导入Zig标准库
// Import Zig standard library
const std = @import("std");
// 引入调试打印函数
// Import debug print function
const print = @import("std").debug.print;

// 定义队列最大容量为5
// Define maximum queue capacity as 5
const MAX = 5;

// 定义队列数组，使用MAX指定长度
// Define queue array with length specified by MAX
// 【死队列 Dead Queue】：空间无法复用，队尾满后无法再添加元素
// 【Dead Queue】: Space cannot be reused, no more elements can be added after rear is full
var queue: [MAX]u32 = undefined;

// 队头指针，初始为0
// Front pointer, initial value is 0
var front: u32 = 0;

// 队尾指针，初始为0
// Rear pointer, initial value is 0
var rear: u32 = 0;

// 入队函数：向队列尾部添加元素
// Enqueue function: Add element to the tail of the queue
pub fn enqueue(val: u32) void {
    // 判断队尾是否到达最大容量，即队列已满
    // Check if rear reaches maximum capacity, meaning queue is full
    if (rear >= MAX) {
        // 打印队列满提示信息
        // Print queue full prompt
        print("队列满了 -- Queue is full\n", .{});
        return;
    }
    // 将元素存入当前队尾位置
    // Store element into current rear position
    queue[rear] = val;
    // 队尾指针向后移动一位
    // Move rear pointer backward by one position
    rear = rear + 1;
}

// 出队函数：从队列头部删除元素
// Dequeue function: Remove element from the head of the queue
pub fn dequeue() void {
    // 判断队头与队尾是否相等，即队列为空
    // Check if front equals rear, meaning queue is empty
    if (front == rear) {
        // 打印队列为空提示信息
        // Print queue empty prompt
        print("队列是空的 -- Queue is empty", .{});
    }
    front = front + 1;
}

// 打印队列中所有有效元素
// Print all valid elements in the queue
pub fn printQueue() void {
    // 打印队列标题
    // Print queue title
    print("当前队列 -- Current Queue:", .{});
    // 从队头遍历到队尾，输出每个元素
    // Traverse from front to rear and output each element
    for (front..rear) |i| {
        print("{}   ", .{queue[i]});
    }
    // 换行，使输出更整洁
    // Print new line for cleaner output
    print("\n", .{});
}

// 主函数：程序入口，用于测试队列功能
// Main function: Program entry point for testing queue functions
pub fn main() void {
    // 依次入队三个元素
    // Enqueue three elements in sequence

    enqueue(10);
    enqueue(20);
    enqueue(30);

    // 打印当前队列
    // Print current queue
    printQueue();

    // 继续入队元素，直到队列满
    // Keep enqueuing elements until queue is full
    enqueue(40);
    enqueue(50);
    enqueue(60);
    // 打印已满的队列
    // Print full queue
    printQueue();

    // 执行一次出队操作
    // Perform one dequeue operation
    dequeue();
    // 尝试入队新元素（死队列无法加入）
    // Try to enqueue new element (Dead queue cannot add)
    enqueue(70);
    // 打印最终队列
    // Print final queue
    printQueue();
}
