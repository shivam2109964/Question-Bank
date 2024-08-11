import 'dart:io';

int factorial(int data) {
  int data1 = 1;
  for (int i = 1; i < data; i++) {
    data1 += data1 * i;
  }
  return data1;
}

void main() {
  print("Enter the number:");
  int data = int.parse(stdin.readLineSync()!);
  int result = factorial(data);
  print(result);
}
