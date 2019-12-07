#include <iostream>
#include <string>
using namespace std;

int main(){
	int num1, modulo, answer;
	int num2 = 1;
	while (num2!=0)
	{
	cin >> num1 >> num2;
	if (num2 != 0)
	{
	    answer = num1/num2;
	    modulo = num1 % num2;
	    cout << answer << " " << modulo << " / " << num2 << endl;
	}
	}
	return 0;
}