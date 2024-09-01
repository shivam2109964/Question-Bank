void heapsort(List<int> list) {
  int n = list.length;

  // Build a max heap
  for (int i = n ~/ 2 - 1; i >= 0; i--) {
    heapify(list, n, i);
  }
  // Extract elements from heap one by one
  for (int i = n - 1; i > 0; i--) {
    // Move current root (largest element) to the end
    int temp = list[0];
    list[0] = list[i];
    list[i] = temp;

    // Call max heapify on the reduced heap
    heapify(list, i, 0);
  }
}

void heapify(List<int> list, int n, int i) {
  int largest = i; // Initialize largest as root
  int left = 2 * i + 1; // Left child index
  int right = 2 * i + 2;

  // If left child i larger then root
  if (left < n && list[left] > list[largest]) {
    largest = left;
  }
  // If right child is larger than largest so far
  if (right < n && list[right] > list[largest]) {
    largest = right;
  }
  // If largest is not root
  if (largest != i) {
    int swap = list[i];
    list[i] = list[largest];
    list[largest] = swap;

    // Recursively heapify the affected sub-tree
    heapify(list, n, largest);
  }
}

void main() {
  List<int> list = [1, 3, 4, 5, 10, 91, -5, 6];
  heapsort(list);
  print(list);
}
