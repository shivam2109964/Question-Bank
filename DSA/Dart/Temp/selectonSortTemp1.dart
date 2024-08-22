import 'dart:io';

List<int> selectionSort2(List<int> list) {
  int len = list.length;
  for (int i = 0; i < len - 1; i++) {
    int min_index = i;
    for (int j = i + 1; j < len; j++) {
      if (list[j] < list[min_index]) {
        min_index = j;
      }
    }
    if (min_index != i) {
      int temp = list[i];
      list[i] = list[min_index];
      list[min_index] = temp;
    }
  }
  return list;
}

void main() {
  print("Enter the size of the list: ");
  int size = int.parse(stdin.readLineSync()!);

  List<int> list = List.generate(size, (generator) {
    print("Enter the elements");
    int value = int.parse(stdin.readLineSync()!);
    return value;
  });
  List<int> sortedResult = selectionSort2(list);
  print(sortedResult);
}
