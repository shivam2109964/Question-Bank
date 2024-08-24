void bubbleSort(List<int> list) {
  int len = list.length;
  for (int i = 0; i < len; i++) {
    for (int j = 0; j < len - i - 1; j++) {
      if (list[j] > list[j + 1]) {
        int temp = list[j];
        list[j] = list[ j + 1];
        list[j + 1] = temp;
      }
    }
  }
  print(list);
}

void main() {
  List<int> list = [78, 89, 45, 56, 12, 23, 10];
  bubbleSort(list);
}
