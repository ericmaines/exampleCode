//-------------------------------------------------------------------
//									gameList.cpp
// Function: This .cpp contains the definitions of methods for the 
// gameList class
//-------------------------------------------------------------------

#include "gameList.h"
#include "game.h"
#include <fstream>
#include <string>
#include <iomanip>

//Mentions doAbort() so that it can be used in this .cpp
void doAbort(string errormessage);
//doAbort()


//-------------------------------------------------------------------
//									gameList()
// Function: Defines the variables for the gameList class
//-------------------------------------------------------------------
gameList::gameList() { gameHead = NULL; gameTail = NULL; }
// gameList()



//-------------------------------------------------------------------
//									addGame()
// Function: Given a game object, adds a game to the list of games
//-------------------------------------------------------------------
void gameList::addGame(game gameObj){
	game  * newGame = new game;               //dynamically creates a pointer to a game object
	newGame->date = gameObj.date;			  //sets each value of the newGame object to the value of the gameObj object
	newGame->team1 = gameObj.team1;
	newGame->team1score = gameObj.team1score;
	newGame->team2score = gameObj.team2score;
	newGame->team2 = gameObj.team2;
	
	if (gameHead == NULL) {					  // if the head of the list is null, this assigns it to 
		gameHead = newGame;					  // the newGame pointer
		gameTail = newGame;
		newGame = NULL;
	}
	else {									  // otherwise, the next pointer is set to newGame
		gameTail->next = newGame;
		gameTail = newGame;
	}
}
// addGame()


//-------------------------------------------------------------------
//									readGames()
// Function: Given a list of teams, this reads the games from a 
// text file and adds it to the list
//-------------------------------------------------------------------
void gameList::readGames(teamList listTeams){
	ifstream fin; string team1ID, team2ID;			//Declare variables to be used in the function
	game newGame;
	fin.open("games.txt");							//Try to open the games.txt file
	if (fin.fail()) {								//If the file doesn't exist, the game aborts
		doAbort("Failed to open file...readGames");
	}
	while (!fin.eof()) {							//Goes through the entire file and assigns the values
		fin >> newGame.date;						//it gets to the variables declared earlier
		fin >> team1ID;
		newGame.team1 = listTeams.getTeamRef(team1ID);
		fin >> newGame.team1score;
		fin >> team2ID;
		newGame.team2 = listTeams.getTeamRef(team2ID);
		fin >> newGame.team2score;
		addGame(newGame);
	}
	fin.close();									//Close the game.txt file
}
// readGames()



//-------------------------------------------------------------------
//									getNumGames()
// Function: Gets the number of games in the game list
//-------------------------------------------------------------------
int gameList::getNumGames(){
	game * currNode = gameHead; int n = 0;
	while (currNode != NULL) {					//increments the n variable each time the loop iterates 
		n++; 
		currNode = currNode->next;
	}
	return n;
}
//getNumGames()


//-------------------------------------------------------------------
//									getNumWins()
// Function: Given a team object, gets the number of wins the team has
//-------------------------------------------------------------------
int gameList::getNumWins(team* teamobj) { 
	game* currNode = gameHead;
	int n = 0;
	while (currNode != NULL) {
		if (teamobj->getTeamID() == currNode->team1->getTeamID()) { //Checks to see if the team provided is the team we are trying to analyze
			if (currNode->getTeam1Score() > currNode->getTeam2Score()) { //if the score for this team is greater than the score for team 2
				n++;													 //increment the counter variable by 1
			}
		}
			else if (teamobj->getTeamID() == currNode->team2->getTeamID()) { //if the score for this team is greater than the score for team 1
				if (currNode->getTeam2Score() > currNode->getTeam1Score()) { //and the score for team 2 is greater than the score for team 1
					n++;													 //increment the counter variable by 1
				}
			}
			currNode = currNode->next;										 //advance to the next position in the lst
	}
	return n; 
}
//getNumWins()


