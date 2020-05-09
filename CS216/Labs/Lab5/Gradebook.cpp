 /* 
 * File:   Gradebook.cpp
 * Course: CS216
 * Project: Lab 5 (as second part of Project 1)
 * Purpose: provide the implementation of the member functions of Gradebook class
 *
 * Author: Eric Maines
 *
 */
#include <iostream>
#include "Gradebook.h"
using namespace std;

// default constructor
Gradebook::Gradebook()
{
    vector<FinalGrade> scores;
}

// return the size of the current vector: scores, 
// which represents current gradebook
int Gradebook::getSize() const
{
    int GBsize = scores.size();
    return GBsize;
}
    
// insert a FinalGrade object, newFG, 
// into the end of the current gradebook
void Gradebook::insert(FinalGrade newFG)
{
    scores.push_back(newFG);
}

// return a FinalGrade object, 
// which holds the maximum score in the current gradebook
FinalGrade Gradebook::getMax() const
{
    double maxScore = 0;
    double curScore = 0;
    int iPos = 0;
    for (int i = 0; i < scores.size(); i++)
    {
        curScore = scores[i].getScore();
        if (curScore > maxScore)
        {
            maxScore = curScore;
            iPos = i;
        }
    }
    return scores[iPos].getScore();
}

// return a FinalGrade object,
// which holds the minimum score in the current gradebook
FinalGrade Gradebook::getMin() const
{
    double minScore = 300;
    for (int i = 0; i < scores.size(); i++)
    {
        if (scores[i].getScore() < minScore)
        {
            minScore = scores[i].getScore();
        }
    }
}
    
// return the average score among all scores in the current gradebook
double Gradebook::getAverage() const
{
    double sum = 0;
    double avg = 0;
    for (int i = 0; i < scores.size(); i++)
    {
        sum = sum + scores[i].getScore();
    }
    avg = sum / scores.size();
}

// For each FinalGrade object in the current gradebook, 
// its score will be increased by the given value 
// If the score reaches MAX_SCORE, it does not go beyond
void Gradebook::incrementScore(double value)
{
    double temp;
    double maxScore = 100.00;
    for (int i = 0; i < scores.size(); i++)
    {
        if ((scores[i].getScore()+value) > maxScore)
        {
            scores[i].setScore(maxScore);
        }
        else
        {
         double temp = scores[i].getScore() + value;
         scores[i].setScore(temp);
        }
    }
}
    
// print the FinalGrade objects in the current gradebook
void Gradebook::print() const
{
    for (int i = 0; i < scores.size(); i++)
    {
        scores[i].print();
    }
}
