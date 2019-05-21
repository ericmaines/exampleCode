//----------------------------------------------------------------------------
//                  CS 215-008  - Project 2 -  MiniMud
//----------------------------------------------------------------------------
// Author:  Eric Maines
// Date:  25 March, 2019
// Description:  Plays classic MUD games for the user!
// Assistance: I recieved assistance from: Joiner's examples, and Jack Teegarden 
// and Jake Beckelhimer, fellow CS students. They helped me with the logic of 
// functions in this code.
//----------------------------------------------------------------------------
#include <iostream>
#include <iomanip>
#include <string>
#include <fstream>
#include "gameUtils.h"
using namespace std;


//-----------------------------------------------------------------------------------------------------------------
//                                                     makeExitList                                                 
//-----------------------------------------------------------------------------------------------------------------
string makeExitList(room thisRoom) {
	string exitList = "You can go:";
	if (thisRoom.north != NO_EXIT) exitList += " north,";
	if (thisRoom.south != NO_EXIT) exitList += " south,";
	if (thisRoom.east != NO_EXIT) exitList += " east,";
	if (thisRoom.west != NO_EXIT) exitList += " west,";
	exitList[exitList.length() - 1] = '.'; //change last comma to a period
	return exitList;
}
//-----------------------------------------------------------------------------------------------------------------
//                                                     makeExitList                                                 
//-----------------------------------------------------------------------------------------------------------------



//-----------------------------------------------------------------------------------------------------------------
//                                                     doLook()      
//Given: A room object, and a boolean 
//Purpose: Displays what is currently in the room, and ways to get out the room
//Returns: Nothing
//-----------------------------------------------------------------------------------------------------------------
void doLook(room rooms, bool showShort) {
	
	//checks to see if we want to show the short or long description
	if (showShort == false) { 
		cout << rooms.longDesc << endl;;
	}
	else {
		cout << rooms.shortDesc << endl;
	}

	//prints the room inventory
	if (rooms.numItems > 0) {
		cout << "You notice the following: ";
		for (int i = 0; i < rooms.numItems - 1; i++) {
			cout << rooms.items[i].shortDesc << ", ";
		}
		cout << rooms.items[rooms.numItems - 1].shortDesc << ". " << endl;
	}

	//prints the ways to get out of the room
	cout << makeExitList(rooms);

	
}
//-----------------------------------------------------------------------------------------------------------------
//                                                     doLook()                                                  
//-----------------------------------------------------------------------------------------------------------------



//-----------------------------------------------------------------------------------------------------------------
//                                                     findItem()           
// Given: String of the item name to search, an inventory array to search in
// Returns: An integer index
// Purpose: Searches an item array for a specific item and returns its index
//-----------------------------------------------------------------------------------------------------------------
int findItem(string itemName, item inventory[]) {
	int index = NOT_FOUND;
	string arrayItem = "";

	//Goes through each item in the array to find the item that matches the given string
	for (int i = 0; i < MAX_ITEMS; i++) {
		arrayItem = inventory[i].shortDesc;
		if (arrayItem == itemName) {
			index = i;
		}
	}
	return index;
}
//-----------------------------------------------------------------------------------------------------------------
//                                                     findItem()                                                   
//-----------------------------------------------------------------------------------------------------------------



//-----------------------------------------------------------------------------------------------------------------
//                                                     removeItem()   
// Given: An item index and a partial array of items
// Modifies a partial array of Items
// Returns: The item removed
// Purpose: Removes items from an item inventory 
//-----------------------------------------------------------------------------------------------------------------
item removeItem(int & index, item items[], int amtItems) {
	item rem;

	//Checks to see if the index is within range
	if (index > NOT_FOUND || index < MAX_ITEMS) {
		rem = items[index];

		//Shifts the array down one index
		for (int i = index; i < (MAX_ITEMS - 1); i++) {
			items[i] = items[i + 1];
		}
		amtItems--;
		items[MAX_ITEMS-1].longDesc = "";
		items[MAX_ITEMS-1].shortDesc = "";
	}

	//If the index is out of range, the game aborts
	else {
		gameAbort("removeItem(): Invalid index. Game abort");
	}
	return rem;
}
//-----------------------------------------------------------------------------------------------------------------
//                                                     removeItem()                                                 
//-----------------------------------------------------------------------------------------------------------------



