// Logarithmic Time Complexity

void main() {
  findTimeDifferenceForBC();
  findTimeDifferentForBetterNC();
}

// this algorithm is used only when a subset of the
//input needs to be inspected.

//  the Big-O notation for this time algorithm is O(log n)

const numbers = [34, 45, 66, 77, 88, 99, 100, 350, 400, 450];

//  This algorithm would be an O(n) algorithm (Linear Time Complexity)

bool nativeContains(int value, List<int> list) {
  for (var element in list) {
    if (element == value) {
      return true;
    }
  }
  return false;
}

void findTimeDifferenceForBC() {
  final start = DateTime.now();
  final result = nativeContains(3, numbers);
  final end = DateTime.now();
  final difference = end.difference(start);
  print(result);

  print(difference);
}

void findTimeDifferentForBetterNC() {
  final start = DateTime.now();
  final result = betterNativeContains(4, numbers);
  final end = DateTime.now();
  final difference = end.difference(start);

  print(result);
  print(difference);
}

bool betterNativeContains(int value, List<int> list) {
  if (list.isEmpty) return false;

  final middleIndex = list.length ~/ 2;
  if (value > list[middleIndex]) {
    for (var i = middleIndex; i < list.length; i++) {
      if (list[i] == value) return true;
    }
  } else {
    for (var i = middleIndex; i >=0; i--) {
      if (list[i] == value) return true;
    }
  }
  return false;
}
