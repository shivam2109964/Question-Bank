List<int> quickLomuta(List<int> list, int left, int right) {
  if (left < right) {
    int pivot_index = partition(list, left, right);
    quickLomuta(list, left, pivot_index - 1);
    quickLomuta(list, pivot_index + 1, right);
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
  List<int> a = [74, 41, 10, 25, 80, 36, 91];
  List<int> sortedList = quickLomuta(a, 0, a.length - 1);
  print(sortedList);
}
