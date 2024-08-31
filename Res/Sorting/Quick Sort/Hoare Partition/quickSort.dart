List<int> quickSort(List<int> list, int low, int high) {
  if (low < high) {
    int pivot_index = partition(list, low, high);
    quickSort(list, low, pivot_index);
    quickSort(list, pivot_index + 1, high);
  }
  return list;
}

int partition(List<int> list, int low, int high) {
  int pivot = list[low];
  int left = low;
  int right = high;
  print("""
  Partition----
  Pivot = $pivot
  Left = $left
  Right = $right
""");
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
    print(list);   
  }
}

void main() {
  List<int> a = [10, 20, 58, 74, 65, 43, 91, 44];
  List<int> hoareQuickSort = quickSort(a, 0, a.length - 1);
  print(hoareQuickSort);
}
