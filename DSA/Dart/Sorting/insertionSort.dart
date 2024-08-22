List<int> insertionList(List<int> list) {
  int size = list.length;
  for (int i = 1; i <= size - 1; i++) {
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
  List<int> list = [85, 14, 64, 59, 02, 34, 75];
  List<int> sortedList = insertionList(list);
  print(sortedList);
}
