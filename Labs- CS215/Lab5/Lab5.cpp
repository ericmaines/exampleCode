//-----------------------------------------------------------
// CS 215-008 - Lab 5
//-----------------------------------------------------------
// Author: Eric Maines
// Date: 15 February, 2019
// Description: This program lets the player select from multiple games
#include <iostream>
#include<string>
#include <fstream>
using namespace std;

int main () {
	string uOption; 
	cout << "Let's play a game!" << endl;
	cout << "S = Sum Between   " << endl;
	cout << "B = Print Box     " << endl;
	cout << "X = Exit program  " << endl;
	cout << "Enter an option:  " ;
	cin >> uOption; char cOption = uOption[0];
	cOption = toupper(cOption);
	while (cOption != 'X') {
		while (cOption != 'S' && cOption != 'B' && cOption != 'X') {
			cout << "Invalid option. Try again!" << endl;
			cout << "Enter an option:  ";
			cin >> uOption; cOption = uOption[0];
			cOption = toupper(cOption);
		}

		int num1, num2, sum = 0;
		switch (cOption) {
		case 'S':
			cout << "Enter start and stop numbers: ";
			cin >> num1 >> num2;
			for (int i = num1; i <= num2; i++) {
				sum = sum + i;
			}
			cout << "Sum of the numbers between those: " << sum << endl;
			break;
		case 'B':
			cout << "Enter box size: ";
			cin >> num1;
			for (int i = 1; i <= num1; i++) {
				for (int j = 1; j <= num1; j++) {
					cout << "* ";
				}
				cout << endl;
			}
			break;
		case 'X':
			system("pause");
			return 0;
			break;
		}
		cout << "Let's play a game!" << endl;
		cout << "S = Sum Between   " << endl;
		cout << "B = Print Box     " << endl;
		cout << "X = Exit program  " << endl;
		cout << "Enter an option:  ";
		cin >> uOption; cOption = uOption[0];
		cOption = toupper(cOption);
	}

	system("pause");
return(0);
}