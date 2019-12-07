#include <iostream>
#include <string>
using namespace std;

int main(){
	string ah1, ah2;
	getline(cin, ah1);
	getline(cin, ah2);
	int ah1Size, ah2Size, biggest;
	ah1Size = ah1.length();
	ah2Size = ah2.length();
	biggest = ah1Size;
	if (ah2Size > ah1Size)
		biggest = ah2Size;
	int num1 = 0;
	int num2 = 0;
	for (int i =0; i <= biggest ; i++)
	{
		if (ah1[i] == 'a')
			num1++;
		if (ah2[i] == 'a')
			num2++;
	}
	if (num1 < num2)
		cout << "no";
	else 
		cout << "go";
	return 0;
}
