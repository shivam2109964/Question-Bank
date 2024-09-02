List<int> quickSortHoare(List<int> list, int low, int high) {
  if (low < high) {
    int pivot_index = partition(list, low, high);
    quickSortHoare(list, low, pivot_index);
    quickSortHoare(list, pivot_index + 1, high);
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
  List<int> list = [52, 20, 14, 71, 80, 01, 69, 45, 34];
  List<int> quickSortH = quickSortHoare(list, 0, list.length - 1);
  print(quickSortH);
}
