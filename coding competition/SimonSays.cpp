#include <iostream>
#include <string>
using namespace std;

int main(){
	int num, len;
	string sSays;
	cin >> num; 
	for (int i = 0; i <= num; i ++)
	{
		getline(cin, sSays);
		len = sSays.length();
		int k=sSays.find("Simon says ");
		if (k == 0)
		{
			for (int j = 11 ; j <= len; j++)
			{
				cout << sSays[j];
			}
			cout << endl;
		}
	}
	return 0; 
}