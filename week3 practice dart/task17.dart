import 'dart:io';
import 'dart:math';

  // Exercise 17

void main() {
  stdout.write("Exercise 17\nEnter the size of the game board: ");
  int size = int.parse(stdin.readLineSync()!);
  drawGameBoard(size);

 
}

void drawGameBoard(int size) {
  for (int i = 0; i < size; i++) {
    for (int j = 0; j < size; j++) {
      stdout.write("---");
      if (j < size - 1) stdout.write(' ');
    }
    print('');
    if (i < size - 1) {
      for (int j = 0; j < size; j++) {
        stdout.write('|   ');
        if (j == size - 1) print('|');
      }
    }
  }
}