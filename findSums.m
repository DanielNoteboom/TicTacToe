%Takes a 3 X 3 board as input and returns the sums of the rows in the first row the sums of the columns in the second row, and the sums of the diagonals in the third row of a 3 X 3 matrix. (Note that the last index is empty).
function allSums = findSums(board)
  allSums = zeros(3,3);
  allSums(1,:) = sum(board,2);
  allSums(2,:) = sum(board);
  allSums(3,1)  = sum(diag(board));
  allSums(3,2) = sum(diag(flipud(board)));
end
