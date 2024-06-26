import 'dart:io';
import 'dart:math';

void main() {
  // Exercise 1
  stdout.write("Exercise 1\nEnter your name: ");
  String name = stdin.readLineSync()!;
  stdout.write("Enter your age: ");
  int age = int.parse(stdin.readLineSync()!);
  int yearsTo100 = 100 - age;
  print("Hello, $name! You will be 100 years old in $yearsTo100 years.");

 
}
