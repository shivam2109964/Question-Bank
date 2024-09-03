void main() {
  List<List<int>> list = List.generate(5, (generator) => []);
  list[0].add(6);
  list[1].add(2);
  list[2].add(5);
  list[3].add(9);
  list[4].add(1);
  print(list);
}