//-----------------------------------------------------------------------------------------------------------------
//														addItem()      
// Given: A partial array of item inventories, and a new item
// Modifies: A partial array of items
// Returns: nothing
// Purpose: Add items to an inventory
//-----------------------------------------------------------------------------------------------------------------
void addItem(item addedItem, item inventory[], int & itemNum) {
	if ((itemNum > (MAX_ITEMS)) || (itemNum < 0)) {
		gameAbort("AddItem(): Index out of bounds!");
	}
	else {
		inventory[itemNum] = addedItem;
		itemNum++;
	}

}
//-----------------------------------------------------------------------------------------------------------------
//														addItem()                                             
//-----------------------------------------------------------------------------------------------------------------



//-----------------------------------------------------------------------------------------------------------------
//                                           *****addItem(OVERLOADED)*****        
// Given: Item short and long description, and a partial array of items
// Modifies: A partial array of items
// Returns: Nothing
// Purpose: Add items to an inventory, but this one does it with more parametersa
//-----------------------------------------------------------------------------------------------------------------
void addItem(string shortDesc, string longDesc, item items[], int & numItem) {
	item newItem;
	newItem.shortDesc = shortDesc;
	newItem.longDesc = longDesc;
	addItem(newItem, items, numItem);
}
//-----------------------------------------------------------------------------------------------------------------
//											*****addItem(OVERLOADED)*****                 
//								shortDesc, longDesc, &rooms[roomNdx].items, &rooms[roomNdx].numItems
//-----------------------------------------------------------------------------------------------------------------



//-----------------------------------------------------------------------------------------------------------------
//                                                     doInventory()     
// Given: a partial array of items
// Modifies: a partial array of items
// Returns: nothing
// Purpose: Make a list of all of the items in an inventory
//-----------------------------------------------------------------------------------------------------------------
void doInventory(item item[], int & numItems) {
	if (numItems == 0) cout << "Your pockets are empty!" << endl;
	else {
		cout << "You are holding: ";
		for (int i = 0; i < (numItems - 1); i++) cout << item[i].shortDesc << ", ";
		cout << item[numItems - 1].shortDesc << ".\n"; 
	}
}
//-----------------------------------------------------------------------------------------------------------------
//                                                     doInventory()                                                 
//-----------------------------------------------------------------------------------------------------------------



//----------------------------------------------------------------------------------------------------------------
//                                                        goNorth()
//Given: partial array of rooms
//Modifies index of current room
//This is the game's response to the player entering the "north"/"n" command
//When the north exit exists, changes the current room index and performs
//a "look" command with a short room description
// ---------------------------------------------------------------------------------------------------------------
void goNorth(int & currentRoom, room rooms[]) {
	if (rooms[currentRoom].north == NO_EXIT)
		cout << "You can't go north" << endl;
	else {
		currentRoom = rooms[currentRoom].north;
		bool showShort = true;
		doLook(rooms[currentRoom], showShort); //true = show short room desc.
	}
}
//-----------------------------------------------------------------------------------------------------------------
//                                                     goNorth()                                                
//-----------------------------------------------------------------------------------------------------------------



//-----------------------------------------------------------------------------------------------------------------
//                                                     goSouth()    
//Given: partial array of rooms
//Modifies index of current room
//This is the game's response to the player entering the "south"/"n" command
//When the north exit exists, changes the current room index and performs
//a "look" command with a short room description
//-----------------------------------------------------------------------------------------------------------------
void goSouth(int & currentRoom, room rooms[]) {
	if (rooms[currentRoom].south == NO_EXIT)
		cout << "You can't go south" << endl;
	else {
		currentRoom = rooms[currentRoom].south;
		bool showShort = true;
		doLook(rooms[currentRoom], showShort); //true = show short room desc.
	}
}
//-----------------------------------------------------------------------------------------------------------------
//                                                     goSouth()                                                
//-----------------------------------------------------------------------------------------------------------------



