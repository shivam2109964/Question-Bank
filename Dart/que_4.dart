import 'dart:io';

int minimum(int data1, int data2) {
  if (data1 < data2) {
    return data1;
  } else {
    return data2;
  }
}

void main() {
  print("Enter the two number to find the minimum");
  int data1 = int.parse(stdin.readLineSync()!);
  int data2 = int.parse(stdin.readLineSync()!);

  int result = minimum(data1, data2);
  print("The minimum value is $result");
}
