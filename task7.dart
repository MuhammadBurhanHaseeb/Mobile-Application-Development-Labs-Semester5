import 'dart:io';
import 'dart:math';

void main() {

  // Exercise 7
  List<int> originalList = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];
  List<int> evenElements = originalList.where((element) => element % 2 == 0).toList();
  print("\nExercise 7\nEven elements in the list: $evenElements");


}