//-----------------------------------------------------------------------------------------------------------------
//                                                     goEast()     
//Given: partial array of rooms
//Modifies index of current room
//This is the game's response to the player entering the "east"/"n" command
//When the north exit exists, changes the current room index and performs
//a "look" command with a short room description
//-----------------------------------------------------------------------------------------------------------------
void goEast(int & currentRoom, room rooms[]) {
	if (rooms[currentRoom].east == NO_EXIT)
		cout << "You can't go east" << endl;
	else {
		currentRoom = rooms[currentRoom].east;
		bool showShort = true;
		doLook(rooms[currentRoom], showShort); //true = show short room desc.
	}
}
//-----------------------------------------------------------------------------------------------------------------
//                                                     goEast()                                                
//-----------------------------------------------------------------------------------------------------------------



//-----------------------------------------------------------------------------------------------------------------
//                                                     goWest()    
//Given: partial array of rooms
//Modifies index of current room
//This is the game's response to the player entering the "west"/"n" command
//When the north exit exists, changes the current room index and performs
//a "look" command with a short room description
//-----------------------------------------------------------------------------------------------------------------
void goWest(int & currentRoom, room rooms[]) {
	if (rooms[currentRoom].west == NO_EXIT)
		cout << "You can't go west" << endl;
	else {
		currentRoom = rooms[currentRoom].west;
		bool showShort = true;
		doLook(rooms[currentRoom], true); //true = show short room desc.
	}
}
//-----------------------------------------------------------------------------------------------------------------
//                                                     goWest()                                                
//-----------------------------------------------------------------------------------------------------------------



//-----------------------------------------------------------------------------------------------------------------
//                                                     getCMD()    
// Given: A string called remainder
// Returns: A command string
// Purpose: Separates the user input into a command and a remainder
//-----------------------------------------------------------------------------------------------------------------
string getCmd(string & remainder) {
	string cmd, input;
	cout << endl << "=====> " ;
	if (cin.peek() == '\n') cin.ignore();
	getline(cin, input);
	cmd = split(input, remainder);
	return cmd;
}
//-----------------------------------------------------------------------------------------------------------------
//                                                     getCMD()                                                 
//-----------------------------------------------------------------------------------------------------------------



//-----------------------------------------------------------------------------------------------------------------
//													doExamine()
// Given: An item name, a room inventory, and a player inventory
// Purpose: Displays the long description of an item in either the player inventory or the room inventory
//-----------------------------------------------------------------------------------------------------------------
void doExamine(string itemName, item roomInventory[], item playerInventory[]) {
	int index = findItem(itemName, roomInventory);
	if (index > NOT_FOUND) {
		cout << roomInventory[index].longDesc << endl;
	}
	else {
		index = findItem(itemName, playerInventory);
		if (index > NOT_FOUND) {
			cout << playerInventory[index].longDesc << endl;
		}
		else {
			cout << "You see no " << itemName << endl;
		}
	}

}
//-----------------------------------------------------------------------------------------------------------------
//													doExamine()
//-----------------------------------------------------------------------------------------------------------------



//-----------------------------------------------------------------------------------------------------------------
//													    doTake()
// Given: An item name, and partial arrays of room and player inventories
// Modifies: The player and room inventories
// Purpose: To transfer an item from one inventory to another
//-----------------------------------------------------------------------------------------------------------------
void doTake(string itemName, item roomInventory[], item playerInventory[], int & numPlayerItems, int & numRoomItems) {
	item newItem;
	int found = NOT_FOUND;
	found = findItem(itemName, roomInventory);
	if (found == NOT_FOUND || itemName == "") {
		found = findItem(itemName, playerInventory);
		if (found == NOT_FOUND || itemName == "") {
			cout << "You see no " << itemName;
		}
		else {
			cout << "You already have the " << itemName;
		}
	}
	else if (numPlayerItems < MAX_ITEMS) {
		newItem = removeItem(found, roomInventory, numRoomItems);
		addItem(newItem, playerInventory, numPlayerItems);
		cout << "You take the " << itemName << endl;
		numRoomItems--;
	}
	else if (numPlayerItems < MAX_ITEMS){ 
		cout << "Your hands are full. You can't take that."; 
	}

}
//-----------------------------------------------------------------------------------------------------------------
//														doTake()
//-----------------------------------------------------------------------------------------------------------------



