import 'dart:math';

int binarySearch(List<int> arr, int left, int right, int target) {
  while (left <= right) {
    int mid = left + (right - left) ~/ 2;

    // check if target is present at mid
    if (arr[mid] == target) {
      return mid;
    }

    if (arr[mid] < target) {
      left = mid + 1;
    } else {
      right = mid - 1;
    }
  }
  return -1;
}

int exponentialSearch(List<int> arr, int target) {
  int n = arr.length;
  // If the element at the first position
  if (arr[0] == target) {
    return 0;
  }
  // Find the range for binary search
  int i = 1;
  while (i < n && arr[i] <= target) {
    i *= 2;
  }
  // perform binary search within the found range
  return binarySearch(arr, i ~/ 2, min(i, n - 1), target);
}

void main() {
  List<int> arr = [1, 2, 4, 7, 9, 12, 15, 18, 21, 24];
  int target = 15;
  int result = exponentialSearch(arr, target);

  if (result == -1) {
    print("Element not found in the array.");
  } else {
    print("Element found at index: $result");
  }
}
