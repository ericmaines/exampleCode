/*CS216 Project 1
 *Eric Maines
 *Section: 002
 *30 September, 2019
 *Purpose: To create a gradebook curve simulator for Professor Pike
 */

#include "FinalGrade.h"
#include "Gradebook.h"
#include <vector>
#include <iostream>
#include <string>
#include <iomanip>
#include <cmath>

using namespace std;

double calculateGradebook(const vector<FinalGrade>& gradebook, double& maxScore, double& minScore);

int main() 
{
    Gradebook CS216gradebook_oregano;
    double input;        //user input
    double eAvg;         //expected average from the user
    string inputCheck;   //Used to check the user input
    bool loop = true;    //drives the loop
    int i = 0;           //increments the counting for user input to make it more convenient
    while (loop)
    {
        cout << "Please input grade "<< ++i << " (0-100). Type 'Q' or 'q' to quit" << endl;
        cin >> input;

    //evaluating to see if the user puts in the right input
        if (cin.fail())
        {   
            cin.clear();
            cin >> inputCheck;
            cin.ignore(256,'\n');
            if (inputCheck[0] == 'Q' || inputCheck[0] == 'q')
            {
            break;
             }
             if (cin.fail());
             {
                cout << "That was not a number! Please give me a number between 0 and 100." << endl;
                continue;
             }
        }
    // Range check for the score between 0-100
        if (input < MIN_SCORE || input > MAX_SCORE)
        {
            cout << "It is not possible to have that grade in this class. Make sure your grade is between 0 and 100." << endl;
        }
        else 
        {
            FinalGrade FGinput(input);
            CS216gradebook_oregano.insert(FGinput); //insert the new value into the gradebook with the insert function
        }
    }

     // Evaluate whether or not the gradebook is empty
        if (CS216gradebook_oregano.getSize()== 0 )
            {
                cout << "There are no grades in this gradebook!" << endl;
                cout << "Thank you for using the Grade Calculator Machine (TM)" << endl;
             return 1;                      //If empty, the program quits
            }

    while (loop)
    {
        cout << fixed << setprecision(2);
        double oAvg = CS216gradebook_oregano.getAverage(); //this variable exists for easier comparison later in the program
        oAvg =((floor(((oAvg)*100)+0.5))/100); //This fixes the average value so it can be properly compared
        cout << "The original average was " << CS216gradebook_oregano.getAverage() << endl;
        cout << "What is the average you expect? Type 'Q' or 'q' to quit " << endl;
        cin >> eAvg;
        //input validation 
        //same validation as above
        if (cin.fail())
        {
            cin.clear();
            cin >> inputCheck;
            cin.ignore(256, '\n');
            if (inputCheck[0] == 'Q' || inputCheck[0] == 'q')
            {
                break;
            }
            else
            {
                cout << "That was not a number! Please put in a number between 0 and 100 for your expected average!" << endl;
                continue;
            }
        }
        //range check 0-100
        if (eAvg < MIN_SCORE || eAvg > MAX_SCORE)
        {
            cout << "This average is not possible. Please enter an expected average between 0 and 100" << endl;
        }
        //check if equal
        if (eAvg == oAvg)
        {
            cout << "The scores are perfect! There is no need for a curve." << endl;
        }
        //check if smaller
        if (eAvg < oAvg)
        {
            cout << "This average is too low. Please enter an expected average larger than this!" << endl;
        }
        //check if larger
        if (eAvg > oAvg && eAvg <= MAX_SCORE)
        {
            // curve calculation
            // If the expected average is larger, takes the expected average and subtracts it from the true average
            // otherwise no change is needed
            double curve = 0;
            Gradebook CS216gradebook_curved = CS216gradebook_oregano;
            double trueAvg = CS216gradebook_oregano.getAverage();
            curve = eAvg - (CS216gradebook_oregano.getAverage());
            CS216gradebook_curved.incrementScore(curve);
            //Not empty case
            //Runs values through for the average, letter grade
            //and lowest/highest scores
            cout << endl << endl;
            cout << "Original CS 216 Gradebook:" << endl;
            cout << fixed << setprecision(2);
            CS216gradebook_oregano.print();
            cout << endl;
            cout << "There were " << CS216gradebook_oregano.getSize() << " total scores" << endl;
            cout << "Original average              : " << CS216gradebook_oregano.getAverage() << endl;
            cout << "The original highest score was: "; CS216gradebook_oregano.getMax().print();
            cout << "The original lowest score was  : "; CS216gradebook_oregano.getMin().print();

            //curved gradebook
            cout << endl << endl;
            cout << fixed << setprecision(2);
            cout << "The expected average was " << eAvg << endl;
            cout << "Curved CS 216 Gradebook" <<  endl;
            CS216gradebook_curved.print();
            cout << endl;
            cout << "There were " << CS216gradebook_curved.getSize() << " total scores" << endl;
            cout << "Curved Average was           : " << CS216gradebook_curved.getAverage() << endl;
            cout << "The highest curved score was : "; CS216gradebook_curved.getMax().print();
            cout << "The lowest curved score was  : "; CS216gradebook_curved.getMin().print(); 

            cout << endl << endl << endl;
        }
    }
    cout << "Thank you for using the Grade Curve Calculator(TM)!"<< endl;
    return 0;
}
