//-----------------------------------------------------------
// CS 215-008 - Lab 4
//-----------------------------------------------------------
// Author: Eric Maines
// Date: 8 February, 2019
// Description: This program analyzes temps from an input file
#include <iostream>
#include<string>
#include<iomanip>
#include<fstream>
#include<Windows.h>
using namespace std;

int main() {
	string date = "b"; int numTemps, temp1, hiTemp = -40, lowTemp = 212;
	ifstream fin; ofstream fout;
	fin.open("tempsin.txt");
	if (fin.fail()) { 
		cout << "Failed to open temperature file" << endl;
		system("pause");
		return 0;
	}
	fout.open("tempsout.txt");
	if (fout.fail()) {
		cout << "Failed to open the output file" << endl;
		system("pause");
		return 0;
	}
	fout << "Date       High  Low" << endl;
	fout << "---------- ---- ----" << endl;
	while (date != "ENDOFDATA") {
			fin >> date >> numTemps;
			hiTemp = -999;
			lowTemp = 999;
			for (int i = 0; i < numTemps; i++) {
				fin >> temp1;
				if (temp1 > hiTemp) {
					hiTemp = temp1;
				}
				if (temp1 < lowTemp) {
					lowTemp = temp1;
				}
		}
		if (date != "ENDOFDATA") {
			fout << setw(10) << left << date << " ";
			fout << setw(4) << right << hiTemp << " ";
			fout << setw(4) << right << lowTemp << endl;
		}
	}
	fin.close();
	fout.close();
	system("pause");
	return 0;
}