// 桶排序 (Bucket Sort)
// Bucket Sort
import std;

// 声明C语言的scanf输入函数 / Declare C's scanf input function
extern fn int scanf(char*, ...);

fn void main()
{
    int[11] a;  // 定义桶数组：下标0~10，共11个桶 / Bucket array (0~10)
    int i,j,t;  // 循环变量 + 临时输入变量 / Loop & temp variables

    // 初始化：把所有桶的计数清零 / Initialize all buckets to 0
    for(i=0;i<=10;i++)
    {
        a[i] = 0;
    }

    // 输入5个数字，统计每个数字出现的次数
    // Input 5 numbers, count occurrences for each number
    for(i=1;i<=5;i++)
    {
        scanf("%d",&t);   // 读取输入的数字 / Read input number
        a[t]++;           // 对应数字的桶计数+1 / Increment bucket count
    }

    // 从大到小输出排序结果（降序桶排序）
    // Output result from large to small (descending order)
    for(i=10;i>0;i--)
    {
        // 当前桶有几个数字，就输出几次
        // Print number as many times as it appears
        for(j=1;j<=a[i];j++)
        {
            io::print(i);
        }
    }
}
