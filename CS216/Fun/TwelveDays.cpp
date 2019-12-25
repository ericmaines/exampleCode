#include <iostream>
#include <chrono>
#include <thread>
using namespace std;


string whichDay(int num)
{
    switch (num)
    {
        case 1:
            return ("First");
        case 2:
            return ("Second");
        case 3:
            return ("Third");
        case 4:
            return ("Fourth");
        case 5:
            return ("Fifth");
        case 6:
            return ("Sixth");
        case 7:
            return ("Seventh");
        case 8:
            return ("Eighth");
        case 9:
            return ("Ninth");
        case 10:
            return ("Tenth");
        case 11: 
            return ("Eleventh");
        case 12: 
            return ("Twelveth");
    }
}

string whichGift(int day)
{
    switch (day)
    {
        case 1:
            return("Partridge in a pear tree!");
        case 2:
            return("Turtle Doves...");
        case 3:
            return("French Hens...");
        case 4:
            return("Calling Birds...");
        case 5:
            return("GOLDEN RINGS!!!");
        case 6:
            return("Geese a-laying...");
        case 7:
            return("Swans a-swimming...");
        case 8:
            return("Maids a-milking...");
        case 9:
            return("Ladies Dancing...");
        case 10:
            return("Lords a-leaping...");
        case 11:
            return("Pipers piping...");
        case 12:
            return("Drummers Drumming...");
    }
}


int main()
{
    for (int day = 1; day<=12; day++)
    {
        cout << "On the " << whichDay(day) << " day of Christmas, my true love gave to me..." << endl;
        if (day == 1)
        {
            cout << "A " << whichGift(day) << endl;
        }
        else
        {
            for (int i = day; i >= 1; i--)
            {
                if (i == 1)
                    cout << "And a " << whichGift(1) << endl;
                else
                    cout << i << " " << whichGift(i) << endl;
                this_thread::sleep_for(chrono::milliseconds(1000));
            }
        }
        cout << endl << endl;
    }
}
