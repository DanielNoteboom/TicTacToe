%Board is a 3 X 3 tictactoe board with either 1's or 2's depending on the player number. The empty spaces are 0's
%Player is the player number of the board which is either zero or one.
function board = fixedMove(board, player)
  for i = 0:8
    if(board(idivide(i,3,"fix") + 1, mod(i, 3) + 1) == 0)
      board(idivide(i, 3, "fix") + 1, mod(i, 3) + 1) = player;
      break;
    endif
  endfor
end
      


