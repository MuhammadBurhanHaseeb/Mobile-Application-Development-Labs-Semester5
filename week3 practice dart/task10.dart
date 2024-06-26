import 'dart:io';
import 'dart:math';

void main() {
  
  // Exercise 10 (Prime Number Check)
  stdout.write("\nExercise 10\nEnter a number to check if it's prime: ");
  int numToCheck = int.parse(stdin.readLineSync()!);
  bool isPrime = isPrimeNumber(numToCheck);
  if (isPrime) {
    print("$numToCheck is a prime number.");
  } else {
    print("$numToCheck is not a prime number.");
  }
}

bool isPrimeNumber(int number) {
  if (number <= 1) {
    return false;
  }
  for (int i = 2; i <= sqrt(number); i++) {
    if (number % i == 0) {
      return false;
    }
  }
  return true;
}
