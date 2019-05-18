//-----------------------------------------------------------
// CS 215-008 – Lab 3
//-----------------------------------------------------------
// Author: Eric Maines
// Date: 01/02/2019
// Description: Program that simulates a hotdog stand

#include <iostream>
#include <string>
#include <iomanip>
using namespace std;

const float rDog = 2.50, dDog = 3.50, sDrink = 1.50, lDrink = 2.25, taxRate = 0.06 ;
	
int main() {
	string stringOrder;
	double uTotal = 0.0;
		cout << "------------- Eric's Hotdogs and Drinks Inc. -------------" << endl;
		cout << " H - Hot Dog       $2.50         D - Deluxe Hot Dog  $3.50" << endl;
		cout << " S - Small Drink   $1.50         L - Large Drink     $2.25" << endl;
		cout << " F - Finish Order                X - Exit system          " << endl;
		cout << "----------------------------------------------------------" << endl;
		cout << "Enter option =====> ";
		cin >> stringOrder;
		char uOrder = stringOrder[0];
		uOrder = toupper(uOrder);

		while (uOrder != 'F' && uOrder != 'X') {
			switch (uOrder) {
			case 'H':
				uTotal = uTotal + rDog;
				break;
			case 'D':
				uTotal = uTotal + dDog;
				break;
			case 'S':
				uTotal = uTotal + sDrink;
				break;
			case 'L':
				uTotal = uTotal + lDrink;
				break;
			}
			if (uOrder != 'F' && uOrder != 'X') {
				cout << "Current Sub-Total: $" << setprecision(2) << fixed << uTotal << endl;
			}
			cout << endl << endl;
			cout << " H - Hot Dog       $2.50         D - Deluxe Hot Dog  $3.50" << endl;
			cout << " S - Small Drink   $1.50         L - Large Drink     $2.25" << endl;
			cout << " F - Finish Order                X - Exit system          " << endl << endl;
			cout << "Enter option =====>";
			cin >> stringOrder;
			uOrder = stringOrder[0];
			uOrder = toupper(uOrder);
		}
		float taxAmount = uTotal * taxRate;
		float totalAmount = uTotal + taxAmount;
		float uCash;
		float uChange;
		if (uOrder == 'F') {
			cout << "Subtotal   :       $" << uTotal << endl;
			cout << "Tax        :       $" << taxAmount << endl;
			cout << "Total      :       $" << totalAmount << endl;
			cout << "Enter Cash :       $";
			cin >> uCash;
			uChange = uCash - totalAmount;
			cout << "Change     :       $" << setprecision(2) << fixed << uChange << endl;
		system("pause");
	}
		return 0;
}