//-----------------------------------------------------------------------------------------------------------------
//                                                     printLogo()     
// Given: Nothing
// Purpose: To print out the logo for the game
//-----------------------------------------------------------------------------------------------------------------
// prints logo
void printLogo() {
	cout << "+-----------------------------------+" << endl;
	cout << "|            Mini MUD               |" << endl;
	cout << "|           Eric Maines             |" << endl;
	cout << "+-----------------------------------+" << endl << endl;
}
//-----------------------------------------------------------------------------------------------------------------
//                                                     printLogo                                                 
//-----------------------------------------------------------------------------------------------------------------



//-----------------------------------------------------------------------------------------------------------------
//                                                 getInputFileName
//given: nothing
//returns: the name of the game input file (ex: "dragons.txt")
//----------------------------------------------------------------------------------------------------------------
string getInputFileName() {
	string fileName;
	cout << "What is the name of the game you want to play? ";
	cin >> fileName;
	fileName = fileName + ".txt";
	return fileName;
}
//-----------------------------------------------------------------------------------------------------------------
//                                                     getInputFileName()                                                 
//-----------------------------------------------------------------------------------------------------------------



//-----------------------------------------------------------------------------------------------------------------
//                                                        Inititems()
// given: nothing
// modifies a partial array of item structures
//----------------------------------------------------------------------------------------------------------------
void initItems(item items[]) {
	for (int i = 0; i < MAX_ITEMS; i++) {
		items[i].shortDesc = "";
		items[i].longDesc = "";
	}
}
//-----------------------------------------------------------------------------------------------------------------
//                                                     initItems()                                                
//-----------------------------------------------------------------------------------------------------------------



//-----------------------------------------------------------------------------------------------------------------
//                                                     initRooms()
// given: nothing
// modifies: a partial array of room structures
// ----------------------------------------------------------------------------------------------------------------
void initRooms(room gameRooms[], int & roomNDX) {
	for (int i = 0; i < MAX_ROOMS; i++) {
		gameRooms[i].longDesc = "";
		gameRooms[i].shortDesc = "";
		gameRooms[i].north = NO_EXIT;
		gameRooms[i].south = NO_EXIT;
		gameRooms[i].east = NO_EXIT;
		gameRooms[i].west = NO_EXIT;
		gameRooms[i].numItems = 0;
		initItems(gameRooms[i].items);
	}
}

//-----------------------------------------------------------------------------------------------------------------
//                                                     initRooms()                                                 
//-----------------------------------------------------------------------------------------------------------------



//-----------------------------------------------------------------------------------------------------------------
//                                                    initWinData()
// given: nothing
// modifies: a winData structure
//-----------------------------------------------------------------------------------------------------------------
void initWinData(winDataStruct & winData) {
	winData.winMessage = "";
	winData.winRoom = NO_EXIT;
	winData.numWinItems = 0;
	initItems(winData.winItem);
}
//-----------------------------------------------------------------------------------------------------------------
//                                                     initWinData()                                                  
//-----------------------------------------------------------------------------------------------------------------



//-----------------------------------------------------------------------------------------------------------------
//                                           *****doLook(OVERLOADED)*****        
// Given: A room of type rooms
// Purpose: To call doLook() with less parameters
//-----------------------------------------------------------------------------------------------------------------
void doLook(room rooms) {
	doLook(rooms, true);
}
//-----------------------------------------------------------------------------------------------------------------
//											 *****doLook(OVERLOADED)***** 
//-----------------------------------------------------------------------------------------------------------------



