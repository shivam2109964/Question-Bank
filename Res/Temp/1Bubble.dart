List<int> bubbleSort(List<int> list) {
  int size = list.length;
  for (int i = 0; i < size; i++) {
    for (int j = 0; j < size - 1 - i; j++) {
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
  List<int> list = [96, 63, 32, 14, 47, 85, 52, 20];
  List<int> bubble = bubbleSort(list);
  print(bubble);
}
