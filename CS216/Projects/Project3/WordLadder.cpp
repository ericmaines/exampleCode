#include "WordLadder.h"
#include <string>
#include <stack>

    //default constructor
    WordLadder::WordLadder()
    {
    }
    //alternate constructor
    WordLadder::WordLadder(const vector<string>& words)
    {
        for (int i = 0; i < words.size(); i++)
            insertWord(words[i]);
    }

    //to add a newWord in the collection
    void WordLadder::insertWord(string newWord)
    {
        wordsByLength[newWord.length()].push_back(newWord);
    }

    //return a graph from the group of words with the same lengths
    //there is an edge between two words
    //if two words are only different in a single letter
    Graph<string> WordLadder::WordsGraph(int length)
    {
        vector<string> lengthVec = wordsByLength[length];
        map<string, set<string>> adjMap;
        for (int i = 0; i< lengthVec.size(); i++)
        {
            string word = lengthVec[i];
            for (int j = 0; j < length; j++)
            {
                string temp = word;
                temp[j] = '?';
                adjMap[temp].insert(word);
            }
        }

        //cycle through each letter and make it blank
        Graph<string> lengthGraph;
        for (auto i = adjMap.begin(); i != adjMap.end(); i++)
        {
            set<string> adjSet = i->second;
            if (adjSet.size() > 1)
            {
                set<string>::iterator curr = adjSet.begin();
                for (int j = 1; j <adjSet.size(); j++)
                {
                    set<string>::iterator next = curr;
                    next++;
                    while (next != adjSet.end())
                    {
                        //add the word to the map at the location of the blank
                        lengthGraph.addEdge(*curr, *next);
                        next++;
                    }
                    curr++;
                }
            }
        }

         return lengthGraph;
    }

    // return a vector of words
    // which represents a word ladder from word1 to word2
    // if two words are only different in a single letter
 vector<string> WordLadder::getLadder(string word1, string word2)
{		
	vector<string> ladder; //the vector we will be returning
	if (word1.length() != word2.length())
	{
		cout << "The two words must be the same length!" << endl;
		return ladder;
	}

	// get a graph of the same length
	Graph<string> eqWords = WordsGraph(word1.length());

	// declare the distance and call the BFS search
	map<string,int> distance;
	map<string, string> go_through;
        int dis = eqWords.BFS(word1, word2, distance, go_through);

	// check to see if the distance is less than zero, otherwise return ladder
	if (dis < 0)
		return ladder;

	// if the distance is 0, add the word to the vector and then return the ladder
	if (dis == 0)
	{
		ladder.push_back(word1);
		return ladder;
	}

	// create a string stack to check the reverse path
	stack<string> reverse;
	reverse.push(word2);
	string nextVertex = word2;
	while (go_through[nextVertex] != word1)
	{
		reverse.push(go_through[nextVertex]);
		nextVertex = go_through[nextVertex];
	}
	reverse.push(word1);

	// traverse through the stack, and sort through each word
	while (!reverse.empty())
	{
		ladder.push_back(reverse.top());
		reverse.pop();
	}

	return ladder;
}
   
    
