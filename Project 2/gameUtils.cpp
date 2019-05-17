#include <iostream>
#include <iomanip>
#include <fstream>
#include <sstream>
#include <string>
#include "gameUtils.h"
using namespace std;

// gameAbort
void gameAbort(string message) {
	cout << message << endl;
	system("pause");
	exit(0);
}

// cleanString()
//given: a string from the user/input file
//returns the given string with leading/trailing whitspace removed, and all internal whitespace reduced to one space
string cleanString(string originalString) {
	stringstream ss = stringstream(originalString);
	string cleaned = "", word;
	ss >> cleaned;
	ss >> word;
	while (!ss.fail()) {
		cleaned = cleaned + " " + word;
		ss >> word;
	}
	return cleaned;
}

//cleanGetLine
//given: an already opened if-stream
//modifies: the clean string read
// reads data from the input stream using standard getline(), ignoring any leading newline. Cleans the read string
void cleanGetLine(ifstream & fin, string & data) {
	string rawData;
	if (fin.peek() == '/n') fin.ignore();
	getline(fin, rawData);
	data = cleanString(rawData);
} //cleanGetline()

//split
//Given: a string from the user or input file
//returns: the first word of the given string, cleaned
//modifies: the remaining words of the given string, cleaned
string split(string input, string & remainder) {
	string cleaned = cleanString(input);
	int spaceIndex = cleaned.find(" ");
	remainder = "";
	if (spaceIndex >= 0) {
		remainder = cleaned.substr(spaceIndex + 1);
		cleaned = cleaned.substr(0, spaceIndex);
	}
	return cleaned;
} //split()


//printhelp
void printHelp(){
	cout << "Commands: [shortcuts in brackets]" << endl
		<< "- look [l]: get a detailed description of your current location" << endl
		<< "- inv  [i]: get a list of items in your inventory" << endl
		<< "- exa  <item> [x]: (examine) get a detailed description of the item in your" << endl << "current location or in your inventory" << endl
		<< "- take <item> [t]: take an item from your location and put it in your inventory" << endl
		<< "- drop <item> [d]: take an item from your inventory and put it in your location" << endl
		<< "- north, south, east, west [n,e,s,w]: walk in that direction (if you can!)" << endl << endl
		<< "To win the game: explore the world; discover your quest; find and take the quest items; drop them all in the 'win room'" << endl << endl;
} //printhelp

//printItems()
void printItems(item items[], int numItems) {
	cout << "Num Items: " << numItems << endl;
	if (numItems < 0 || numItems > MAX_ITEMS) numItems = MAX_ITEMS;
	for (int i = 0; i < numItems; i++) {
		cout << "  item[" << setw(2) << i << "] short =' "
			<< items[i].shortDesc << "'\n         long-'"
			<< items[i].longDesc << "'\n";
	}
} //printItems()

// printWinData
void printWinData(winDataStruct winData) {
	cout << "WIN DATA: -----------------------------\n";
	cout << "WinRoom:      " << winData.winRoom << endl;
	cout << "WinMessage:   " << winData.winMessage << endl;
	cout << "numWinItems:  " << winData.numWinItems << endl;
	printItems(winData.winItem, winData.numWinItems);
	system("pause");
	cout << endl;
} // printWinData()

//printRooms()
// given: a partial array of room objects
// Prints the contents of the partial array. Used for debugging only
// [after completing readfile(), use this to test the results
void printRooms(room rooms[], int numRooms) {
	cout << "Print rooms: #rooms = " << numRooms << endl;
	if (numRooms < 0 || numRooms > MAX_ROOMS) numRooms = MAX_ROOMS;
	for (int i = 0; i < numRooms; i++) {
		cout << "ROOM[" << i << "] --------------------\n";
		cout << "Short:      " << rooms[i].shortDesc << endl;
		cout << "Long:       " << rooms[i].longDesc << endl;
		cout << "North = " << rooms[i].north
			<< "South = " << rooms[i].south
			<< "East  = " << rooms[i].east
			<< "West  = " << rooms[i].west << endl;
		printItems(rooms[i].items, rooms[i].numItems);
		cout << endl;
		system("pause");
	}
}
