//-----------------------------------------------------------
// CS 215-008 - Lab 7
//-----------------------------------------------------------
// Author: Eric Maines
// Date: 8 March, 2019
// Description: Analyzes user-input fractions

#include <iostream>
#include <iomanip>
#include <fstream>
#include <string>
using namespace std;

struct frac { int num; int den; float dec; };
const int maxNum = 10;



void calcDec(frac & f) {
	f.dec = ((float)f.num / (float)f.den);
}

void printFraction(frac fracs) {
	cout << fracs.num << "/" << fracs.den << " (" << fracs.dec << ") ";
}

void printFractionList(frac fracs[], int userNum) {
	for (int j = 0; j < userNum; j++) {
		printFraction(fracs[j]);
		cout << endl;
	}
}


frac askFraction() {
	frac f;
	cout << "Please enter a numerator: "; cin >> f.num;
	cout << "Please enter a denominator: "; cin >> f.den;
	while (f.den == 0) {
		cout << "Divide by zero! Please pick another number..." << endl << "Please enter a denominator: ";
		cin >> f.den;

	}
	calcDec(f);
	return f;
}

int askFractionList(frac fractions[]) {
	int userNum;
	cout << "How many fractions would you like to evaluate (1-10)?  " ; cin >> userNum;
	while (userNum > 10 || userNum < 1) {
		cout << "Please enter a number between 1 and 10: "; cin >> userNum;
	}
	for (int i = 0; i < userNum; i++) {
		cout << "For fraction " << (i + 1) << endl;
		fractions[i] = askFraction();
	}
	return userNum;
}



float findMaxFraction(frac fractions[], int userNum) {
	float t = -1, idx = 0;
	for (int i = 0; i < userNum; i++) {
			if (fractions[i].dec > t) {
				t = fractions[i].dec;
				idx = i;
			}

	}
	return idx;
}


int main() {
	frac fractions[maxNum];
	int userNum = askFractionList(fractions);
	printFractionList(fractions, userNum);
	int maxFrac = findMaxFraction(fractions, userNum);
	cout << "The highest fraction is: ";
	printFraction(fractions[maxFrac]);
	cout << endl << endl;
	system("pause");
	return 0;
}