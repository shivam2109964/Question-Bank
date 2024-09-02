List<int> insertion(List<int> list) {
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
  List<int> list = [52, 20, 85, 46, 97, 35, 41, 26];
  List<int> insertionSort = insertion(list);
  print(insertionSort);
}
