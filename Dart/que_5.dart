// Write a program to check value is present in the list or is not

import 'dart:io';

bool isPresent(List list, int value) {
  for (int i = 0; i < list.length; i++) {
    if (list[i] == value) {
      return true;
    }
  }
  return false;
}

void main() {
  print("Enter the size of the list:");
  int size = int.parse(stdin.readLineSync()!);

  List list = List.generate(size, (generator) {
    print("Enter the $size element in the list");
    int value = int.parse(stdin.readLineSync()!);
    return value;
  });

  print("Enter the value you want to check");
  int value = int.parse(stdin.readLineSync()!);

  bool result = isPresent(list, value);
  print("Is value Available: $result");
}
