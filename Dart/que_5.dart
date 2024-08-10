import 'dart:io';

bool checkElement(List list, int check) {
  for (int i = 0; i <= list.length; i++) {
    if (list[i] == check) {
      return true;
    } else if (list[i] != check) {
      return false;
    }
  }
  return false;
}

void main() {
  print("Enter the size of the list:");
  int size = int.parse(stdin.readLineSync()!);
  List list = List.generate(size, (generator) {
    print("Enter the elements: ");
    int value = int.parse(stdin.readLineSync()!);
    return value;
  });
  print("Enter the value you want to check?");
  int check = int.parse(stdin.readLineSync()!);
  bool isTrue = checkElement(list, check);
  print("Is element exist: $isTrue");
}
