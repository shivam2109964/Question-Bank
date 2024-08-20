import 'dart:io';

List<int> insertionSort(List<int> list) {
  int n = list.length;
  for (int i = 1; i < n; i++) {
    int key = list[i];
    int j = i - 1;
    while (j >= 0 && list[j] > key) {
      list[j + 1] = list[j];
      j--;
    }
    list[j + 1] = key;
  }
  return list;
}

void main() {
  print("Enter the size of the list");
  int size = int.parse(stdin.readLineSync()!);
  List<int> list = List.generate(size, (generator) {
    print("Enter the elements");
    int value = int.parse(stdin.readLineSync()!);
    return value;
  });
  List<int> insetion_Sort = insertionSort(list);
  print(insetion_Sort);  
}
