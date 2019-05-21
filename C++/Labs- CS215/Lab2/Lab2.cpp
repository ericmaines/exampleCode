//--------------------------------------------------------------------
// CS215-008
//--------------------------------------------------------------------
// Author: Eric Maines
// Date: 25 January, 2019
// Description: Sort numbers and display the scovile scale
//--------------------------------------------------------------------

#include <iostream>
#include <string>
#include <iomanip>
using namespace std;

int main() {
	int num1, num2, num3;

	cout << "Enter a number 1: ";
	cin >> num1;
	cout << "Enter a number 2: ";
	cin >> num2;
	cout << "Enter a number 3: ";
	cin >> num3;

	cout << "Sorted they are:  ";
	if (num1 <= num2 && num1 <= num3) {
		cout << num1;
		if (num2 <= num3) {
			cout << " " << num2 << " " << num3 << endl;
		}
		else if (num2 >= num3) {
			cout << " " << num3 << " " << num2 << endl;
		}
	}

	else if (num2 <= num1 && num2 <= num3) {
		cout << num2;
		if (num1 <= num3) {
			cout << " " << num1 << " " << num3 << endl;
		}
		else if (num1 >= num3) {
			cout << " " << num3 << " " << num1 << endl;
		}

	}

	else if (num3 <= num1 && num3 <= num2) {
		cout << num3;
		if (num1 <= num2) {
			cout << " " << num1 << " " << num2 << endl;
		}
		else if (num1 >= num2) {
			cout << " " << num2 << " " << num1 << endl;
		}

	}

	cout << endl;
	string pepper;
	int scov = 0;

	cout << "A. Aleppo Pepper\nB. Banana Pepper \nC. Cayenne Pepper \nD. Dragon's Breath \n\n";
	cout << "Choose a letter for a pepper: ";
	cin >> pepper;

		if (pepper == "A" || pepper == "a") {
			scov = 30000;
		}

		else if (pepper == "B" || pepper == "b") {
			scov = 1000;
		}

		else if (pepper == "C" || pepper == "c") {
			scov = 40000;
		}

		else if (pepper == "D" || pepper == "d") {
			scov = 2480000;
		}

	
		if (scov != 0) {
			cout << "That's " << scov << " Scovilles of heat! \n";
		}
		else {
			cout << "That pepper is not on the list." << endl;
		}
	system("pause");
		return 69;
}