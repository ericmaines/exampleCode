function [rollStatus] = passRoll(playerName)
% This function will determine if the player passes or rolls in the 21 game
fprintf('Player %s (P)ass or (R)oll? ',playerName) %asks the user to pass or roll
playerPass = input('','s');
playerPass = upper(playerPass); %convert the input to uppercase string for an easier time
while (playerPass ~= 'P') && (playerPass ~= 'R') %When the input is something we don't want...
    disp('Invalid response. P or R please \n') %We tell the player they need to fix themselves
    fprintf('Player %s (P)ass or (R)oll? ',playerName) %and hopefully they do
    playerPass = input('','s');
    playerPass = upper(playerPass); %This is for the same reason above- an easier time
end

if playerPass == 'P' %Evaluate the input from the player so that the output is correct
    rollStatus = 'P';
elseif playerPass == 'R'
    rollStatus = 'R';
end
end