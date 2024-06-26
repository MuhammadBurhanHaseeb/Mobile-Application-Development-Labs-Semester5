import 'dart:io';
import 'dart:math';


  // Exercise 13

void main() {
  List<int> listWithDuplicates = [1, 2, 2, 3, 4, 4, 5];
  List<int> result13 = removeDuplicates(listWithDuplicates);
  print("Exercise 13: $result13");
}
List<int> removeDuplicates(List<int> inputList) {
  return inputList.toSet().toList();
}
