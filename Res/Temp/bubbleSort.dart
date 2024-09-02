List<int> bubbleSort(List<int> list) {
  int n = list.length;
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n - i - 1; j++) {
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
  List<int> list = [85, 52, 01, 47, 96, 35, 76, 94];
  List<int> bubble = bubbleSort(list);
  print(bubble);
}
