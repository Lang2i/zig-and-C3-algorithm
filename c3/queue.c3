// 导入C3语言标准库
// Import C3 standard library
import std;

// 定义队列最大容量为5
// Define maximum queue capacity as 5
const MAX = 5;

// 定义整型数组队列，长度为MAX
// Define integer array queue with length MAX
// 【死队列 Dead Queue】：空间无法复用，队尾满后无法再添加元素
// 【Dead Queue】: Space cannot be reused, no more elements can be added after rear is full
int[MAX] queue;

// 队头指针，初始值为0
// Front pointer, initial value is 0
int front = 0;

// 队尾指针，初始值为0
// Rear pointer, initial value is 0
int rear = 0;

// 入队函数：向队列尾部添加元素
// Enqueue function: Add element to the tail of the queue
fn void enqueue(int val)
{
	// 判断队列是否已满
	// Check if the queue is full
	if(rear >= MAX)
	{
		// 打印队列满提示信息
		// Print queue full message
		io::printn("队列满了 -- Queue is full");
		return;
	}
	// 将元素存入队尾位置，然后队尾指针后移
	// Store the element at the tail position, then move the rear pointer backward
	queue[rear++] = val;
}

// 出队函数：从队列头部删除元素
// Dequeue function: Remove element from the head of the queue
fn void dequeue()
{
	// 判断队列是否为空
	// Check if the queue is empty
	if(front == rear)
	{
		// 打印队列为空提示信息
		// Print queue empty message
		io::printn("队列是空的 -- Queue is empty");
	}
	// 队头指针后移，实现出队逻辑
	// Move front pointer backward to implement dequeue logic
	queue[front++];
}

// 打印队列中所有有效元素
// Print all valid elements in the queue
fn void printQueue()
{
	// 从队头遍历到队尾，输出每个元素
	// Traverse from front to rear and output each element
	for(int i = front;i<rear;i++)
	{
		io::printf("%d  ",queue[i]);
	}
	// 换行，使输出更整洁
	// Print new line for cleaner output
	io::printn("");
}

// 主函数：程序入口，用于测试队列功能
// Main function: Program entry point for testing queue functions
fn void main()
{
	// 初始化队列数组，将所有元素赋值为0
	// Initialize queue array and set all elements to 0
	for(int i=0;i<MAX;i++)
	{
		queue[i] = 0;
	}
	
	// 入队元素10、20、30
	// Enqueue elements 10, 20, 30
    enqueue(10);
    enqueue(20);
    enqueue(30);

    // 打印当前队列
    // Print current queue
    printQueue();

    // 继续入队元素40、50
	// Continue enqueuing elements 40, 50
    enqueue(40);
    enqueue(50);
    // 尝试入队元素60（队列已满）
	// Try enqueuing element 60 (Queue is full)
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