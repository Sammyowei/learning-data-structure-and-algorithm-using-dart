import 'dart:collection';

/// MAP
void main() {
  addToMap();
  hashMap();
}

final scores = {
  "Eric": 9,
  "Mark": 12,
  "Wayne": 1,
  "Samuelson":30
};

// Adding new entry to the map 
void addToMap(){
  scores["Andrew"]=0;
  print(scores);
}

// Dealing with HashMap
void hashMap(){
  final hashmap = HashMap.of(scores);
  print(hashmap);
}