/*Project 2- CS216
 *Author: Eric Maines
 *Date: 11 November 2019
 *Section: 002
 *Purpose: To identify actors within a list of movies
 */
#include <fstream>
#include <iostream>
#include <string>
#include <cctype>
#include <set>
#include <map>
#include <sstream>
#include <iterator>
#include "imdb.h"

using namespace std;

void analyzeMovies(const IMDB& imdb); //declare both functions to be used later
void analyzeActors(const IMDB& imdb);

int main(int argc, char** argv)
{
    //Check whether the number of input arguments is correct
    if ( argc != 2 )
    {
        cout << "Warning: need exactly one command line argument" << endl;
        cout << "Usage  : "<<argv[0]<<" input_filename" << endl;
        return 1;
    }
    
    ifstream fin;
    fin.open(argv[1]);
    
    //Check whether the input file can be opened successfully 
    if (fin.bad())
    {
        cout << "Warning: cannot open file named " << argv[1] << "!" << endl;
        return 2;
    }
    

    //Read data from the input file and assume it has good data
    //each line of the input file: actorName, movie1, movie2, ...
    //create a pair <actorname, the set of movieTitles which the actor was in>
    //  and insert into IMDB object
    IMDB imdb;

    while(!fin.eof())
    {
        string line;
        getline(fin, line);
        string actorName, movieTitle;
        //Check to see if the next line is not empty, then tokenize it
        if (line.length() != 0)
        {
            istringstream iss(line);
            getline(iss, movieTitle, ';');

            //Extract extra white space
            iss>>ws;

            //Crease a new set of actors associated with movieTitle
            set<string> actors;

            while (getline(iss, actorName, ','))
            {
                actors.insert(actorName);
                //extract white space
                iss>>ws;
            }
            //insert the pair to IMDB object
            imdb.insert_a_movie(movieTitle, actors);
        }
    }
    //close input file
    fin.close();

    int  option;
    while (true) //this program will always loop
    {
        cout << "This application stores information about Actors and their movies. Please choose your option (Enter Q or q to quit):" << endl;
        cout << "1. Actors in movies" << endl;
        cout << "2. Actors and co-actors" << endl;
        cin >> option;
        cin.ignore(256, '\n');

        if (cin.fail()) //make sure the input is valid 
        {
            string inputCheck;
            cin.clear();
            cin >> inputCheck;
            if ( inputCheck == "Q" || inputCheck =="q")
                break;
            else
            {
                cout << "Invalid option!" << endl;
                continue;
            }
        }
        switch (option) //select our option based on the user input 
        {
            case 1: analyzeMovies(imdb);
                    break;
            case 2: analyzeActors(imdb);
                    break;
            default:
                    cout << "Invalid Option!" << endl;
        }
    }
    cout << "Thank you for using my program! Bye..." << endl;
    return 0;
}

