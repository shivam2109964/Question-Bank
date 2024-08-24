void heapSort(List<int> arr) {
  int n = arr.length;
  // Step 1: Build a max heap
  for (int i = n ~/ 2 - 1; i >= 0; i--) {
    heapify(arr, n, i);
    print(arr);
  }
  // Step 2 and 3: Extract elements one by one from the heap
  for (int i = n - 1; i > 0; i--) {
    // Move current root at the end
    int temp = arr[0];
    arr[0] = arr[i];
    arr[i] = temp;
    print(" ");
    print(arr);

    // Call the heapify on the reduced heap
    heapify(arr, i, 0);
  }
}

void heapify(List<int> arr, int n, int i) {
  int largest = i; // Initialize largest as root
  int left = 2 * i + 1; // left child
  int right = 2 * i + 2; // right child

  // If left child is larger then root
  if (left < n && arr[left] > arr[largest]) {
    largest = left;
  }

  // If right child is larger than largest so far
  if (right < n && arr[right] > arr[largest]) {
    largest = right;
  }

  // If largest is not root
  if (largest != i) {
    int swap = arr[i];
    arr[i] = arr[largest];
    arr[largest] = swap;

    // Recursively heapify the affeted sub-tree
    heapify(arr, n, largest);
  }
}

void main() {
  List<int> arr = [4, 10, 3, 5, 1];
  heapSort(arr);
  print("Sroted Array: $arr");
}
