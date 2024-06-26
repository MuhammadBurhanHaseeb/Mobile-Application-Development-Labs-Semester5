import 'dart:io';
import 'dart:math';


  // Exercise 16

void main() {
  
  playCowsAndBulls();

  
}


void playCowsAndBulls() {
  Random random = Random();
  int targetNumber = random.nextInt(9000) + 1000;
  String targetNumberStr = targetNumber.toString();
  int guesses = 0;

  print("Exercise 16 (Cows and Bulls)");
  print("Try to guess the 4-digit number. For every correct digit in the correct place, you have a 'cow'.");
  print("For every correct digit in the wrong place, you have a 'bull'.");

  while (true) {
    stdout.write("Enter your guess: ");
    String userGuessStr = stdin.readLineSync()!;
    int userGuess;
    try {
      userGuess = int.parse(userGuessStr);
    } catch (e) {
      print("Invalid input. Please enter a 4-digit number.");
      continue;
    }

    if (userGuess < 1000 || userGuess > 9999) {
      print("Invalid input. Please enter a 4-digit number.");
      continue;
    }

    userGuessStr = userGuess.toString();
    int cows = 0;
    int bulls = 0;

    for (int i = 0; i < 4; i++) {
      if (userGuessStr[i] == targetNumberStr[i]) {
        cows++;
      } else if (targetNumberStr.contains(userGuessStr[i])) {
        bulls++;
      }
    }

    if (cows == 4) {
      print("Congratulations! You guessed the correct number ($targetNumber) in $guesses guesses.");
      break;
    } else {
      print("Cows: $cows, Bulls: $bulls");
      guesses++;
    }
  }
}
