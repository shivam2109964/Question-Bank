List<int> selectionSort(List<int> list) {
  int size = list.length;
  for (int i = 0; i < size - 1; i++) {
    int min_index = i;
    for (int j = i + 1; j < size; j++) {
      if (list[j] < list[min_index]) {
        min_index = j;
      }
    }
    int temp = list[i];
    list[i] = list[min_index];
    list[min_index] = temp;
  }
  return list;
}

void main() {
  List<int> a = [85, 52, 36, 69, 78, 89, 65, 410];
  List<int> sortedList = selectionSort(a);
  print(sortedList);
}
