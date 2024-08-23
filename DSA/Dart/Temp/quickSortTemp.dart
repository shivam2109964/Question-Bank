List<int> quickSort(List<int> list, int left, int right) {
  if (left < right) {
    int pivot_index = partition(list, left, right);
    quickSort(list, left, pivot_index - 1);
    quickSort(list, pivot_index + 1, right);
  }
  return list;
}

int partition(List<int> list, int left, int right) {
  int pivot = list[right];
  int i = left - 1;

  for (int j = left; j < right; j++) {
    if (list[j] < pivot) {
      i++;
      print("---Before $list");
      swap(list, i, j);
      print("---- After $list");
    }
  }
  print("External Swap Before --- $list");
  swap(list, i + 1, right);
  print("External Swap After --- $list");
  return i + 1;
}

void swap(List<int> list, int i, int j) {
  int temp = list[i];
  list[i] = list[j];
  list[j] = temp;
}

void main() {
  List<int> list = [9, -3, 5, 2, 6, 8, -6, 1, 3];
  List<int> sortedList = quickSort(list, 0, list.length - 1);
  print(sortedList);
}
