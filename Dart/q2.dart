int fibonacci_num() {
  int start = 0;
  int sec = 1;
  int result = 0;
  while (sec < 4000000) {
    int temp = start;
    start = sec;
    sec = temp + sec;
    if (start % 2 == 0) {
      result += start;
    }
  }
  return result;
}

void main() {
  print("Fibonacci Numbers");
  var result = fibonacci_num();
  print(result);
}
