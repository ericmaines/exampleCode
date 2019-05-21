//---------------------------------------------------------------
// class contactList
//---------------------------------------------------------------
// Describes a partial array of contact objects.
//---------------------------------------------------------------
#include "contactList.h"
#include "contact.h"
#include <string>
#include<iostream>
using namespace std;

contactList::contactList() { listName = "NONE"; listLength = 0; }
string contactList::getListName() { return listName; }
int contactList::getlistLength() { return listLength; }
contact contactList::getcontact(int num) { return cList[num]; }
void contactList::setListName(string newListName) { listName = newListName; }
void contactList::setlistLength(int newListLength) { listLength = newListLength; }
void contactList::setcontact(contact newcontact, int & index) { cList[index] = newcontact; }

int contactList::searchByName(string searchName){ 
	int foundIndex = -1;
	for (int i=0; i < maxContacts; i++) {
		if (cList[i].getName() == searchName ) {
			foundIndex = i;
		}
	}
	return foundIndex;
}
contact contactList::getContact(contactList list,int index){ 
	contact indexed;
	if (index >= 0 && index < maxContacts) {
		indexed = list.getcontact(index);
	}
	return indexed;
}

void contactList::addContact(contact addedContact, contactList & list){ 
	int length = list.getlistLength();
	if ((length) > (maxContacts-1)) {
		cout << "contactList::addContact() : max number of contacts reached" << endl
			<< addedContact.getName() << "not added!" << endl;
	}
	else {
		list.setcontact(addedContact, length);
		length++;
		list.setlistLength(length);
		cout << addedContact.getName() << " added! " << endl;
	}
}

void contactList::print(contactList & list){ 
	string listName = list.getListName();
	int listLength = list.getlistLength();
	contact testContact;
	if (listLength == 1) {
		cout << "List : " << listName << " (" << listLength << " contact " << ")" << endl;
	}
	else {
		cout << "List : " << listName << " (" << listLength << " contacts " << ")" << endl;
	}
	for (int j = 0; j < listLength; j++) {
		testContact = list.cList[j];
		testContact.print();
		cout << endl;
	}
}