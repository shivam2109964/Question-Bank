void heapSort(List<int> list) {
  int n = list.length;
  int mid = n ~/ 2;
  for (int i = mid - 1; i >= 0; i--) {
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
    int temp = list[i];
    list[i] = list[largest];
    list[largest] = temp;

    heapify(list, n, largest);
  }
}

void main() {
  List<int> list = [85, 52, 10, 47, 65, 20, 75, 53];
  heapSort(list);
  print(list);
}
