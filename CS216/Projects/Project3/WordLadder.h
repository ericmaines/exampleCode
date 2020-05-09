#include "Graph.cpp"
#include <vector>

class WordLadder
{
    public:
        WordLadder();
        WordLadder(const vector<string>& words);
        void insertWord (string newWord);
         // return a graph from the group of words with the same lengths = length  
         // there is an edge between two words      
         // if two words are only different in a single letter   
         Graph<string> WordsGraph(int length); 
         // return a vector of words    
         // which represents a word ladder from word1 to word2    
         // any two adjacent words along the ladder differ in only one character    
         vector<string> getLadder(string word1, string word2);   
    private:
           // Group all the words by the number of characters in each word:       
           // the private data member represents a mapping from the length (key)    
           // to a vector of words which contain length number of characters (value)   
           map<int, vector<string> > wordsByLength;

};
