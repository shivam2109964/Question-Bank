List<int> insertonSort(List<int> list) {
  int n = list.length;
  for (int i = 0; i < n; i++) {
    int key = list[i];
    int j = i - 1;
    while (j >= 0 && list[j] > key) {
      list[j + 1] = list[j];
      j = j - 1;
    }
    list[j + 1] = key;
  }
  return list;
}

void main() {
  List<int> a = [89, 56, 23, 20, 32, 25, 47, 85];
  List<int> insertion = insertonSort(a);
  print(insertion); 
}
