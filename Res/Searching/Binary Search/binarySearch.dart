int binarySearch(List<int> list, int target) {
  int n = list.length;
  int low = 0;
  int high = n - 1;

  while (low <= high) {
    int mid = (low + high) ~/ 2;

    if (target == list[mid]) {
      return mid;
    }
    if (target > list[mid]) {
      low = mid + 1;
    } else {
      high = mid - 1;
    }
  }
  return -1;
}

void heapSort(List<int> list) {
  int n = list.length;

  // Build the max heap
  for (int i = n ~/ 2 - 1; i >= 0; i--) {
    heapify(list, n, i);
  }
  for (int i = n - 1; i > 0; i--) {
    int temp = list[0];
    list[0] = list[i];
    list[i] = temp;

    heapify(list, i, 0);
  }
}

void heapify(List<int> list, int n, int i) {
  int largest = i;
  int left = 2 * i + 1;
  int right = 2 * i + 2;

  if (left < n && list[left] > list[largest]) {
    largest = left;
  }
  if (right < n && list[right] > list[largest]) {
    largest = right;
  }
  if (largest != i) {
    int swap = list[i];
    list[i] = list[largest];
    list[largest] = swap;

    heapify(list, n, largest);
  }
}

void main() {
  List<int> list = [85, 41, 69, 78, 63, 20, 54, 98, 19];
  int value = 54;
  heapSort(list);
  int result = binarySearch(list, value);
  if (result != -1) {
    print("Element is found at index: $result");
  } else {
    print("Element is not found!");
  }
}
