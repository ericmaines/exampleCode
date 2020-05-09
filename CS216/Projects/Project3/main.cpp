#include <iostream>
#include <string>
#include <stack>
#include <algorithm>
#include <fstream>
#include "Graph.h"
#include "WordLadder.h"

using namespace std;

const int argNum = 2; //no naked literals to make Joiner proud

int main(int argc, char **argv)
{
    //Check whether the amount of input arguments is correct
    if ( argc != argNum)
    {
        cout << "Warning! Exactly one argument is needed to run this program. " << endl;
        cout << "Usage : " << argv[0] << " input_filename" << endl;
        return 1;
    }

    //get the input from the file
    ifstream fin;
    fin.open(argv[1]);
    if (fin.fail())
    {
        cout << "Error reading input file. Please fix the issue and try again" << endl;
        return 1;
    }
    
    //add the words from the file and create the ladder object
    string word;
    vector<string> wordList;
    while(!fin.eof())
    {
        getline(fin, word);
        wordList.push_back(word);
    }
    fin.close();

    //cout statements
    WordLadder myLadder(wordList);
    while(true)
    {
        string word1, word2;
        cout << "Welcome to the CS216 Word Ladder!" << endl
             << "Please give me two english words, and I will convert" << endl
             << "the first into the second by modifying one letter at a time." << endl
             << "Please type the FIRST word (or type enter to quit)." << endl;
        getline(cin, word1);
        if (word1.empty())
        {
            cout << "Have a beautiful day! See you next time..." << endl;
            return 2;
        }
            cout << "Please type the SECOND word (or type enter to quit)." << endl;
        getline(cin, word2);
        if (word2.empty())
        {
            cout << "Have a beautiful day! See you next time..." << endl;
            return 2;
        }
        //convert to all lowercase letters
        transform(word1.begin(), word1.end(), word1.begin(), ::tolower);
        transform(word2.begin(), word2.end(), word2.begin(), ::tolower);
        //add word 1 and word 2 to the wordladder
        vector<string> ladder = myLadder.getLadder(word1, word2);
        //do a bfs search and return the distance
        //if the distance is zero, there is no ladder
        int distance = ladder.size();
        if (distance > 1)
        {
            cout << "The ladder from " << word1 << " to " << word2 << " is " << distance << "-words long." << endl;
            //display the ladderi
            cout << "A ladder from [" << word1 << "] to [" << word2 << "]:" << endl;
            cout << ladder[0];
            for (size_t i = 1; i < ladder.size(); i++)
                {
                    cout << "--->" << ladder[i];
                }
            cout << endl;
        }
        else 
            {
            cout << "Invalid source and/or destination vertex!" << endl
                 << "There is no ladder from [" << word1 << "] to [" << word2 << "] " << endl;
             }
    }
    return 0;
}
