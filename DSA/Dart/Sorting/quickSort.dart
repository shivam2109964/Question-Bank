import 'mergeSort.dart';

List<int> quickSort(List<int> list, int left, int right) {
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

void _swap(List<int> list, int i, int j) {
  int temp = list[i];
  list[i] = list[j];
  list[j] = temp;
}

void main() {
  List<int> list = [7, 5, 3, 9, 1, 8, 4, 6, 2, 0];
  int len = list.length;
  List<int> sortedList = quickSort(list, 0, len - 1);
  print(sortedList);
}
