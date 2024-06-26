import 'dart:io';
import 'dart:math';


    // Exercise 19

void main() {
  List<List<int>> gameBoard19 = List.generate(3, (_) => List.generate(3, (_) => 0));
  playerMove(gameBoard19, 1, 0, 0);
  playerMove(gameBoard19, 2, 0, 1);
  print("Exercise 19: Game Board:\n$gameBoard19");

 }

void playerMove(List<List<int>> gameBoard, int player, int row, int col) {
  if (gameBoard[row][col] == 0) {
    gameBoard[row][col] = player;
  }
}
