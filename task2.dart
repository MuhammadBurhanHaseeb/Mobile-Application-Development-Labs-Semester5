import 'dart:io';
import 'dart:math';

void main() {
  
  // Exercise 2
  stdout.write("\nExercise 2\nEnter a number: ");
  int number = int.parse(stdin.readLineSync()!);
  if (number % 2 == 0) {
    print("$number is even.");
  } else {
    print("$number is odd.");
  }

}
