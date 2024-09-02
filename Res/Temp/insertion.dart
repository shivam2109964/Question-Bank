List<int> selectionSort(List<int> list) {
  int n = list.length;
  for (int i = 0; i < n; i++) {
    int min_index = i;
    for (int j = i + 1; j < n - 1; j++) {
      if (list[j] < list[min_index]) {
        min_index = j;
      }
    }
    if (list[min_index] != i) {
      int temp = list[i];
      list[i] = list[min_index];
      list[min_index] = temp;
    }
  }
  return list;
}

void main() {
  List<int> list = [54, 41, 10, 25, 75, 96, 60];
  List<int> sele = selectionSort(list);
  print(sele);
}
