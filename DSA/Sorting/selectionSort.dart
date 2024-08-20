import 'dart:io';

List<int> selectonSort(List<int> list) {
  int len = list.length;
  for (int i = 0; i <= len - 1; i++) {
    int minIndex = i;
    for (int j = i + 1; j < len; j++) {
      if (list[j] < list[minIndex]) {
        minIndex = j;
      }
    }
    // Swap the found minimum element with the first unsorted element
    int temp = list[minIndex];
    list[minIndex] = list[i];
    list[i] = temp;
  }
  return list;
}

void main() {
  print("Enter the size of the list:");
  int size = int.parse(stdin.readLineSync()!);
  List<int> list = List.generate(size, (generator) {
    print("Enter the element: ");
    int value = int.parse(stdin.readLineSync()!);
    return value;
  });
  print("Before Sorting: $list");
  List<int> selection_sort = selectonSort(list);
  print("After Sorting: $selection_sort");
}
