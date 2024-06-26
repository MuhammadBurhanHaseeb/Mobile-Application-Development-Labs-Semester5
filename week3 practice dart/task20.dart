import 'dart:io';
import 'dart:math';


  // Exercise 20

void main() {

  playTicTacToe();
}
void playTicTacToe() {
  List<List<int>> gameBoard = List.generate(3, (_) => List.generate(3, (_) => 0));
  int currentPlayer = 1;
  int winner = 0;
  int moves = 0;

  print("Exercise 20 (Tic Tac Toe)");
  print("Player 1 (X) vs Player 2 (O)");

  while (winner == 0 && moves < 9) {
    printBoard(gameBoard);

    stdout.write("Player $currentPlayer, enter row (0-2): ");
    int row = int.parse(stdin.readLineSync()!);
    stdout.write("Player $currentPlayer, enter column (0-2): ");
    int col = int.parse(stdin.readLineSync()!);

    if (row < 0 || row > 2 || col < 0 || col > 2 || gameBoard[row][col] != 0) {
      print("Invalid move. Try again.");
      continue;
    }

    playerMove(gameBoard, currentPlayer, row, col);
    winner = checkWinner(gameBoard);
    moves++;
    currentPlayer = 3 - currentPlayer; // Switch player (1 -> 2, 2 -> 1)
  }

  printBoard(gameBoard);

  if (winner == 0) {
    print("It's a draw!");
  } else {
    print("Player $winner (X) wins!");
  }
}

void printBoard(List<List<int>> gameBoard) {
  print("Current Game Board:");
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      stdout.write(gameBoard[i][j] == 0 ? ' - ' : (gameBoard[i][j] == 1 ? ' X ' : ' O '));
      if (j < 2) stdout.write('|');
    }
    print('');
    if (i < 2) print('-----------');

  }
}
void playerMove(List<List<int>> gameBoard, int player, int row, int col) {
  if (gameBoard[row][col] == 0) {
    gameBoard[row][col] = player;
  }
}

int checkWinner(List<List<int>> gameBoard) {
  // Check rows and columns for a winner
  for (int i = 0; i < 3; i++) {
    // Check rows
    if (gameBoard[i][0] == gameBoard[i][1] && gameBoard[i][1] == gameBoard[i][2] && gameBoard[i][0] != 0) {
      return gameBoard[i][0];
    }
    // Check columns
    if (gameBoard[0][i] == gameBoard[1][i] && gameBoard[1][i] == gameBoard[2][i] && gameBoard[0][i] != 0) {
      return gameBoard[0][i];
    }
  }

  // Check diagonals
  if (gameBoard[0][0] == gameBoard[1][1] && gameBoard[1][1] == gameBoard[2][2] && gameBoard[0][0] != 0) {
    return gameBoard[0][0];
  }
  if (gameBoard[0][2] == gameBoard[1][1] && gameBoard[1][1] == gameBoard[2][0] && gameBoard[0][2] != 0) {
    return gameBoard[0][2];
  }

  // No winner found
  return 0;
}
