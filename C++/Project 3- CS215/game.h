#pragma once
#include "team.h"
#include "teamList.h"
class game {
public:
	friend class teamList;
	friend class gameList;
	game();
	string getDate();
	int getTeam1Score();
	int getTeam2Score();
	void setTeam1(team* newTeam1);
	void setTeam2(team* newTeam2);
	void setDate(string newDate);
	void setTeam1Score(int newTeam1Score);
	void setTeam2Score(int newTeam2Score);
	void setDetails(string newDate, team* team1, team* team2, int points1, int points2);
private:
	string date;
	int team1score, team2score;
	team* team1;
	team* team2;
	game * next;
	
};

