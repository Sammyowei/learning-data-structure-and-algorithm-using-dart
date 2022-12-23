// Quadratic Time Complexity

void main() {
  final userNames = [
    "Samuelson",
    "Owei",
    "David",
    "emmanuel",
    "emmason",
    "Precious",
  ];
  final start = DateTime.now();
  printMoreNames(userNames);
  final end = DateTime.now();
  final difference = end.difference(start);
  print(difference);
}

void printMoreNames(List<String> names) {
  for (var _ in names) {
    for (var name in names) {
      print(name);
    }
  }
}
