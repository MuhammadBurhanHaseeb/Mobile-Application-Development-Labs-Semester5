import 'dart:io';
import 'dart:math';

void main() {
 
  // Exercise 4
  stdout.write("\nExercise 4\nEnter a number: ");
  int divisorNumber = int.parse(stdin.readLineSync()!);
  List<int> divisors = [];
  for (int i = 1; i <= divisorNumber; i++) {
    if (divisorNumber % i == 0) {
      divisors.add(i);
    }
  }
  print("Divisors of $divisorNumber: $divisors");

}
