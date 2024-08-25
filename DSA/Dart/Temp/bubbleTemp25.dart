List<int> bubbleSort(List<int> list) {
  int n = list.length;
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n - i - 1; j++) {
      if (list[j] > list[j + 1]) {
        int temp = list[j];
        list[j] = list[j + 1];
        list[j + 1] = temp;
        print(list);
      }
    }
  }
  return list;
}

void main() {
  List<int> list = [7, 2, 3, 1, 0, 9];
  List<int> sorted = bubbleSort(list);
  print(sorted);
}
