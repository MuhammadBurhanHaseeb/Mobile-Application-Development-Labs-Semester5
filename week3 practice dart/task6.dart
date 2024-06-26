import 'dart:io';
import 'dart:math';

void main() {
  // Exercise 6
  stdout.write("\nExercise 6\nEnter a string: ");
  String inputString = stdin.readLineSync()!;
  bool isPalindrome = checkPalindrome(inputString);
  if (isPalindrome) {
    print("$inputString is a palindrome.");
  } else {
    print("$inputString is not a palindrome.");
  }
}

bool checkPalindrome(String input) {
  String cleanedInput = input.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '').toLowerCase();
  String reversedInput = cleanedInput.split('').reversed.join('');
  return cleanedInput == reversedInput;
}
