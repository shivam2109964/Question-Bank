List<int> mergeSort(List<int> list) {
  int size = list.length;

  //Base case
  if (size <= 1) {
    return list;
  }
  int mid = size ~/ 2;
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
  List<int> a = [78, 89, 56, 54, 12, 23, 21, 15, 58];
  List<int> sortedList = mergeSort(a);
  print(sortedList);
}
