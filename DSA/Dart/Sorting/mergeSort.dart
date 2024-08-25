List<int> mergeSort(List<int> list) {
  // Base case: if the list is empty or have a one element,
  if (list.length <= 1) {
    return list;
  }
  // Spilt it into halves
  int middle = list.length ~/ 2;
  List<int> left = list.sublist(0, middle);
  List<int> right = list.sublist(middle);
  // Recursive sort halves
  left = mergeSort(left);
  right = mergeSort(right);

  // Merge the sort halves
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
  // Remaning the left element if any
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
  List<int> unsortedList = [6, 4, 2, 1, 9, 8, 3, 5];
  List<int> sortedList = mergeSort(unsortedList);
  print(sortedList);
}
