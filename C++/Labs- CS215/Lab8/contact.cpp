//---------------------------------------------------------------
//						class contactList
//---------------------------------------------------------------
// Describes a contact object.
//---------------------------------------------------------------
#include "contact.h"
#include <iomanip>
#include <iostream>
using namespace std;

contact::contact() {
	name = "EMPTY";
	phoneNum = "";
}
string contact::getName() { return name; }
string contact::getPhoneNum() { return phoneNum; }
void contact::setName(string newName) { name = newName; }
void contact::setPhoneNum(string newPhoneNum) { phoneNum = newPhoneNum; }
void contact::print() { cout << setw(12) << left << getPhoneNum() << " " << setw(8) << right << getName(); }
