//-------------------------------------------------------------------
//									teamList.cpp
// Function: This .cpp contains the definitions of methods for the 
// teamList class
//-------------------------------------------------------------------

#include <fstream>
#include "teamList.h"
#include "team.h"
#include <iomanip>
using namespace std;
void doAbort(string errormessage);


//-------------------------------------------------------------------
//									teamList()
// Function: Defines the variables for the gameList class
//-------------------------------------------------------------------
teamList::teamList() { head = NULL; tail = NULL; }
//teamList()


//-------------------------------------------------------------------
//									addTeam()
// Function: Given a new team object, adds it to the list
//-------------------------------------------------------------------
void teamList::addTeam(team newTeam){
	team * teamObj = new team;
	teamObj->teamID = newTeam.getTeamID();		//obtain values for each variable
	teamObj->name = newTeam.getName();
	teamObj->coach = newTeam.getCoach();
	
	if (head == NULL) {							//if the pointer is to the head of
		head = teamObj;							//the list, assign the head and tail
		tail = teamObj;							//to the teamobject pointer
	}
	else {										//otherwise, advance along the list
		tail->next = teamObj;
		tail = teamObj;
		
	}
}
//addGame()

//-------------------------------------------------------------------
//									readData()
// Function: Reads data from the teams.txt file 
//-------------------------------------------------------------------
void teamList::readData(){
	ifstream fin; string teamID, teamName, coachName;
	team newTeam;
	fin.open("teams.txt");										//open the file and abort if it fails
	if (fin.fail()) {
		doAbort("Failed to open file...teamList::readData()");
	}
	while (!fin.eof()) {										//Reads data until the end of the list
		getline(fin, newTeam.teamID);							//and adds the data using addTeam()
		getline(fin, newTeam.name);
		getline(fin, newTeam.coach);
		addTeam(newTeam);
	}
	fin.close();
}
//readData()


//-------------------------------------------------------------------
//									printTeams()
// Function: Prints the teams from the list
//-------------------------------------------------------------------
void teamList::printTeams(){
	team * currNode = head;
	cout << "--------------------- TEAMS (" << getNumTeams() << ") ---------------------" << endl
		<< "TID   TEAM                       COACH       " << endl
		<< "----  -------------------------  -----------------" << endl;
	while (currNode != NULL) {															//goes through the entire list and couts the data
		cout << setw(4) << left << currNode->getTeamID() << "  "
			<< setw(25) << left << currNode->getName()  << "  "
			<< setw(15) << left << currNode->getCoach() << endl;
		currNode = currNode->next;
	}
}
//printTeams()


//-------------------------------------------------------------------
//									getTeamRef()
// Function: Given a teamID, searches the list of teams for that 
// ID and returns a team object pointer
//-------------------------------------------------------------------
team* teamList::getTeamRef(string teamID){
	team *currNode = head;

	while (currNode != NULL) {					//goes through the list and compares each ID to the given string
		if (currNode->teamID == teamID) {
			return currNode;					//when found, the fucntion returns the team pointer
		}
		currNode = currNode->next;
	}
	return NULL;								//if not found, it returns NULL
}
//getTeamRef()


//-------------------------------------------------------------------
//									getNumTeams()
// Function: Gets the number of teams in the list of teams
//-------------------------------------------------------------------
int teamList::getNumTeams(){
	int numTeams = 0;
	team* currNode = head;
	while (currNode != NULL) {		//goes to the end of the list
		numTeams++;					//and increments nuMTeams each time
		currNode = currNode->next;
	}
	return numTeams;
}
//getNumTeams()