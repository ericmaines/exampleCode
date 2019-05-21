//---------------------------------------------------------------
//						class contactList
//---------------------------------------------------------------
//					Describes a contact object.
//---------------------------------------------------------------

#pragma once
#include<string>
using namespace std;
class contact {
public:
	contact();
	string getName();
	string getPhoneNum();
	void setName(string newName);
	void setPhoneNum(string newPhoneNum);
	void print();
private:
	string name;
	string phoneNum;
};



