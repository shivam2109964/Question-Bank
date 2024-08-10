// Find Maximum of two number

import 'dart:io';

int maximum(int data1, int data2) {
  if (data1 < data2) {
    return data2;
  } else {
    return data1;
  }
}

void main() {
  print("Enter the two number to find their maximum");
  int data1 = int.parse(stdin.readLineSync()!);
  int data2 = int.parse(stdin.readLineSync()!);

  int max = maximum(data1, data2);
  print("The maximum number is: $max");
}
