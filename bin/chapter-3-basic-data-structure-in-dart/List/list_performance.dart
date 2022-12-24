final people = ["Pablo", "Mandara", "Megan"];

void main() {
  insertionLocation();
}

// Insertion Location

void insertionLocation() {
  final peopleCount = people;
  peopleCount.add("Edith");
  print(peopleCount);

// By Inserting an element at the index 0,
//it forces the entire element in the list to shuffle
//backwards..
final start = DateTime.now();
  peopleCount.insert(0, "Samuelson");
  final end = DateTime.now();
  final time = end.difference(start);
  print(peopleCount);
  print(time);
}


// Capacity

//  this factor determines the speed of intersection.
