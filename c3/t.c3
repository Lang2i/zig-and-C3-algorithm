//桶排序
import std;
extern fn int scanf(char*, ...);
fn void main()
{
	int[11] a;
	int i,j,t;

	for(i=0;i<=10;i++)
	{
		a[i] = 0;
	}
	for(i=1;i<=5;i++)
	{
		scanf("%d",&t);
		a[t]++;
	}
	for(i=10;i>0;i--)
	{
		for(j=1;j<=a[i];j++)
		{
			io::print(i);
		}
	}
}