//-----------------------------------------------------------------------------------------------------------------
//                                                     doDrop()         
// Given: An item name, and partial arrays of player and room inventories
// Modifies: The player and room inventories
// Purpose: To swap items between the inventories when the player wants to drop an item
//-----------------------------------------------------------------------------------------------------------------
void doDrop(string itemName, item playerInventory[], item roomInventory[], int & numPlayerItems, int & numRoomItems) {
	item localItem; int found = NOT_FOUND;
	found = findItem(itemName, playerInventory);
	if (found > NOT_FOUND && numRoomItems < MAX_ITEMS || itemName != "") {
		localItem = removeItem(found, playerInventory, numPlayerItems);
		addItem(localItem, roomInventory, numRoomItems);
		cout << "You drop the " << itemName;
		numPlayerItems--;
	}
	else if (found > NOT_FOUND && numRoomItems >= MAX_ITEMS) {
		cout << "This room has too much junk in it. There's no where to drop anything!";
	}
	else if (found == NOT_FOUND) {
		found = findItem(itemName, roomInventory);
		if (found > NOT_FOUND || itemName == "") {
			cout << "You don't have the " << itemName;
		}
		else if (found == NOT_FOUND) {
			cout << "You have no " << itemName;
		}
	}
}
//-----------------------------------------------------------------------------------------------------------------
//                                                      doDrop()                                               
//-----------------------------------------------------------------------------------------------------------------



//-----------------------------------------------------------------------------------------------------------------
//														gameWon()
// Given: A win struct, and a partial array of room indexes
// Purpose: Determines if the game has been won when each of the items are droppped off in the win room
//-----------------------------------------------------------------------------------------------------------------
bool gameWon(winDataStruct win, room roomInventory[], int roomIdx) {
	bool won = false;
	int found = NOT_FOUND, itemsFound = 0;
	if (roomIdx == win.winRoom){
		for (int i = 0; i < (win.numWinItems); i++) {
			found = findItem(win.winItem[i].shortDesc, roomInventory[roomIdx].items);
				if (found > NOT_FOUND) { 
					itemsFound++; 
					if (itemsFound == win.numWinItems) { 
						won = true; 
					}
				}

		}
	}
	return won;
}
//-----------------------------------------------------------------------------------------------------------------
//														gameWon()
//-----------------------------------------------------------------------------------------------------------------



//-----------------------------------------------------------------------------------------------------------------
//                                                     load data         
// Given: A patial array of rooms, and a win struct
// Modifies: A winData object and a partial array of rooms
// Purpose: Loads the data for the game when it is started
//-----------------------------------------------------------------------------------------------------------------
void loadData(room rooms[], int & numRooms, winDataStruct & winData) {
	ifstream fin; string tag, fileName, data; int roomNdx = -1;
	
	// initialize rooms and winData
	initRooms(rooms, numRooms);
	initWinData(winData);

	// get input file name and open the input file; abort if fails
	fileName = getInputFileName();
	fin.open(fileName);
	if (fin.fail()){
		gameAbort("Game Abort: inputFileName()" + fileName);
	}
	// read line by line and store data in the game structures
	fin >> tag;
	while (tag != "END:") {
		if (tag == "ROOM:") {
			numRooms++; // start a new room
			roomNdx++; // increment every time numRooms is in incremented
			cleanGetLine(fin, rooms[roomNdx].shortDesc);
			cleanGetLine(fin, rooms[roomNdx].longDesc);
		}
		else if (tag == "ITEM:") {
			string shortDesc, longDesc; // declare strings
			cleanGetLine(fin, shortDesc);
			cleanGetLine(fin, longDesc);
			addItem(shortDesc, longDesc, rooms[roomNdx].items, rooms[roomNdx].numItems);
		}
		else if (tag == "WIN_ITEM:") {
			cleanGetLine(fin, data);
			addItem(data, "", winData.winItem, winData.numWinItems);
		}
		else if (tag == "NORTH:")
			fin >> rooms[roomNdx].north;
		else if (tag == "SOUTH:")
			fin >> rooms[roomNdx].south;
		else if (tag == "EAST:")
			fin >> rooms[roomNdx].east;
		else if (tag == "WEST:")
			fin >> rooms[roomNdx].west;
		else if (tag == "WIN_ROOM:") 
			{ fin >> winData.winRoom; }
		else if (tag == "REMARK:")
			cleanGetLine(fin, data);
		else if (tag == "WIN_TEXT:") 
			{ cleanGetLine(fin, winData.winMessage); }
		else if (tag == "END:") { fin.close(); }
		else
			gameAbort("Unknown tag in " + fileName + ": " + tag);
		if (fin.fail())
			gameAbort("Failure while reading input file " + fileName);
		fin >> tag;

	}
}
//-----------------------------------------------------------------------------------------------------------------
//                                                     load data                                                   
//-----------------------------------------------------------------------------------------------------------------



