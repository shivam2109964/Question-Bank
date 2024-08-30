List<int> selectionSort(List<int> list) {
  int n = list.length;
  for (int i = 0; i < n; i++) {
    int main_index = i;
    for (int j = i + 1; j < n - 1; j++) {
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
  List<int> a = [89, 96, 63, 30, 20, 14, 47, 785];
  List<int> sele = selectionSort(a);
  print(sele);
}
