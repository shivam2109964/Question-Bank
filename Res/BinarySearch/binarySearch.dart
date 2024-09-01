import 'dart:io';

int binarySearch(List<int> list, int item) {
  int n = list.length;
  int low = 0;
  int high = n - 1;
  int mid = n ~/ 2;
  int guess = list[mid];
  while (low <= high) {
    if (guess == item) {
      return mid;
    }
    if (guess < item) {
      low = mid + 1;
    } else {
      high = mid - 1;
    }
  }
  return -1;
}

List<int> mergeSort(List<int> list) {
  int n = list.length;
  if (n <= 1) {
    return list;
  }
  int mid = n ~/ 2;
  List<int> left = list.sublist(0, mid);
  List<int> right = list.sublist(mid);

  left = mergeSort(left);
  right = mergeSort(right);

  return merge(left, right);
}

List<int> merge(List<int> left, List<int> right) {
  List<int> result = [];
  int i = 0;
  int j = 0;

  while (i < left.length && j < right.length) {
    if (left[i] < right[j]) {
      result.add(left[i]);
      i++;
    } else {
      result.add(right[j]);
      j++;
    }
    while (i < left.length) {
      result.add(left[i]);
      i++;
    }
    while (j < right.length) {
      result.add(right[j]);
      j++;
    }
  }
  return result;
}

void main() {
  print("Enter the size of the list as you want");
  int size = int.parse(stdin.readLineSync()!);
  List<int> list = List.generate(size, (generator) {
    print("Enter the element of the list");
    int value = int.parse(stdin.readLineSync()!);
    return value;
  });

  print("Enter the item you want to search");
  int item = int.parse(stdin.readLineSync()!);

  List<int> sortedList = mergeSort(list);
  int pos = binarySearch(sortedList, item);

  print("The item you want tha prsent in position $pos");
}
