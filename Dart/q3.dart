import 'dart:io';

int primeFactor(int number) {
  int factor = 2;
  while (number > 1) {
    if (number % factor == 0) {
      number ~/= factor;
    } else {
      factor++;
    }
  }
  return factor;
}

void main() {
  print("Enter the number to find largest prime factor");
  int number = int.parse(stdin.readLineSync()!);
  int result = primeFactor(number);
  print(result);
}
