// Using List.from constructor

void main() {
  List<int> origranlList = [1, 2, 3, 4, 5];
  List<int> clonedList = List.from(origranlList);
  print(clonedList);

  // Using Spread Operator
  List<int> cloned_List_one = [...origranlList];
  print("Using Spread Opeartor: $cloned_List_one");
}
