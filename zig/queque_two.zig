// 导入Zig标准库
// Import Zig standard library
const std = @import("std");
// 引入调试打印函数
// Import debug print function
const print = std.debug.print;

// 定义队列最大容量
// Define maximum capacity of the queue
const MAX = 5;

// 循环队列数组，用于存储队列元素
// Circular queue array, used to store queue elements
var queue: [MAX]u32 = undefined;

// 队头指针：指向队列第一个有效元素
// Front pointer: points to the first valid element in the queue
var front: u32 = 0;

// 队尾指针：指向队尾元素的下一个空位
// Rear pointer: points to the next empty position after the last element
var rear: u32 = 0;

// 入队函数：向队列尾部添加元素
// Enqueue function: add an element to the end of the queue
pub fn enqueue(val: u32) void {
    // 判断队列是否已满
    // Check if the queue is full
    if ((rear + 1) % MAX == front) {
        print("队列满了 -- Queue is full\n", .{});
        return;
    }

    // 将元素存入队尾位置
    // Store the element at the rear position
    queue[rear] = val;
    // 队尾指针向后移动一位，到达数组末尾时循环回到开头
    // Move rear pointer forward by one; loop back to the start when reaching the end
    rear = (rear + 1) % MAX;
}

// 出队函数：从队列头部删除元素
// Dequeue function: remove an element from the front of the queue
pub fn dequeue() void {
    // 判断队列是否为空
    // Check if the queue is empty
    if (front == rear) {
        print("队列是空的 -- Queue is empty\n", .{});
        return;
    }

    // 队头指针向后移动一位，到达数组末尾时循环回到开头
    // Move front pointer forward by one; loop back to the start when reaching the end
    front = (front + 1) % MAX;
}

// 打印队列中所有有效元素
// Print all valid elements in the queue
pub fn printQueue() void {
    print("当前队列 -- Current Queue: ", .{});

    // 从队头开始遍历到队尾
    // Traverse elements from front to rear
    var i: u32 = front;
    while (i != rear) {
        print("{} ", .{queue[i]});
        i = (i + 1) % MAX;
    }

    print("\n", .{});
}

// 主函数：测试循环队列功能
// Main function: test the functionality of the circular queue
pub fn main() void {
    // 入队元素
    // Enqueue elements
    enqueue(10);
    enqueue(20);
    enqueue(30);
    printQueue();

    // 继续入队元素
    // Continue enqueuing elements
    enqueue(40);
    enqueue(50);
    printQueue();

    // 出队操作
    // Perform dequeue operation
    dequeue();

    // 入队新元素，循环队列可复用空闲空间
    // Enqueue new element; circular queue can reuse free space
    enqueue(70);
    printQueue();
}
