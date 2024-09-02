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
      swap(list, i, j);
    }
  }
  swap(list, i + 1, right);
  return i + 1;
}

void swap(List<int> list, int i, int j) {
  int temp = list[i];
  list[i] = list[j];
  list[j] = temp;
}

void main() {
  List<int> list = [85, 74, 41, 10, 225, 97, 54, 146];
  List<int> quickSorting = quickSort(list, 0, list.length - 1);
  print(quickSorting);
}
