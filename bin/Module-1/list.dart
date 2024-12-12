void main(){
  //////// List ////////
  // List is a collection of ordered elements. Can be growable or fixed.

  // List Declaration
  List<int> list1 = [1, 2, 3, 4, 5];
  var list2 = [1, 2, 3, 4, 5];
  var list3 = <int>[1, 2, 3, 4, 5];

  // Accessing List Elements
  print(list1[0]); // 1
  print(list1[2]); // 3

  // Updating List Elements
  list1[2] = 10;
  print(list1); // [1, 2, 10, 4, 5]

  // Adding Elements to List
  list1.add(6); // Add element at the end
  list1.insert(2, 20); // Add element at index 2 and shift other elements to the right.
  list1.addAll([7, 8, 9]); // Add multiple elements at the end
  list1.insertAll(2, [30, 40, 50]); // Add multiple elements starting from index 2 and shift other elements to the right.

  // Removing Elements from List
  list1.remove(10); // Remove element 10
  list1.removeAt(2); // Remove element at index 2
  list1.removeLast(); // Remove last element
  list1.removeRange(2, 5); // Remove elements from index 2 to 4
  list1.removeWhere((element) => element % 2 == 0); // Remove elements that are even
  list1.clear(); // Remove all elements

  // List Properties
  print(list1.length); // Returns the length of the list
  print(list1.isEmpty); // Returns true if the list is empty
  print(list1.isNotEmpty); // Returns true if the list is not empty
  print(list1.reversed); // Returns the list in reverse order. It does not change the original list.
  print(list1.first); // Returns the first element of the list
  print(list1.last); // Returns the last element of the list
  print(list1.singleOrNull); // Returns the single element of the list or null if the list is empty or has more than one element

  // Iterating over List
  list1.forEach((element) => print(element));




  // Growable List
  List<int> growableList = [];
  var growableList2 = [];
  growableList.add(10);
  growableList.add(20);
  print(growableList); // [10, 20]

  // Fixed-length List
  const fixedLengthList = [1, 2, 3];
  print(fixedLengthList); // [1, 2, 3]
  fixedLengthList[0] = 10;
  fixedLengthList[1] = 20;
  fixedLengthList[2] = 30;
  // fixedLengthList[3] = 40; // Error: RangeError (index): Invalid value: Not in range 0..2, inclusive
  // fixedLengthList.add(40); // Error: Unsupported operation: Cannot add to a fixed-length list
  print(fixedLengthList); // [10, 20, 30]
}