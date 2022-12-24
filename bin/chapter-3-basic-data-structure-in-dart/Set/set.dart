//  Set

void main() {
  var bag = {"Candy", "Juice", "Gummy"};
  bag.add("Candy");
  print(bag);

  final myList = [1, 2, 3, 2, 5, 4];
  final mySet = <int>{};
  for (var item in myList) {
    if (mySet.contains(item)) {
      print("My set already has it so its a duplication");
    }
    mySet.add(item);
  }
  print(myList);
  print(mySet);
}
