List<int> selectionSort(List<int> list) {
  int n = list.length;
  for (int i = 0; i < n; i++) {
    int min_index = i;
    for (int j = i + 1; j < n; j++) {
      if (list[j] < list[min_index]) {
        int temp = list[j];
        list[j] = list[min_index];
        list[min_index] = temp;
      }
    }
  }
  return list;
}

void main() {
  List<int> list = [2, 5, 1, 4, 3, 6];
  List<int> sorted = selectionSort(list);
  print("");
  print(sorted);
}
