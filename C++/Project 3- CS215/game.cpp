//-------------------------------------------------------------------
//									game.cpp
//
//			This .cpp contains the methods for the game class
//-------------------------------------------------------------------

#include "game.h"

//-------------------------------------------------------------------
//									game()
// Function: Constructor that initializes the values of each variable
// in the game class
//-------------------------------------------------------------------
game::game() { date = ""; team1score = 0; team2score = 0; team1 = NULL; team2 = NULL; next = NULL; }
//game()

//-------------------------------------------------------------------
//									getDate()
// Funtion: Gets the date
//-------------------------------------------------------------------
string game::getDate() { return date; }
//getDate()


//-------------------------------------------------------------------
//									getTeam1Score()
// Function: Get the score for team 1
//-------------------------------------------------------------------
int game::getTeam1Score() { return team1score; }
// getTeam1Score()


//-------------------------------------------------------------------
//									getTeam2Score()
// Function: Get the score for team 2
//-------------------------------------------------------------------
int game::getTeam2Score() { return team2score; }
// getTeam2Score()



//-------------------------------------------------------------------
//									newDate()
// Function: Sets the value of date to a given value
//-------------------------------------------------------------------
void game::setDate(string newDate) { date = newDate; }
// newDate()



//-------------------------------------------------------------------
//									setTeam1Score()
// Function: Set the score for team 1
//-------------------------------------------------------------------
void game::setTeam1Score(int newTeam1Score) { team1score = newTeam1Score; }
// setTeam1Score()


//-------------------------------------------------------------------
//									getTeam2Score()
// Function: Set the score for team 2
//-------------------------------------------------------------------
void game::setTeam2Score(int newTeam2Score) { team2score = newTeam2Score; }
//setTeam2Score()



//-------------------------------------------------------------------
//									setDetails()
// Function: Set the details for the game class
//-------------------------------------------------------------------
void game::setDetails(string newDate, team* firstTeam, team* secondTeam, int points1, int points2) {
	date = newDate;
	team1= firstTeam;
	team2 = secondTeam;
	team1score = points1;
	team2score = points2;
}
// setDetails()


//-------------------------------------------------------------------
//									setTeam1()
// Function: Set the pointer for team 1
//-------------------------------------------------------------------
void game::setTeam1(team* newTeam1) { team1 = newTeam1; }
// setTeam1()



//-------------------------------------------------------------------
//									setTeam2()
// Function: Set the pointer for team 2
//-------------------------------------------------------------------
void game::setTeam2(team* newTeam2) { team2 = newTeam2; }
// setTeam2()
