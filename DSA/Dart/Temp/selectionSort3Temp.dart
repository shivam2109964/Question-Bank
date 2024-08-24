void selectionSort(List<int> list) {
  int len = list.length;
  for (int i = 0; i < len - 1; i++) {
    int min_index = i;
    for (int j = i + 1; j < len; j++) {
      if (list[j] < list[min_index]) {
        min_index = j;
      }
    }
    if (list[min_index] != i) {
      swap(list, i, min_index);
    }
  }
  print(list);
}

void swap(list, i, j) {
  int temp = list[i];
  list[i] = list[j];
  list[j] = temp;
}

void main() {
  List<int> list = [21, 45, 77, 96, 33, 25, 89];
  selectionSort(list);
}
