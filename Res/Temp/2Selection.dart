List<int> selectionSort(List<int> list) {
  int n = list.length;
  for (int i = 0; i < n; i++) {
    int main_index = i;
    for (int j = i + 1; j < n; j++) {
      if (list[j] < list[main_index]) {
        int temp = list[j];
        list[j] = list[main_index];
        list[main_index] = temp;
      }
    }
  }
  return list;
}

void main() {
  List<int> a = [74, 41, 01, 25, 60, 40, 06];
  List<int> sortedList = selectionSort(a);
  print(sortedList);
}
