import 'dart:io';
import 'dart:math';

void main() {
 
  // Exercise 9 (Guess the Number Game)
  guessTheNumberGame();

}




void guessTheNumberGame() {
  Random random = Random();
  int targetNumber = random.nextInt(100) + 1;
  int attempts = 0;

  print("\nExercise 9 (Guess the Number Game)");
  print("I've selected a random number between 1 and 100. Try to guess it!");

  while (true) {
    stdout.write("Enter your guess: ");
    int userGuess = int.parse(stdin.readLineSync()!);
    attempts++;

    if (userGuess < targetNumber) {
      print("Too low! Try again.");
    } else if (userGuess > targetNumber) {
      print("Too high! Try again.");
    } else {
      print("Congratulations! You guessed the correct number ($targetNumber) in $attempts attempts.");
      break;
    }
  }
}