//-------------------------------------------------------------------
//									getNumLosses()
// Function: Given a team object, gets the number of losses for a team
//-------------------------------------------------------------------
int gameList::getNumLosses(team* teamobj) {
	game* currNode = gameHead;
	int n = 0;
	while (currNode != NULL) {
		if (teamobj->getTeamID() == currNode->team1->getTeamID()) { //Checks to see if the team provided is the team we are trying to analyze
			if (currNode->getTeam1Score() < currNode->getTeam2Score()) {		//if the score for this team is less than the score for team 2
				n++;															//increment the counter variable by 1
			}
		}
			else if (teamobj->getTeamID() == currNode->team2->getTeamID()) {	//if the score for this team is less than the score for team 1
				if (currNode->getTeam2Score() < currNode->getTeam1Score()) {	//and the score for team 2 is less than the score for team 1
					n++;														//increment the counter variable by 1
				}
			}
			currNode = currNode->next;											//advance to the next position in the list
	}
	return n;
}
//getNumLosses()


//-------------------------------------------------------------------
//									printGame()
// Function: Given a team object, prints each game in the list
//-------------------------------------------------------------------
void gameList::printGame(team* teamobj) {
	game* currNode = gameHead;

	if (teamobj == NULL) {															// if the pointer to the team object is null
		cout << "---------- GAMES (" << getNumGames() << ") ----------" << endl		//print the list of games using getNumGames()
			<< "DATE        TEAM  SC   TEAM   SC " << endl							//this is to print the ENTIRE list
			<< "----------  ----  ---  -----  ---" << endl;
		while (currNode != NULL) {
			cout << setw(10) << left << currNode->date << "  "
				<< setw(4) << left << currNode->team1->getTeamID() << "  "
				<< setw(3) << left << currNode->team1score << "  "
				<< setw(4) << left << currNode->team2->getTeamID() << "  "
				<< setw(3) << left << currNode->team2score << "  " << endl;
			currNode = currNode->next;
		}
	}
	else {
		cout << "---------- GAMES (" << (getNumLosses(teamobj) + getNumWins(teamobj))<< ") ----------" << endl	//otherwise we use the number of wins and losses
			<< "DATE        TEAM  SC   TEAM   SC " << endl														//for the total number of games
			<< "----------  ----  ---  -----  ---" << endl;														//this is to print games for a specific team
		while (currNode != NULL) {
			if (teamobj->getTeamID() == currNode->team1->getTeamID()) {
				cout << setw(10) << left << currNode->date << "  "
					<< setw(4) << left << currNode->team1->getTeamID() << "  "
					<< setw(3) << left << currNode->team1score << "  "
					<< setw(4) << left << currNode->team2->getTeamID() << "  "
					<< setw(3) << left << currNode->team2score << "  " << endl;
			}
			else if (teamobj->getTeamID() == currNode->team2->getTeamID()) {
				cout << setw(10) << left << currNode->date << "  "
					<< setw(4) << left << currNode->team1->getTeamID() << "  "
					<< setw(3) << left << currNode->team1score << "  "
					<< setw(4) << left << currNode->team2->getTeamID() << "  "
					<< setw(3) << left << currNode->team2score << "  " << endl;
			}
			currNode = currNode->next;
		}

}

}
//printGames



//-------------------------------------------------------------------
//									writeGame()
// Function: Writes all of the games to an output file
//-------------------------------------------------------------------
void gameList::writeGame(){
	ofstream fout;
	game* thisGame = gameHead;
	fout.open("games2.txt");
	while (thisGame != NULL) {
		fout << thisGame->getDate() << "  " 
			<< thisGame->team1->getTeamID() << "   " 
			<< thisGame->team1score << " " 
			<< thisGame->team2->getTeamID() << "    " 
			<< thisGame->team2score << endl;
		thisGame = thisGame->next;
	}
	fout.close();
}
//writeGame()