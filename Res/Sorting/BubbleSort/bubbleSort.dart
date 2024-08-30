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
  List<int> a = [5, 3, 2, 4, 1];
  List<int> sortedList = bubbleSort(a);
  print(sortedList);
}
