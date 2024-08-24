void inesrtionSort(List<int> list) {
  int len = list.length;
  for (int i = 0; i < len; i++) {
    int key = list[i];
    int j = i - 1;
    while (j >= 0 && list[j] > key) {
      list[j + 1] = list[j];
      j = j - 1;
    }
    list[j + 1] = key;
  }
}

void main() {
  List<int> list = [25, 58, 87, 74, 41, 23];
  inesrtionSort(list);
  print(list);
}
