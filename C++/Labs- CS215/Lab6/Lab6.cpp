//-----------------------------------------------------------
// CS 215-008 - Lab 6
//-----------------------------------------------------------
// Author: Eric Maines
// Date: 22 February, 2019
// Description: Analyzes stock data
#include <iostream>
#include <iomanip>
#include <fstream>
#include <string>
using namespace std;
const int numPrices = 10;
int main() {
	string fileName;
	ifstream fin;
	cout << " What is the name of the stock you want to check? ";
	cin >> fileName;
	fin.open(fileName);
	if (fin.fail()) {
		cout << "[404] File name: '" << fileName << "' not found" << endl;
		system("pause");
		return 0;
	}
	string stockName, todaysDate, oClock = ":00"; int hour = 8;
	double prices[numPrices];
	fin >> stockName >> todaysDate;

	for (int i = 0; i <= (numPrices-1); i++) {
		fin >> prices[i];
	}
	double change = (prices[(numPrices-1)] - prices[0]);
	cout << "Stock Name: " << stockName << "   Date: " << todaysDate << endl;
	cout << "Time     Price   " << endl
		 << "-----    --------" << endl;
	for (int j = 0; j <= (numPrices-1); j++) {
		cout << setw(2) << right << hour << oClock << "    $" ;
		cout << setw(7) << right << fixed << setprecision(2) << prices[j] << endl;
		hour++;
		if (hour == 12) {
			hour = 1;
		}
	}
	cout << endl << endl;
	double sum = 0;
	for (int k = 0; k <= ((numPrices-1)); k++) {
		sum += prices[k];
		for (int l = 0; l <= (k); l++) {
			if (prices[k] > prices[l]) {
				double t = prices[k];
				prices[k] = prices[l];
				prices[l] = t;

			}
		}
	}

	double high = (prices[0]), low = (prices[(numPrices-1)]), average = (sum/(numPrices)),
		median = ((prices[(((numPrices)/2)-1)] + prices[((numPrices)/2)])/2) ;
	cout << setw(5) << left << "Change: " << " $" << setw(7) << right <<  change << endl;
	cout << setw(5) << left << "High:  " << "  $" << setw(7) << right << high << endl;
	cout << setw(5) << left << "Low:   " << "  $" << setw(7) << right << low << endl;
	cout << setw(5) << left << "Average: " << "$" << setw(7) << right << average << endl;
	cout << setw(5) << left << "Median: " << " $" << setw(7) << right << median << endl;

	
	system("pause");
	return 0;
}