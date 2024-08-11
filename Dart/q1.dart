import 'dart:io';

int multiple_Of_Tow(int first, int second, int from, int to) {
  int sum = 0;
  for (int i = from; i < to; i++) {
    if (i % first == 0 || i % second == 0) {
      sum += i;
    }
  }
  return sum;
}

void main() {
  print("Enter the two number that you want to check Multiple of it.");
  print("First Number");
  int firstNumber = int.parse(stdin.readLineSync()!);
  print("Second Number");
  int secondNumber = int.parse(stdin.readLineSync()!);
  print("Enter the range that you want to check.");
  print("From");
  int fromeRange = int.parse(stdin.readLineSync()!);
  print("To");
  int toRange = int.parse(stdin.readLineSync()!);

  int result_is =
      multiple_Of_Tow(firstNumber, secondNumber, fromeRange, toRange);
  print("The sum is: $result_is");
}
