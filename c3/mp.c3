// 冒泡排序（降序）
// Bubble Sort (Descending Order)
import std;

// 导入 C 语言输入函数
// Import C scanf function for input
extern fn int scanf(char*, ...);

fn void main()
{
	int[100] a;  // 定义数组，最多存储100个整数
	            // Define array, max 100 integers
	int i,j,t,n; // 循环变量 + 临时变量 + 元素个数
	            // Loop variables + temp variable + element count

	// 输入要排序的数字个数 n
	// Input the number of elements to sort: n
	scanf("%d",&n);
	
	// 循环输入 n 个数字存入数组
	// Loop to input n numbers into the array
	for(i=1;i<=n;i++)
	{
		scanf("%d",&a[i]);
	}
	
	// ======================
	// 冒泡排序核心逻辑（降序）
	// Bubble Sort Core (Descending)
	// ======================
	// 外层循环：控制排序轮数
	// Outer loop: control sorting rounds
	for(i=1;i<=n-1;i++)
	{
		// 内层循环：两两比较并交换
		// Inner loop: compare and swap adjacent elements
		for(j=1;j<=n-1;j++)
		{
			// 如果前一个数 < 后一个数，则交换
			// Swap if previous < next (descending order)
			if(a[j] < a[j+1])
			{
				t = a[j];
				a[j] = a[j+1];
				a[j+1] = t;
			}
		}
	}
	
	// 输出排序后的结果
	// Print the sorted result
	for(i=1;i<=n;i++)
	{
		io::printf("%d  ",a[i]);
	}
}
