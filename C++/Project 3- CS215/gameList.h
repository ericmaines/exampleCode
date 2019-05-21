#pragma once
#include "game.h"
using namespace std;

class gameList
{
public:
	friend class game;
	friend class team;
	gameList();
	void addGame(game gameObj);
	void readGames(teamList listTeams);
	int getNumGames();
	int getNumWins(team* teamobj);
	int getNumLosses(team* teamobj);
	void printGame(team* teamobj);
	void writeGame();
private:
	game* gameHead;
	game* gameTail;
};

