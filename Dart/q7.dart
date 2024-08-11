import 'dart:io';

bool isPrime(int number) {
  if (number <= 1) {
    return false;
  }
  for (int i = 2; i <= (number ~/ 2); i++) {
    if (number % i == 0) {
      return false;
    }
  }
  return true;
}

int isPrimePos(int pos) {
  int position = 0;
  int i = 2;
  while (position < pos) {
    if (isPrime(i)) {
      position++;
      if (position == pos) {
        return i;
      }
    }
    i++;
  }
  return -1;
}

void main() {
  print("Enter the position you want prime no.");
  int pos = int.parse(stdin.readLineSync()!);
  var result = isPrimePos(pos);
  print(result);
}
