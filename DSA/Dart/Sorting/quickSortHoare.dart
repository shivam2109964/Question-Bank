void quickSort(List<int> arr, int low, int high) {
  if (low < high) {
    int pivotIndex = horarPartition(arr, low, high);
    quickSort(arr, low, pivotIndex);
    quickSort(arr, pivotIndex + 1 , high);
  }
}

int horarPartition(List<int> arr, int low, int high) {
  int pivot = arr[low];
  int left = low - 1;
  int right = high + 1;

  while (true) {
    // Move left pointer to the right until finding an element >= pivot
    do {
      left++;
    } while (arr[left] < pivot);

    // Move right pointer to the left until finding an element <= pivot
    do {
      right--;
    } while (arr[right] > pivot);
    // If pointer have crossed, return the right pointer
    if (left >= right) {
      return right;
    }
    // Swap element at left and right pointer
    int temp = arr[left];
    arr[left] = arr[right];
    arr[right] = temp;
  }
}

void main() {
  List<int> arr = [10, 7, 8, 9, 1, 5];
  int n = arr.length;

  print("Original Array: $arr");
  quickSort(arr, 0, n);
  print("Sorted Array: $arr");
}
