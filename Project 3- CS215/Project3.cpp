//-----------------------------------------------------------
// CS 215-008 – Project 3
//-----------------------------------------------------------
// Author: Eric Maines
// Date: 23/04/2019
// Description: Sports record keeping using linked lists
// Assistance: I received help from fellow CS Students:
//Jack Teegarden, Jake Beckelhimer, and Bobby Bose
//-----------------------------------------------------------

#include<iostream>
#include<string>
#include<iomanip>
#include "team.h"
#include "teamList.h"
#include "league.h"
#include "game.h"
#include "gameList.h"
using namespace std;

//-------------------------------------------------------------------
//									doAbort()
//-------------------------------------------------------------------
void doAbort(string message) {
	cout << message << endl;
	system("pause");
	exit(1);
}
//----------------------------------doAbort()------------------------


int main() {
	league NCAA;
	NCAA.go();
	system("pause");
	return 0;
}