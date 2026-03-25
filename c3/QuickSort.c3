// 导入C3标准库
// Import C3 standard library
import std;

// 声明外部C语言scanf输入函数
// Declare external C scanf input function
extern fn int scanf(char*, ...);

// 声明外部C语言getchar函数
// Declare external C getchar function
extern fn int getchar();

// 定义全局数组a，大小101
// Define global array a with size 101
int[101] a;

// 定义全局变量n，存储数据个数
// Define global variable n to store number count
int n = 0;

// 快速排序函数
// Quick Sort function
fn void quickSort(int left,int right)
{
	// 定义局部变量
	// Declare local variables
	int i = 0;
	int j = 0;
	int t = 0;
	int temp = 0;

	// 递归终止条件
	// Recursion termination condition
	if(left>right)return;

	// 设置基准数为左边界元素
	// Set pivot as the left boundary element
	temp = a[left];
	i = left;
	j = right;
	
	// 当i和j不相遇时循环
	// Loop while i and j have not met
	while(i != j)
	{
		// 从右向左找小于基准的数
		// Find element smaller than pivot from right to left
		while(a[j]>=temp && i<j)
		{
			j--;
		}

		// 从左向右找大于基准的数
		// Find element larger than pivot from left to right
		while(a[i]<=temp && i<j)
		{
			i++;
		}

		// 交换i和j位置的元素
		// Swap elements at i and j
		if(i<j)
		{
			t = a[i];
			a[i] = a[j];
			a[j] = t;
		}
	}

	// 基准数归位
	// Place pivot to correct position
	a[left] = a[i];
	a[i] = temp;

	// 递归排序左区间
	// Recursively sort left part
	quickSort(left,i-1);

	// 递归排序右区间
	// Recursively sort right part
	quickSort(i+1,right);
}

// 主函数：程序入口
// Main function: program entry point
fn void main()
{
	// 初始化数组全部为0
	// Initialize array to all 0s
	for(int i = 0;i<=100;i++)
	{
		a[i] = 0;
	}

	// 输入数据个数n
	// Input number count n
	scanf("%d",&n);

	// 输入n个数字到数组
	// Input n numbers into array
	for(int i = 1;i<=n;i++)
	{
		scanf("%d",&a[i]);
	}

	// 调用快速排序
	// Call quick sort
	quickSort(1,n);

	// 输出排序结果
	// Print sorted result
	for(int i = 1;i<=n;i++)
	{
		io::printf("%d ",a[i]);
	}

	// 暂停程序
	// Pause program
	getchar();
	getchar();
}