/*
 * Course: CS216-00x
 * Project: Lab Assignment x
 * Date: 09/06/2019
 * Purpose: To display a greeting message, then ask the user to type      
 *          a message to display on the computer screen
 * Author: (your name)
 */

#include <iostream>
#include <string>

using namespace std;

int main()
{
    cout << "Hello, World!" << endl;

    // First, ask the user how many times he/she wants to display the message
    int times = 0;
    cout << "How many times do you want to display your message?";
    cin >> times;

    if (times <= 0)
    {
        cout << "Your input is invalid, and your message will only be displayed once!" << endl;
        times = 1;
    }
    // Second, ask the user to input a text line from the keyboard
    // then display to the computer screen n times
    // where n is the value the user input ealier, stored in times
    string input;
    cout << "Please type what you want to display to the computer screen: ";
    getline(cin, input);
    
    cout << "Here is what you want to tell us (and your message will be displayed " << times << " time(s)) : " << endl;
    for (int i=0; i < times; i++)
    {
        cout << "\" " << input << " \""<< endl;
    }
    return 0;
}


