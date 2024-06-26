import 'dart:io';
import 'dart:math';

void main() {
  
  
  // Exercise 5
  List<int> a = [1,1,2,3,5,8,13,21,34,55,89];
  List<int> b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];
  List<int> commonElements = a.toSet().intersection(b.toSet()).toList();
  print("\nExercise 5\nCommon elements between lists a and b: $commonElements");
}
