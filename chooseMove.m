%Board is a 3 X 3 tictactoe board with either 1's or 4's depending on the player number. The empty spaces are 0's
%function chooses move to play in depending on the maxScore for playing a move
%restriciton on player and opp, neither can be 0 and 2 * player != 3 * opp and
%vice-versa
function [board,score] = chooseMove(board, theta, PLAYER, OPP, EMPTY)
  scores = zeros(3,3);%tictactoe board of scores
  for i = 1:9
    check = false;
    if(board(i) == EMPTY)
      check = true;
      board(i) = PLAYER;
      scores(i) = calculateScore(board,theta,PLAYER, OPP);
    else
      scores(i) = NaN;
    endif
    if(check)
      board(i) = 0;
    endif
  endfor
  [maxColumn,indexRow] = max(scores);
  [max, indexColumn] = max(maxColumn);
  board(indexRow, indexColumn) = PLAYER;
  score = max;
end
      


