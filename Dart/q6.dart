import 'dart:io';

int square_of_sum(int start, int end) {
  int sum = 0;
  for (int i = start; i <= end; i++) {
    sum += i;
  }
  return sum * sum;
}

int sum_of_square(int start, int end) {
  int sum = 0;
  for (int i = start; i <= end; i++) {
    sum += i * i;
  }
  return sum;
}

void main() {
  print("Enter the square range from: ");
  int from_range = int.parse(stdin.readLineSync()!);
  print("Enter the square range to: ");
  int to_range = int.parse(stdin.readLineSync()!);

  int sos1 = sum_of_square(from_range, to_range);
  int sos2 = square_of_sum(from_range, to_range);

  int result = sos2 - sos1;
  print("The final result = $result");
}
