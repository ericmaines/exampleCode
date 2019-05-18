function [newTot, newPass]= playerTurn(playerName, totRoll ,totPass)
    %The player turn function keeps track of passes and randomly rolls
    if totPass > -1 %If there are any passes left
        rollStatus = passRoll(playerName); %run the pass roll function
        if rollStatus == 'P' %If passRoll returns P
            if totPass == 0
                rollNum = randi([1,6]); %Randomly roll a 6 sided die
                fprintf('rolled a %d \n', rollNum)
                totRoll = totRoll + rollNum; %add the result to the total
            elseif totPass > 0
                fprintf('Player %s passed the roll \n',playerName)
                totPass = totPass - 1; %subtract 1 from the total pass count
            end
        else %Otherwise
            rollNum = randi([1,6]); %Randomly roll a 6 sided die
            fprintf('rolled a %d \n', rollNum)
            totRoll = totRoll + rollNum; %add the result to the total 
        end 
    end
    newTot = totRoll; %update the new values for the output
    newPass = totPass;
        
end

