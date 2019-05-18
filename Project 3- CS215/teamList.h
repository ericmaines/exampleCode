#pragma once
#include "team.h"
class teamList
{
public:
	friend class team;
	friend class league;
	teamList();
	void addTeam(team newTeam);
	void readData();
	void printTeams();
	team* getTeamRef(string teamID);
	int getNumTeams();
private:
	team* head;
	team* tail;
};

