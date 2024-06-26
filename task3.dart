import 'dart:io';
import 'dart:math';

void main() {
 
  // Exercise 3
  List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  print("\nExercise 3\nElements less than 5 in the list: ${a.where((element) => element < 5).toList()}");

}
