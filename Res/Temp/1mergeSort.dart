List<int> mergeSort(List<int> list) {
  int n = list.length;
  // Base case
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
  List<int> resutl = [];
  int i = 0;
  int j = 0;

  while (i < left.length && j < right.length) {
    if (left[i] < right[j]) {
      resutl.add(left[i]);
      i++;
    } else {
      resutl.add(right[j]);
      j++;
    }
  }
  while (i < left.length) {
    resutl.add(left[i]);
    i++;
  }
  while (j < right.length) {
    resutl.add(right[j]);
    j++;
  }
  return resutl;
}

void main() {
  List<int> a = [96, 63, 30, 14, 25, 80];
  List<int> sortedList = mergeSort(a);
  print(sortedList);
}
