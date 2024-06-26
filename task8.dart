import 'dart:io';
import 'dart:math';

void main() {
  // Exercise 8 (Rock-Paper-Scissors)
  playRockPaperScissors();
}


void playRockPaperScissors() {
  List<String> choices = ["rock", "paper", "scissors"];
  Random random = Random();
  stdout.write("\nExercise 8 (Rock-Paper-Scissors)\nEnter your choice (rock, paper, or scissors): ");
  String playerChoice = stdin.readLineSync()!.toLowerCase();
  String computerChoice = choices[random.nextInt(3)];

  print("Computer chose $computerChoice.");

  if (playerChoice == computerChoice) {
    print("It's a tie!");
  } else if ((playerChoice == "rock" && computerChoice == "scissors") ||
      (playerChoice == "paper" && computerChoice == "rock") ||
      (playerChoice == "scissors" && computerChoice == "paper")) {
    print("You win!");
  } else {
    print("Computer wins!");
  }
}
