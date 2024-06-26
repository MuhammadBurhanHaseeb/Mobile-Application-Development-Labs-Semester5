import 'dart:io';
import 'dart:math';


  // Exercise 12

void main() {

  stdout.write("Exercise 12\nEnter the number of Fibonacci numbers to generate: ");
  int n = int.parse(stdin.readLineSync()!);
  List<int> result12 = generateFibonacciNumbers(n);
  print("Fibonacci Sequence: $result12");

}

List<int> generateFibonacciNumbers(int n) {
  List<int> fibonacciSequence = [];
  int a = 0, b = 1;
  for (int i = 0; i < n; i++) {
    fibonacciSequence.add(a);
    int next = a + b;
    a = b;
    b = next;
  }
  return fibonacciSequence;
}

