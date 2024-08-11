// Reversing the list

import 'dart:io';

List reverseList(List list) {
  int len = list.length;
  List rev = [];
  for (int i = (len - 1); i >= 0; i--) {
    rev.add(list[i]);
  }
  return rev;
}

void main() {
  print("Enter the size of the list");
  int size = int.parse(stdin.readLineSync()!);

  List list = List.generate(size, (generator) {
    print("Enter the element in the list");
    int value = int.parse(stdin.readLineSync()!);
    return value;
  });

  List revList = reverseList(list);
  print("Original List: $list");
  print("Reverse List: $revList");
}
