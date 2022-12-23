/// Linear Time Complexity

void main() {
  final userNames = [
    "Samuelson",
    "Owei",
    "David",
  ];
  final start = DateTime.now();
  final end = DateTime.now();
  printNames(userNames);
  final difference = end.difference(start);

  print(difference);
}

void printNames(List<String> names) {
  for (var name in names) {
    print(name);
  }
}
