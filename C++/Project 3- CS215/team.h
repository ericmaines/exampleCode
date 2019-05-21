#pragma once
#include <string>
#include<iostream>
using namespace std;

class team {
public:
	team();
	friend class teamList;
	friend class gameList;
	string getTeamID();
	void setTeamID(string newID);
	string getName();
	void setName(string newName);
	string getCoach();
	void setCoach(string newCoach);
private:
	string teamID, name, coach; 
	team* next;
	//team* head;
};

