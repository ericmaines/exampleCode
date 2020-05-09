/*
 * course: CS216-00x
 * Project: Demonstration of using GDB
 * Purpose: Provide some operations on strings using recursive function 
 *          Help students deeply understand the code   
 * Author: (your name)
 */

#include <iostream>
#include <string>

using namespace std;

string changeStr(string old);

int main()
{
    string yourstring;
    cout << "Please input your string, and I am going to change it:" << endl;
    getline(cin, yourstring);

    cout << "Your string has been changed into: " << endl;
    cout << changeStr(yourstring) << endl;

    return 0;
}

// provide some basic operation on the passing-in parameter
// and return a modified string
// using a recursive function
string changeStr(string old)
{
    if (old.length() <= 1)
        return old+old;
    string mid = changeStr(old.substr(1, old.length()-1));
    return old[0]+mid+old[0];
}
