import 'dart:io';
import 'dart:math';


  // Exercise 14

void main() {
  stdout.write("Exercise 14\nEnter a string with multiple words: ");
  String inputString = stdin.readLineSync()!;
  String result14 = reverseWordsInString(inputString);
  print("Reversed String: $result14");

}

String reverseWordsInString(String input) {
  List<String> words = input.split(' ');
  words = words.reversed.toList();
  return words.join(' ');
}