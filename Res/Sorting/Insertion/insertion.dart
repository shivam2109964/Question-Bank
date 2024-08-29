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
  List<int> list = [41, 45, 58, 96, 36, 52, 47];
  List<int> sortedList = insertionSort(list);
  print(sortedList);
}
