import 'dart:io';

List bubbleSort(List list) {
  int len = list.length;
  for (int i = 0; i < len - 1; i++) {
    for (int j = 0; j < len - i - 1; j++) {
      if (list[j] > list[j + 1]) {
        //Swap the element
        int temp = list[j];
        list[j] = list[j + 1];
        list[j + 1] = temp;
      }
    }
  }
  return list;
}

void main() {
  print("Enter the size of list");
  int size = int.parse(stdin.readLineSync()!);
  List list = List.generate(size, (generator) {
    print("Enter the element: ");
    int value = int.parse(stdin.readLineSync()!);
    return value;
  });
  print("Original List is: $list");
  var bubble_sort = bubbleSort(list);
  print(bubble_sort);
}
