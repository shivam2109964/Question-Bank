void radixSort(List<int> list) {
  // Find the maximum number to determine the numbers of digits
  int max = list.reduce((a, b) => a > b ? a : b);

  // Perform counting sort for every digit
  for (int exp = 1; max ~/ exp > 0; exp *= 10) {
    countingSortByDigit(list, exp);
  }
}

void countingSortByDigit(List<int> list, int exp) {
  int n = list.length;
  List<int> output = List<int>.filled(n, 0);
  List<int> count = List<int>.filled(10, 0);

  for (int i = 0; i < n; i++) {
    int digit = (list[i] ~/ exp) % 10;
    count[digit]++;
  }
  print("");
  for (int i = 1; i < 10; i++) {
    count[i] += count[i - 1];
  }
  for (int i = n - 1; i >= 0; i--) {
    int digit = (list[i] ~/ exp) % 10;
    output[count[digit] - 1] = list[i];
    count[digit]--;
    print(count);
  }
  print("");

  for (int i = 0; i < n; i++) {
    list[i] = output[i];
  }
}

void main() {
  List<int> numbers = [170, 45, 75, 90, 802, 24, 2, 66];
  radixSort(numbers);
  print(numbers);
}
