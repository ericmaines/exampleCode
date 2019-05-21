//-------------------------------------------------------------------
//									team.cpp
//			This .cpp defines the methods for the team class
//-------------------------------------------------------------------

#include "team.h"

//-------------------------------------------------------------------
//								team()
// Function: Set the default values for the private variables in this
// class
//-------------------------------------------------------------------
team::team() { teamID = ""; name = ""; coach = ""; next = NULL; }
//team()



//-------------------------------------------------------------------
//									getTeamID()
// Function: Gets the ID for a team
//-------------------------------------------------------------------
string team::getTeamID() { return teamID; }
// getTeamID()


//-------------------------------------------------------------------
//									setTeamID()
// Function: Sets the team ID given a new one
//-------------------------------------------------------------------
void team::setTeamID(string newID) { teamID = newID; }
// setTeamID()


//-------------------------------------------------------------------
//									getName()
// Function: Get the name for a team
//-------------------------------------------------------------------
string team::getName() { return name; }
//getName()


//-------------------------------------------------------------------
//									setName()
// Function: Sets the name for the Team
//-------------------------------------------------------------------
void team::setName(string newName) { name = newName; }
//setName()


//-------------------------------------------------------------------
//									getCoach()
// Function: Gets the name of the coach of the team
//-------------------------------------------------------------------
string team::getCoach() { return coach; }
// getCoach()


//-------------------------------------------------------------------
//									setCoach()
// Function: Sets the name of the coach given a new one
//-------------------------------------------------------------------
void team::setCoach(string newCoach) { coach = newCoach; }
// setCoach()
