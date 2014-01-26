%function finds the score of the given board using theta
%function assumes that the empty space is zero.
function score = calculateScore(board, theta, PLAYER, OPP)
  allSums = zeros(3,3);
  allSums(1,:) = sum(board,2);
  allSums(2,:) = sum(board);
  allSums(3,1)  = sum(diag(board));
  allSums(3,2) = sum(diag(flipud(board)));
  %first one is the constant so it is not changed
  % second is 2X player, then 2X OPP, 3X Player, 3X OPP
  results = ones(1,5);
  % realize that it's confusing to name the sums of all rows, columns
  % and diagonals sums but that's the best name for it
  results(2) = sum(sum(allSums == (2 * PLAYER)));
  results(3) = sum(sum(allSums == (2 * OPP)));
  results(4) = sum(sum(allSums == (3 * PLAYER)));
  results(5) = sum(sum(allSums == (3 * OPP))); 
  score = results * theta;
end
