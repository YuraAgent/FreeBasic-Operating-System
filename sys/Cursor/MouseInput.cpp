#include <iostream>
using namespace std;

void Mouse_Wheel(int mx_sx, int my_sy)
{
	if (mx_sx < 0 && mx_sx == mx_sx)
	{
		cout << mx_sx - 1;
	}
	else if (mx_sx > 1 && mx_sx == mx_sx)
	{
		cout << mx_sx + 1;
	}
	if (my_sy < 0 && my_sy == my_sy)
	{
		cout << my_sy - 1;
	}
	else if (my_sy > 1 && my_sy == my_sy)
	{
		cout << my_sy + 1;
	}
}
int main(){
	int x;
	int y;
	Mouse_Wheel(x,y);
	return 0;
}
