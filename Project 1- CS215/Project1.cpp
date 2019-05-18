//-----------------------------------------------------------
// CS 215-008 – Project 1
//-----------------------------------------------------------
// Author: Eric Maines
// Date: 8 February, 2019
// Description: This program simulates a gas tank.
// Assistance: I received help from http://www.cplusplus.com/reference/cstdlib/rand/ for rand() syntax
#include <iostream>
#include<string>
#include<iomanip>
#include<fstream>
#include<Windows.h>
#include<random>
using namespace std;

int main() {
	while (1 == 1) { // this program will loop forever until it is stopped
		ifstream fin; //opens the input file
		fin.open("pumpin.txt");
		if (fin.fail()) { // if the program is unable to open the file, it shuts itself down
			cout << "We are out of gas. Sorry!" << endl;
			system("pause");
			return 0;
		}

		float lowGal, medGal, highGal, lowPrice, medPrice, highPrice;  // these variables will be read from the input file
		fin >> highGal >> medGal >> lowGal >> highPrice >> medPrice >> lowPrice;

		cout << "Tank readings:  Hi= " << setprecision(2) << fixed << highGal << "  " << "Med= " << medGal << "  " << "Low= " << lowGal << endl;
		cout << "Today's PPG  :  Hi= " << setprecision(2) << fixed << highPrice << "   " << "Med= " << medPrice << "   " << "Low= " << lowPrice << endl;
		fin.close(); // once everything has been displayed, the input file is closed

		string rewardsYN;
		cout << "+-----------------------------------------------------+" << endl;
		cout << "|                  Kroger Fuel Center                 |" << endl;
		cout << "|                 Owned by Eric Maines                |" << endl;
		cout << "+-----------------------------------------------------+" << endl << endl;

		cout << "Are you a Kroger Plus customer? (Y/N):  ";
		cin >> rewardsYN;

		char charYN = rewardsYN[0]; // this takes the first character from what the user has submitted and evaluates it
		charYN = toupper(charYN); // the first character is then converted to upper case for ease of evaluation

		if (charYN == 'S') { //shutdown protocol
			cout << "Tank readings: Hi=" << highGal << " Med=" << medGal << " Low= " << lowGal << endl;
			cout << "Pump shut down." << endl;
			system("pause");
			return 0;
		}

		while (charYN != 'N' && charYN != 'Y') { // this loop makes sure that the user puts the right input in
			cout << "Are you a Kroger Plus customer? (Y/N):  ";
			cin >> rewardsYN;
			charYN = rewardsYN[0];
			charYN = toupper(charYN);
		}
		int rewardNum = 0; float discount = 0.00; //the reason this is a 9 digit ID is because the program doesn't like 10 digit ids
		if (charYN == 'Y') {
			cout << "Please enter your 9 digit alternate ID: ";
			cin >> rewardNum;
			rewardNum = rewardNum % 10; // this converts the input into a price discount
			rewardNum = rewardNum + 1;
		}
		discount = static_cast <double> (rewardNum) / 100; //recast because you can't have a decimal integer
		cout << "Price per gallon discount: " << setprecision(2) << fixed << discount << endl << endl;

		cout << "Prices per gallon: " << endl; // calculates each price per gallon
		cout << "High Octane      : $" << (highPrice - discount) << endl;
		cout << "Medium Octane    : $" << (medPrice - discount) << endl;
		cout << "Low Octane       : $" << (lowPrice - discount) << endl;

		string uOctane;
		cout << "Please select an octane <H/M/L>: ";
		cin >> uOctane;

		char cOctane = uOctane[0]; // this does the same thing as above. It is easier to evaluate the first character and convert it to upper case
		cOctane = toupper(cOctane);

		while (cOctane != 'H' && cOctane != 'M' && cOctane != 'L') { // this is to make sure the right input is entered
			cout << "Error. Please enter H, M, or L!" << endl;
			cout << "Please select an octane <H/M/L>: ";
			cin >> uOctane;
			cOctane = uOctane[0];
			cOctane = toupper(cOctane);
		}

		float uGal;
		cout << endl << "Enter a number of gallons (-1 to fill it up): ";
		cin >> uGal;

		if (uGal <= -1) { // evaluates what the user has submitted
			uGal = rand() % 9; //the random function will pick a random number between and 8. Because of how computers count, the upper bound needs to be 9
			cout << "Sensor shows you need: " << uGal << " gallons." << endl;
		}

		switch (cOctane) { // the switch does slightly different things depending on the octane used
		case 'H':
			if (uGal > highGal) {
				cout << "Sorry, our tank is nearly empty. We only have " << highGal << " gallons available." << endl;
				uGal = highGal;
			}
			break;
		case 'M':
			if (uGal > medGal) {
				cout << "Sorry, our tank is nearly empty. We only have " << medGal << " gallons available." << endl;
				uGal = medGal;
			}
			break;
		case 'L':
			if (uGal > lowGal) {
				cout << "Sorry, our tank is nearly empty. We only have " << lowGal << " gallons available." << endl;
				uGal = lowGal;
			}
			break;
		}
		float i;
		for (i = 0; i <= uGal; i += 0.5) { // the for loop makes it easy to "pump" the gas
			cout << i << " gallons pumped..." << endl;
			Sleep(500);
		}
		float uPay, ppg, totGal; string oType; ofstream fout; //after the transaction, we will output the new tank levels
		fout.open("pumpOut.txt");
		if (fin.fail()) { // if it fails, it just doesn't output
			cout << "Error printing recipt" << endl;
		}

		switch (cOctane) { //based on what octane was selected, different cases are enabled
		case 'H':
			uPay = uGal * (highPrice - discount); // total price owed by the user
			oType = "High"; // type of octane
			ppg = (highPrice - discount); //price per gallon
			totGal = highGal - uGal; // total gallons remaining *our* tank
			fout << totGal << " " << medGal << " " << lowGal << endl // outputs the values to another file
				<< highPrice << " " << medPrice << " " << lowPrice << endl;
			break;
		case 'M':
			uPay = uGal * (medPrice - discount);
			oType = "Medium";
			ppg = (medPrice - discount);
			totGal = medGal - uGal;
			fout << highGal << " " << totGal << " " << lowGal << endl
				<< highPrice << " " << medPrice << " " << lowPrice << endl;
			break;
		case 'L':
			uPay = uGal * (lowPrice - discount);
			oType = "Low";
			ppg = (lowPrice - discount);
			totGal = lowGal - uGal;
			fout << highGal << " " << medGal << " " << totGal << endl
				<< highPrice << " " << medPrice << " " << lowPrice << endl;
			break;
		}

		cout << endl; // recipt displays the values from earlier
		cout << "+----------- Your Recipt -----------+" << endl;
		cout << "Octane            : " << oType << endl;
		cout << "Price per gallon  : " << ppg << endl;
		cout << "Total             : " << uPay << endl;
		cout << "Thank you for shopping at Kroger!" << endl;
		cout << "+-----------------------------------+" << endl;

		system("pause");
		cout << endl << endl;
	}
}