void main() {
  final userNames = [
    "Samuelson",
    "Owei",
    "david",
    "ebilado",
  ];
  final start = DateTime.now();
// run to test the algorithm
  checkFirst(userNames);
  final stop = DateTime.now();
  final difference = stop.difference(start);
  print(difference);
}

void checkFirst(List<String> names) {
  if (names.isNotEmpty) {
    print(names.first);
  } else {
    print("no names");
  }
}
