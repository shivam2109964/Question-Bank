import 'dart:io';

List<int> selectionSort(List<int> list) {
  int len = list.length;
  for (int i = 0; i < len - 1; i++) {
    int minIndex = i;
    for (int j = i + 1; j < len; j++) {
      if (list[j] < list[minIndex]) {
        minIndex = j;
      }
    }
    if (minIndex != i) {
      int temp = list[i];
      list[i] = list[minIndex];
      list[minIndex] = temp;
    }
  }
  return list;
}

void main() {
  print("Enter the size of the list: ");
  int size = int.parse(stdin.readLineSync()!);
  List<int> list = List.generate(size, (generator) {
    print("Enter the elements: ");
    int value = int.parse(stdin.readLineSync()!);
    return value;
  });
  List<int> selctionSortedList = selectionSort(list);
  print(selctionSortedList);
}