//-----------------------------------------------------------------------------------------------------------------
//													  startUp()
// Given: An array of gameRooms, an inventory array, and a windata struct
// Modifies: The windata struct
// Purpose: Starts the game and initlalizes everything
//-----------------------------------------------------------------------------------------------------------------
void startUp(room gameRooms[], item inventory[], winDataStruct & winData) {
	int numRooms = MAX_ROOMS;
	printLogo();
	loadData(gameRooms, numRooms, winData);
	initItems(inventory);
	cout << "You fall asleep and dream of a place far away..." << endl;
	doLook(gameRooms[START_ROOM]);

}
//----------------------------------------------------------------------------------------------------------------
//													  startUp()
//----------------------------------------------------------------------------------------------------------------




//----------------------------------------------------------------------------------------------------------------
//														main()
// Given: Nothing
// Purpose: Controls the game
//----------------------------------------------------------------------------------------------------------------

int main() {
	// declare structures
	room gameRooms[MAX_ROOMS]; item inventory[MAX_ITEMS]; winDataStruct winData;
	int currentRoom = START_ROOM;

	//declare other variables
	string cmd, remainder, fileName; //cmd = command entered by user, remaider = remainder of the user input
	bool gameWasWon = false;
	int numRooms = 0, itemNum = 0;
	startUp(gameRooms, inventory, winData);

	//get first command input
	cmd = getCmd(remainder);

	//repeat until exit entered or game is won
	while (cmd != "exit" && !gameWasWon) {
		if (cmd == "help") {
			printHelp();
		}
		// add cases for other commands and invocations
		if (cmd == "north") {
			goNorth(currentRoom, gameRooms);
		}
		else if (cmd == "n") {
			goNorth(currentRoom, gameRooms);
		}
		else if (cmd == "south") {
			goSouth(currentRoom, gameRooms);
		}
		else if (cmd == "s") {
			goSouth(currentRoom, gameRooms);
		}
		else if (cmd == "west") {
			goWest(currentRoom, gameRooms);
		}
		else if (cmd == "w") {
			goWest(currentRoom, gameRooms);
		}
		else if (cmd == "east") {
			goEast(currentRoom, gameRooms);
		}
		else if (cmd == "e") {
			goEast(currentRoom, gameRooms);
		}
		else if (cmd == "look") {
			doLook(gameRooms[currentRoom], false);
		}
		else if (cmd == "l") {
			doLook(gameRooms[currentRoom], false);
		}
		else if (cmd == "take") {
			doTake(remainder, gameRooms[currentRoom].items, inventory, itemNum, gameRooms[currentRoom].numItems);
		}
		else if (cmd == "t") {
			doTake(remainder, gameRooms[currentRoom].items, inventory, itemNum, gameRooms[currentRoom].numItems);
		}
		else if (cmd == "inv") {
			doInventory(inventory, itemNum);
		}
		else if (cmd == "i") {
			doInventory(inventory, itemNum);
		}
		else if (cmd == "exa") {
			doExamine(remainder, gameRooms[currentRoom].items, inventory);
		}
		else if (cmd == "x") {
			doExamine(remainder, gameRooms[currentRoom].items, inventory);
		}
		else if (cmd == "drop") {
			doDrop(remainder, inventory, gameRooms[currentRoom].items, itemNum, gameRooms[currentRoom].numItems);
		}
		else if (cmd == "d") {
			doDrop(remainder, inventory, gameRooms[currentRoom].items, itemNum, gameRooms[currentRoom].numItems);
		}
		else {
			cout << "What??" << endl;
		}

		//check if game was won and print a win message or get next user input
		gameWasWon = gameWon(winData, gameRooms, currentRoom);
		if (gameWasWon == true) {
			cout << winData.winMessage << endl;
		}
		else {
			cmd = getCmd(remainder);
		}

	}
	system("pause");
	return 0;
}
//----------------------------------------------------------------------------------------------------------------
//														main()
//----------------------------------------------------------------------------------------------------------------