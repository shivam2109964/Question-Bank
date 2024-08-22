import 'dart:io';

List<int> bubbleSort(List<int> list) {
  int length = list.length;
  for (int i = 0; i < length - 1; i++) {
    for (int j = 0; j < length - 1 - i; j++) {
      if (list[j] > list[j + 1]) {
        int temp = list[j];
        list[j] = list[j + 1];
        list[j + 1] = temp;
      }
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
  List<int> bubSort = bubbleSort(list);
  print(bubSort);
}
