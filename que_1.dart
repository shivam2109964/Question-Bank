// Program to interchange first and last elements in a list

import 'dart:io';



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
  print(list);
}
