import 'dart:io';

int gcd(int a, int b) {
  while (b != 0) {
    int temp = b;
    b = a % b;
    a = temp;
  }
  return a;
}

int Lcm(int a, int b) {
  return (a * b) ~/ gcd(a, b);
}

int smallest_multiple(int start, int end) {
  int result = start;
  for (int i = start + 1; i <= end; i++) {
    result = Lcm(result, i);
  }
  return result;
}

void main() {
  print("Enter the range to find Smallest Multiple");
  print("From Range");
  int from_Range = int.parse(stdin.readLineSync()!);
  print("To range");
  int to_range = int.parse(stdin.readLineSync()!);
  int result = smallest_multiple(from_Range, to_range);
  print(result);
}
