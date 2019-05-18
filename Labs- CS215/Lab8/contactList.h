//---------------------------------------------------------------
// class contactList
//---------------------------------------------------------------
// Describes a partial array of contact objects.
//---------------------------------------------------------------
#pragma once
#include <string>
#include "contact.h"
const int maxContacts = 5, notFound = -1;
class contactList {
public:
	contactList();
	string getListName();
	int getlistLength();
	contact getcontact(int num);
	void setListName(string newListName);
	void setlistLength(int newListLength);
	void setcontact(contact newcontact, int & index);
	int searchByName(string searchName);
	contact getContact(contactList list, int index);
	void addContact(contact addedContact, contactList & list);
	void print(contactList & list);

private:
	string listName;
	int listLength;
	contact cList[maxContacts];
};
