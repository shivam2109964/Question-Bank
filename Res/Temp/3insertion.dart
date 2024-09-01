List<int> insertionSort(List<int> list) {
  int n = list.length;
  for (int i = 1; i < n; i++) {
    int key = list[i];
    int j = i - 1;
    while (j >= 0 && list[j] > key) {
      list[j + 1] = list[j];
      j = j - 1;
    }
    list[j + 1] = key;
  }
  return list;
}

void main() {
  List<int> a = [78, 14, 62, 85, 27, 10];
  List<int> sortedList = insertionSort(a);
  print(sortedList);
}
