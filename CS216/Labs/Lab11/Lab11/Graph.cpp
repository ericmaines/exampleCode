//Lab 11 
//Eric Maines

#include <queue>
#include "Graph.h"
using namespace std;

//Constructor. Do nothing
Graph::Graph() 
{
}


//Checks to see if an edge exists between v and w
bool Graph::hasEdge(char v, char w)
{
    bool isFound = false;
    if (adjMap.find(v) != adjMap.end())
    {
        if (adjMap.find(w) != adjMap.end())
        {
            if (adjMap[v].find(w) != adjMap[v].end())
            {
                isFound = true;
            }
        }
    }
    return isFound;
}

//Adds and edge between v and w
void Graph::addEdge(char v, char w)
{
    if (!(hasEdge(v,w)))
    {
        adjMap[v].insert(w);
    }
}
/*Apply BFS Traversal to find the shortest path from the given source to a destination t
 *return the distance from s to t
 *if there is no path from s to t, return -1 (NOPATH)
 *store the shortest path distance from the given source s to vertex w in distance map<w, distance>
 *store which next vertex to go through on the shortest path from w to the given source s.
 *it needs to take the path: w-->v...-->s                                       */
int Graph::BFS(char s, char t, map<char, int>& distance, map<char, char>& go_through)
{
    if (adjMap.find(s) == adjMap.end())
        return INVALID_VERTEX;
    for (auto i = adjMap.begin(); i != adjMap.end(); i++)
    {
        distance[i->first] = NOPATH;
    }
    queue<char> Q;
    distance[s] = 0;
    go_through[s] = s;
    Q.push(s);
    char current = s;

    while((!Q.empty()) && (current != t))
    {
        current = Q.front();
        Q.pop();
        for (auto i =  adjMap[current].begin(); i != adjMap[current].end(); i++)
        {
            if (distance[*i] == NOPATH)
            {
                distance[*i] = distance[current]+1;
                go_through[*i] = current;
                Q.push(*i);
            }
        }
    }
    return distance[t];
}


