import 'dart:io';

bool isPalinedrom(int number) {
  String str = number.toString();
  List strSplit = [];
  for (int i = 0; i <= str.length - 1; i++) {
    strSplit.add(str[i]);
  }
   var rev = strSplit.reversed.join();
  if (str == rev) {
    return true;
  } else {
    return false;
  }
}

int largestPalindrom(int digit) {
  int minValue = digit == 2 ? 10 : 100;
  int maxValue = digit == 2 ? 99 : 999;
  int largestPal = 0;
  for (int i = minValue; i <= maxValue; i++) {
    for (int j = i; j <= maxValue; j++) {
      int prodcut = i * j;
      if (isPalinedrom(prodcut) && prodcut > largestPal) {
        largestPal = prodcut;
      }
    }
  }
  return largestPal;
}

void main() {
  print("Entne the digit you want to check: 2 or 3");
  int digit = int.parse(stdin.readLineSync()!);

  if (digit == 2 || digit == 3) {
    int result = largestPalindrom(digit);
    print(result);
  } else {
    print("Please enter the valid digit eithre 2 or 3");
  }
}