//This function asks the user to input two movie titles
//then finds the matched two movies from the map
//and displays all the actors in either of the two movies
//if no matched movie, then display an error message and do nothing
void analyzeMovies(const IMDB& imdb)
{
    //Ask the user to input two movie titles to search for 
    string movie1, movie2;
    cout << "Please input the first movie title: ";
    getline(cin, movie1);
    cout << "Please input the second movie title: ";
    getline(cin, movie2);

    string matchedMovie1, matchedMovie2;                //this declares two strings to store the full titles of the movies
    matchedMovie1 = imdb.matchExistingMovie(movie1);    //   that the user input earlier
    matchedMovie2 = imdb.matchExistingMovie(movie2);

    if ((matchedMovie1.length() > 0) && (matchedMovie2.length() > 0))   //check to make sure both movies are found
    {
        cout << "Your input matches the following two movies: " << endl;
        cout << matchedMovie1 << endl;
        cout << matchedMovie2 << endl;
        cout << "Both movies are in the database, please continue..." << endl;
        bool escape = true;
        while (escape)                                  //loops while the escape variable is not activated
            {
                string usrOption = "";
                cout << "Please input your menu option: (Enter Q or q to quit)" << endl;
                cout << "A -- to print all of the actors in either of the two movies." << endl;
                cout << "O -- to print all of the actors who are only in one movie, but not both." << endl;
                cout << "C -- to print all of the actors who are in both movies." << endl;
                cout << "Please enter your choice: ";
                cin >> usrOption;
                

                //creates sets for the actors in both movies to be used in the coming cases
                set<string> actors_in_movie1 = imdb.find_actors_in_a_movie(matchedMovie1);
                set<string> actors_in_movie2 = imdb.find_actors_in_a_movie(matchedMovie2);
                
            if ((usrOption == "A") || (usrOption =="a"))
                {
                        set<string> all; // to store the union of actors_in_movie1 and actors_in_movie2 (R V S)
                            all = imdb.find_actors_in_a_movie(matchedMovie1);
                        for (auto i = actors_in_movie2.begin(); i != actors_in_movie2.end(); i++)
                            all.insert(*i);
                        //Display the actors in either one movie
                        cout << "All the actors in either of the two movies: " << endl;
                        for (auto i = all.begin(); i != all.end(); i++)
                            cout << *i << endl;
                }
            else if ((usrOption == "O") || (usrOption == "o"))//Prints all of the actors in one movie, but not both (R V S) - (R ^ S)
                {
                        set<string> intersection;
                        set<string> difference;
                        set<string>::iterator it;
                        for (auto i = actors_in_movie1.begin(); i != actors_in_movie1.end(); i++) //goes through the entire set
                        {
                            it = actors_in_movie2.find(*i); //searches for the actor in the second movie and returns the pointer
                            if ( (*it == *i) )  //if the found actor is not equal to *i and is found
                            {
                                intersection.insert(*i);
                            }
                        }

                        set<string> all; // to store the union of actors_in_movie1 and actors_in_movie2 (R V S)
                        all = imdb.find_actors_in_a_movie(matchedMovie1);
                        for (auto j = actors_in_movie2.begin(); j != actors_in_movie2.end(); j++)
                            all.insert(*j);

                        for (auto k = all.begin(); k != all.end(); k ++) //difference loop
                        {
                            it = intersection.find(*k);                 //checks to make sure no actors are the same
                            if ( *it != *k )
                            {
                                difference.insert(*k);
                            }
                        }
                        
                        // outputs the difference set
                        cout << "Actors only in one of the two movies: " << endl;
                        for (auto i= difference.begin(); i != difference.end(); i++)
                            cout << *i << endl;
                }
            else if ((usrOption == "C") || (usrOption == "c")) //Prints all of the actors who are in both movies (R ^ S)
                {
                        set<string> intersection;
                        set<string>::iterator it;
                        for (auto i = actors_in_movie1.begin(); i != actors_in_movie1.end(); i++)
                        {
                            it = actors_in_movie2.find(*i);
                            if (it != actors_in_movie2.end())   //finds the reference to the actor in the other set and if it is found,
                            {                                   //   the reference gets inserted into the intersection set
                                intersection.insert(*i);
                            }
                        }
                        cout << "Actors who are in both movies: " << endl;
                        for (it = intersection.begin(); it != intersection.end(); it++)
                            cout << *it << endl;
                }
            else if ((usrOption == "Q") || (usrOption == "q"))
                {
                    escape = false;
                }
            else
                {
                    cout << "I didn't understand what you put in. Please select one of these options:" << endl;
                }
            }
    }
        else //when the movie titles are not found
         {
            cout << "Error: one of your movie titles is invalid" << endl;
            return;
         }
}

void analyzeActors(const IMDB& imdb) //this functions does actor analysis
{
    cout << "Finding the co-actors of the actor by typing in his/her name: " << endl;
    string usrActor = "";
    getline(cin, usrActor);
    
    if (imdb.isExistingActor(usrActor))         //validate that the actor exists
    {
        set<string> usrActorMovies = imdb.find_movies_for_an_actor(usrActor); //creates a set for the movies the actor was in
        set<string> actorsInAMovie;
        for (auto i = usrActorMovies.begin(); i != usrActorMovies.end(); i++) //goes through the entire set
        {
            cout << "The co-actors of " << usrActor<< " in the movie \"" << *i << "\" are..." << endl;
            actorsInAMovie = imdb.find_actors_in_a_movie(*i);                 //creates a set of actors in the current movie
            for (auto j = actorsInAMovie.begin(); j != actorsInAMovie.end(); j++)
            {   //for each movie, the list of actors is displayed
                if ( *j != usrActor) //makes sure that the actor typed in is not output to the screen 
                {
                    cout << *j << endl;
                }
            }
            cout << "***********************************" << endl;
        }
    }
    else                                        //Otherwise output an error
    {
        cout << "The actor name you entered is not in the database " << endl;
    }
}
