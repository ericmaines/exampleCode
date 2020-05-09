/* 
 * File: smartReverse.cpp
 * Purpose: provide the implementation of the smartReverse class
 *
 * Author: Eric Maines
 *
 */

#include <stack>
#include "smartReverse.h"
#include <iostream>
// default constructor
smartReverse::smartReverse()
{
       	str = "";
}

// constructor: initialize str with ini_str passing as a parameter
smartReverse::smartReverse(string ini_str)
{
	str = ini_str;
}

// return the current value of the private data member:

string smartReverse::getString() const
{
	return(str);
}

// set the value of str to be the passed in parameter input_str
void smartReverse::setString(string input_str)
{
	str = input_str;
}

// return a reversed string from str
// using a loop to implement
// Note that str has not been changed
string smartReverse::rev() const
{
	string reversed;
	int strLen = str.length();
	for (int i = (strLen); i > 0; i--)
    {
		reversed +=  str[i-1];
	 }
        return reversed;   
}
// return a reversed string from str
// using recursion to implement
// Note that str has not been changed
string smartReverse::rev_recursive() const
{
        static int strLen=str.length();
        static string tempString;
        if (strLen>0){
        tempString += str[strLen-1];
        strLen --;
        rev_recursive();
        }
        return tempString;
}

// return a reversed string from str
// using a stack to implement
// Note that str has not been changed
string smartReverse::rev_stack() const
{
    stack<char> revStack;
    string tempString;
    for(int i = 0; i < str.length(); i++){
        revStack.push(str[i]);
    }
    for(int j = 0; j < str.length(); j++){
        tempString += revStack.top();
        revStack.pop();
    }
    return tempString;
}

