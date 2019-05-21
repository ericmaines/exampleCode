//--------------------------------------------------------------------
// CS215-008 LAB 1 008
//--------------------------------------------------------------------
// Author: Eric Maines
// Date: 18 January, 2019
// Description: My first C++ program. It does arithmetic on two numbers.
//--------------------------------------------------------------------
#include <iostream>
using namespace std;

int main() {
	cout << "+--------------------------------------+\n";
	cout << "|            Number Fun!!              |\n";
	cout << "|           By Eric Maines             |\n";
	cout << "+--------------------------------------+\n";
	cout << "\n\n";
	double num1;
	double num2;

	cout << "Enter a number:       ";
	cin >> num1;
	cout << "Enter another number: ";
	cin >> num2;
	cout << endl << endl;

	double sum;
	double diff;
	double prod;
	int quo1;
	double quo2;

	sum = num1 + num2;
	cout << "The sum is:                     " << sum << endl;
	
	diff = num1 - num2; 
	cout << "The difference is:              " << diff << endl;

	prod = num1 * num2;
	cout << "The product is:                 " << prod << endl;

	quo1 = (num1 / num2);
	cout << "The integer quotient is:        " << quo1 << endl;

	quo2 = (num1 / num2) * 1.0 ;
	cout << "The floating point quotient is: " << quo2 << endl;

	system("pause");
	return 0;
}