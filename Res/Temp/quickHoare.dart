List<int> qucikHoare(List<int> list, int low, int high) {
  if (low < high) {
    int pivot_index = partition(list, low, high);
    qucikHoare(list, low, pivot_index);
    qucikHoare(list, pivot_index + 1, high);
  }
  return list;
}

int partition(List<int> list, int low, int high) {
  int pivot = list[low];
  int left = low;
  int right = high;

  while (true) {
    while (list[left] < pivot) {
      left++;
    }
    while (list[right] > pivot) {
      right--;
    }
    if (left >= right) {
      return right;
    }
    int temp = list[left];
    list[left] = list[right];
    list[right] = temp;
  }
}

void main() {
  List<int> a = [10, 25, 80, 74, 96, 31, 4];
  List<int> sortedList = qucikHoare(a, 0, a.length - 1);
  print(sortedList);
}
