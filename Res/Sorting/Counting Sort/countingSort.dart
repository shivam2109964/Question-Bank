void countingSort(List<int> list) {
  // Find the maximum and minimum value
  int max = list.reduce((a, b) => a > b ? a : b);
  int min = list.reduce((a, b) => a < b ? a : b);
  int range = max - min + 1;

  // Create and initialize the count array
  List<int> count = List.filled(range, 0);
  List<int> output = List.filled(list.length, 0);

  // Store the count of each element in the count array

  for (int i = 0; i < list.length; i++) {
    count[list[i] - min]++;
  }
  // Change count[i] so that it contains the actual postion of the element in the output array
  for (int i = 1; i < count.length; i++) {
    count[i] += count[i - 1];
  }
  // Build the output array
  for (int i = list.length - 1; i >= 0; i--) {
    output[count[list[i] - min] - 1] = list[i];
    count[list[i] - min]--;
  }
  // Copy the sorted elements into original array
  for (int i = 0; i < list.length; i++) {
    list[i] = output[i];
  }
}

void main() {
  List<int> list = [9, 5, 1, 6, 10];
  countingSort(list);
  print(list);
}
