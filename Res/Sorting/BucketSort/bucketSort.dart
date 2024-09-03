void bucketSort(List<int> list) {
  int n = list.length;
  if (n <= 0) return;

  // 1. Find the maximum value in the list to normalize the elements
  int maxValue = list.reduce((a, b) => a > b ? a : b);

  // 2. Create a empty buckets
  List<List<int>> buckets = List.generate(n, (index) => []);

  // 3. Distributed elements into buckets
  for (int i = 0; i < n; i++) {
    int bucket_index = (list[i] * n ~/ (maxValue + 1));
    buckets[bucket_index].add(list[i]);
  }
  // 4. Sort individual buckets
  for (int i = 0; i < n; i++) {
    buckets[i].sort();
  }
  // 5. Concatenate all sorted buckets
  int index = 0;
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < buckets[i].length; j++) {
      list[index++] = buckets[i][j];
    }
  }
}

void main() {
  List<int> list = [25, 10, 47, 95, 62, 30, 75, 45];
  bucketSort(list);
  print(list);
}
