import 'dart:io';
import 'dart:math';


  // Exercise 18

void main() {
 
  List<List<int>> gameBoard = [
    [1, 2, 0],
    [2, 1, 0],
    [2, 1, 1]
  ];
  int result18 = checkWinner(gameBoard);
  print("Exercise 18: Player $result18 wins!");
}

int checkWinner(List<List<int>> gameBoard) {
  for (int i = 0; i < 3; i++) {
    if (gameBoard[i][0] != 0 && gameBoard[i][0] == gameBoard[i][1] && gameBoard[i][1] == gameBoard[i][2]) {
      return gameBoard[i][0];
    }
    if (gameBoard[0][i] != 0 && gameBoard[0][i] == gameBoard[1][i] && gameBoard[1][i] == gameBoard[2][i]) {
      return gameBoard[0][i];
    }
  }
  if (gameBoard[0][0] != 0 && gameBoard[0][0] == gameBoard[1][1] && gameBoard[1][1] == gameBoard[2][2]) {
    return gameBoard[0][0];
  }
  if (gameBoard[0][2] != 0 && gameBoard[0][2] == gameBoard[1][1] && gameBoard[1][1] == gameBoard[2][0]) {
    return gameBoard[0][2];
  }
  return 0;
}
