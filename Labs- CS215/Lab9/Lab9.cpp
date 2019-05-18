//------------------------------------------------------------------------------------
//											CS 215- 008
//										Lab 9: Eric Maines
//------------------------------------------------------------------------------------
#include <iostream>
using namespace std;

// CLASS NODE INTERFACE
class node {
public:
	friend class stack; // allow methods of class stack to access private members
	node();			    // give initial values to data members
private:
	int  data;			// data for this node
	node * next;		// pointer to the next node in the list
};

// CLASS NODE IMPLEMENTATION (write the constructor here)
node::node() { data = 0; node * top = NULL; }




// CLASS STACK INTERFACE
class stack {
public:
	stack();			// init stack to empty stack
	void push(int x);	// allocate a new node, copy x into it, put it on the top of the stack
	int  pop();			// deallocate the top node and return the data that was in it.
						// print "Stack empty" and return 0 when the stack is empty.
	void print();		// print the data of all nodes, left to right, starting with the top.
private:
	node * top;			// pointer to top node of the stack, or NULL when stack is empty
};

// CLASS STACK IMPLEMENTATION (write methods here)
stack::stack() {
	top = NULL;
}
void stack::push(int x) {
	node *n = new node;      //allocate
	n->data = x;			 //populate
	n->next = top;			 //connect new node to old top
	top = n;				 //new node is the new top

}
int  stack::pop() {
	if (top == NULL) {
		cout << "Stack empty" << endl;
	}
	else {
		int oldData = top->data; //save
		node *n = top;           //point to the old top
		top = top->next;         //point top to next
		delete n;				 //deallocate old top
		n = NULL;
		return oldData;
	}
	return 0;
}
void stack::print() {
	cout << "STACK (Top first): " ;
	node * currentNode = top;
	while (currentNode != NULL) {
		cout << currentNode->data << " ";
		currentNode = currentNode->next;
	}
	cout << endl;
}


// MAIN
int main() {
	stack s;
	int data, opt = 0;
	const int exit = 4;
	while (opt != exit) {
		cout << "\n1. Push\n2. Pop\n3. Print\n4. Exit\n===> ";
		cin >> opt;
		switch (opt) {
		case 1: cout << "Enter data to push: ";
			cin >> data;
			s.push(data);
			break;
		case 2: data = s.pop();
			cout << "Popped: " << data << endl;
			break;
		case 3: s.print(); break;
		case exit: cout << "Bye!\n"; break;
		default:   cout << "Invalid option, try again\n";
		}
	}
	system("pause");
	return 1;
}