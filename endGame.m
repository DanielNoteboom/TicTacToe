%seemingly redunddant since these scores are already calculated inside the 
function winner = endGame(board, PLAYER, OPP)
  allSums = findSums(board);
  if(sum(sum(allSums == (3 * PLAYER))) == 1)
    winner = PLAYER;
  else if(sum(sum(allSums == (3 * OPP))) == 1)
    winner = OPP;
  else
     winner = 0;
  endif
end
  
