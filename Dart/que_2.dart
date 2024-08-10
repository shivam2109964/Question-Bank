// Write a program to swap two element in a list

import 'dart:io';

List swapTwoElement(List newList, int pos1, int pos2) {
  int temp = newList[pos1 - 1];
  newList[pos1 - 1] = newList[pos2 - 1];
  newList[pos2 - 1] = temp;
  return newList;
}

void main() {
  print("Enter the size of the list: ");
  int size = int.parse(stdin.readLineSync()!);

  List list = List.generate(size, (generator) {
    print("Enter the element: ");
    int value = int.parse(stdin.readLineSync()!);
    return value;
  });
  print("Enter the pos1 and pos2 in range --- $size");
  print("pos1");
  int pos1 = int.parse(stdin.readLineSync()!);
  print("pos2");
  int pos2 = int.parse(stdin.readLineSync()!);
  print("Before Swap list is: $list");
  List newList_data = swapTwoElement(list, pos1, pos2);
  print("The new pos is in list: $newList_data");
}
