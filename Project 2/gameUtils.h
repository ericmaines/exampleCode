#pragma once
//This contains the code needed to load important parts of the game.
#include <string>
using namespace std;

//initial room number,  not found index, maximum player inventory, maximum room amount, no exit index
const int START_ROOM = 0, NOT_FOUND = -1, MAX_ITEMS = 5, MAX_ROOMS = 16, NO_EXIT = -1;

struct item { string shortDesc; string longDesc; };
struct room { string shortDesc; string longDesc; item items[MAX_ITEMS]; int numItems; int north, south, east, west; };
struct winDataStruct { item winItem[MAX_ITEMS]; int numWinItems; string winMessage; int winRoom; };

//functions

void gameAbort(string message);
string cleanString(string originalString);
void cleanGetLine(ifstream & f, string & data);
string split(string input, string & remainder);
void printHelp();
void printRooms(room rooms[], int numRooms);
void printWinData(winDataStruct winData);
void printItems(item items[], int numItems);