import 'dart:io';

int binarySearch(int item, List list) {
  int low = 0;
  int high = list.length - 1;
  while (low <= high) {
    int mid = (low + high) ~/ 2;
    int guess = list[mid];
    if (guess == item) {
      return mid;
    }
    if (guess > item) {
      high = mid - 1;
    } else {
      low = mid + 1;
    }
  }
  return -1;
}

void main() {
  print("Enter the size of the list");
  int size = int.parse(stdin.readLineSync()!);

  List list = List.generate(size, (generator) {
    print("Enter the element no: ");
    int value = int.parse(stdin.readLineSync()!);
    return value;
  });
  print("Enter the item you want to search");
  int item = int.parse(stdin.readLineSync()!);

  int result = binarySearch(item, list);
  print(result);
}
