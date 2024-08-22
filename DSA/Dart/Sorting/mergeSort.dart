List<int> mergeSort(List<int> list) {
  // Base case
  if (list.length <= 1) {
    return list;
  }

  // Split the list in halves
  int middle = list.length ~/ 2;
  List<int> left = list.sublist(0, middle);
  List<int> right = list.sublist(middle);

  // Recursive sort the havles
  left = mergeSort(left);
  right = mergeSort(right);

  // Merge the sorted halves
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

  // Adding the remaning element in the left if any
  while (i < left.length) {
    result.add(left[i]);
    i++;
  }
  // Adding the remaning element in the right if any
  while (j < right.length) {
    result.add(right[j]);
    j++;
  }
  return result;
}

void main() {
  List<int> unsortedList = [9, 8, 2, 5, 7, 6, 3, 4, 1, 10];
  List<int> sortedList = mergeSort(unsortedList);
  print(sortedList);
}
