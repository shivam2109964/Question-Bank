List<int> mergeSort(List<int> list) {
  // Base case
  int n = list.length;
  if (n <= 1) {
    return list;
  }

  int mid = n ~/ 2;

  List<int> left = list.sublist(0, mid);
  List<int> right = list.sublist(mid);

  left = mergeSort(left);
  right = mergeSort(right);

  return merge(left, right);
}

List<int> merge(List<int> left, List<int> right) {
  List<int> result = [];
  int i = 0;
  int j = 0;

  while (i < left.length && j < right.length) {
    if (left[i] < right[j]) {
      result.add(left[i]);
      i++;
    } else {
      result.add(right[j]);
      j++;
    }
  }
  while (i < left.length) {
    result.add(left[i]);
    i++;
  }
  while (j < right.length) {
    result.add(right[j]);
    j++;
  }
  return result;
}

void main() {
  List<int> list = [20, 14, 57, 95, 6, 40, 52, 1];
  List<int> mergeSorting = mergeSort(list);
  print(mergeSorting);
}
