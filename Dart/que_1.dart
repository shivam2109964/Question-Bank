  // Program to interchange first and last elements in a list

import 'dart:io';

List interchange(List list) {
  int size = list.length;

  int temp = list[0];
  list[0] = list[size - 1];
  list[size - 1] = temp;

  return list;
}

void main() {
  print("Enter the size of list: ");
  int size = int.parse(stdin.readLineSync()!);

  List list = List.generate(
    size,
    (genreator) {
      print("Enter the list element");
      int data = int.parse(stdin.readLineSync()!);
      return data;
    },
  );
  print("Before Interchange this list is: $list");
  List newList = interchange(list);
  print("After Interchagne the list is: $newList");
}
