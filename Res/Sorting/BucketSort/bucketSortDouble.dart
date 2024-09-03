void bucketSort(List<double> list) {
  int n = list.length;
  if (n <= 0) return;

  // 1. Create empty buckets
  List<List<double>> buckets = List.generate(n, (index) => []);

  // 2. Distribute element into buckets
  for (int i = 0; i < n; i++) {
    int bucketIndex = (n * list[i].toInt());
    buckets[bucketIndex].add(list[i]);
  }
  // 3. Sort individual buckets
  for (int i = 0; i < n; i++) {
    buckets[i].sort();
  }
  // 4. Concatenate all sorted buckets
  int index = 0;
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < buckets[i].length; j++) {
      list[index++] = buckets[i][j];
    }
  }
}

void main() {
  List<double> arr = [
    0.78,
    0.17,
    0.39,
    0.26,
    0.72,
    0.94,
    0.21,
    0.12,
    0.23,
    0.68
  ];
  bucketSort(arr);
  print(arr);
}
