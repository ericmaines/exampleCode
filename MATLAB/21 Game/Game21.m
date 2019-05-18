%{
EGR102HEADERCOMMENT - 21 Game
Author:    Team 3A: Eric Maines
Assignment: EGR 102-001 '21 Game'
Changed:    1 December, 2018
Purpose:
 to play the dice game '21'
%}

clear % to avoid confusion with other programs

player1 = input('Who is player 1? ', 's'); % get the names for each player
player2 = input('Who is player 2? ', 's');

round = 1; %initialize variables needed for the game
score1 = 0; %the scores for each player
score2 = 0;
pass1 = 2; %the number of passes for each player
pass2 = 2;

while (score1 < 21 && score2 < 21) %While either of the scores are below 21...
    fprintf('Round %d: ', round) %display the round number
    [score1, pass1] = playerTurn(player1, score1, pass1); %do player 1's turn
    if score1 < 21 %if player 1 hasn't lost...
        [score2, pass2] = playerTurn(player2, score2, pass2); %do player 2's turn
    end
    fprintf('%s total roll %d passes %d   |  %s total roll %d passes %d \n', player1, score1, pass1, player2, score2, pass2)
    %This fprintf displays the important stats for the game ^
    round = round + 1; %add 1 to the round number
end

if score1 > score2 %if player 1 had a bigger score...
    fprintf('%s wins! \n', player2) %player 2 wins!
else %otherwise...
    fprintf('%s wins! \n', player1) %player 1 wins!
end