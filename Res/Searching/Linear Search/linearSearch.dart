int linearSearch(List<int> list, int target) {
  for (int i = 0; i < list.length; i++) {
    if (list[i] == target) {
      return i; // Target found, return the index
    }
  }
  return -1;
}

void main() {
  List<int> numbers = [10, 23, 45, 70, 11, 15];
  int target = 70;

  int result = linearSearch(numbers, target);

  if (result != -1) {
    print("Element found at index: $result");
  } else {
    print("Element nof found in the list.");
  }
}
