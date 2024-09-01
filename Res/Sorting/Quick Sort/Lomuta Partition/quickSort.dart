List<int> quickSort(List<int> list, int left, int right) {
  // Base case
  if (left < right) {
    int pivot_index = _partition(list, left, right);

    quickSort(list, left, pivot_index - 1);
    quickSort(list, pivot_index + 1, right);
  }
  return list;
}

int _partition(List<int> list, int left, int right) {
  int pivot = list[right];
  int i = left - 1;
  for (int j = left; j < right; j++) {
    if (list[j] < pivot) {
      i++;
      _swap(list, i, j);
    }
  }
  _swap(list, i + 1, right);
   return i + 1;
}

void _swap(List<int> list, i, j) {
  int temp = list[i];
  list[i] = list[j];
  list[j] = temp;
}

void main() {
  List<int> a = [85, 52, 20, 10, 14, 47, 79, 96, 01];
  List<int> sorted = quickSort(a, 0, a.length - 1);
  print("");
  print("Sorted Array => $sorted");
}
