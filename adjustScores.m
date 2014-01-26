%newScores takes the finalboard and teh scores as input putting the new scores as output which is just all the scores shifted down one and the last score being a set winscore constant times the winner which was either the PLAYER or OPP
function newScores = adjustScores(finalBoard, scores, PLAYER, OPP, WINSCORE)
  newScores = scores;
  newScores(1) = [];
  winner = endGame(finalBoard, PLAYER, OPP);
  newScores(size(scores, 2) + 1) = (winner == PLAYER) * WINSCORE + (winner == OPP) * WINSCORE * - 1;
end
