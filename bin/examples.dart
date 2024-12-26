import 'dart:io';

void variable_dataType() {
  print("Hello World"); // Print simple hello world

  // Dart Variables Example
  var x = 10;
  var y = 20;
  var result = x + y;
  print("The result is: $result");

  // Dart Data types
  var a = 10; // Integer
  var b = 10.13; // Double
  var c = true; // Boolean
  var d = "String"; // String

  int e = 10;
  double f = 10.13;
  bool g = false;
  String h = "String Object";
}

void list() {
  /*Dart List [
access by index,
can hold different data types,
enclosed by third brace [],
can hold list and map also,
no size limit in growable list
]
*/
  var myList = [
    "Dhaka",
    'Tangail',
    "Khulna",
    10,
    20.50,
    true,
    ["Ekramul", 21.34],
    false,
    {"name": "Ekramul", "Age": 22},
    20,
    "Hello"
  ];
  print(myList);

  List<int> ns = [
    1,
    2,
    3,
    4,
    5
  ]; // This list contains only integers. Trying to add or assign non-integer values to this list will result in a compile-time error.
  List<dynamic> mixedList = [
    1,
    'Hello',
    3.14,
    true
  ]; // A dynamic list can hold elements of any type.
  List items = [
    1,
    'Dart',
    false
  ]; // Omitting the type, Dart implicitly uses List<dynamic>

  // List property
  var city = ['Dhaka', 'Tangail', 'Cumilla', 'Khulna'];

  print(city.first); // returns first element of list (Dhaka)
  print(city.isEmpty); // returns true if the list is empty else false (false)
  print(city.isNotEmpty); // opposite of isEmpty (true)
  print(city
      .length); // returns the length of list (number of elements on list) (4)
  print(city.last); // returns the last element of list (Khulna)
  print(city
      .reversed); // returns the copy of that list in reversed order, do not impact the main list ((Khulna, Cumilla, Tangail, Dhaka))

  // Fixed Length list
  city.add('Rajshahi'); // Growable List
  const fixedList_1 = [1, 2, 3, 4]; // Fixed length

  List<int> fixedList_2 =
      List.filled(3, 0); // Creates a list of length 3, filled with zeros
  print(fixedList_2); // Output: [0, 0, 0]

  // List Insert Operation
  var numbers = [1, 2, 3, 4];
  numbers.add(5); // new list --> [1, 2, 3, 4, 5]
  numbers.addAll([6, 7, 8]); // new list --> [1, 2, 3, 4, 5, 6, 7, 8]
  numbers.insert(2, 100); // new list --> [1, 2, 100, 3, 4, 5, 6, 7, 8]
  numbers.insertAll(3, [
    500,
    600,
    700
  ]); // new list --> [1, 2, 100, 500, 600, 700, 3, 4, 5, 6, 7, 8]
  // contains(element): Returns true if the list contains the specified element.

  // List Update and Delete
  var nums = [1, 2, 3, 4, 5];

  // Update by index
  nums[1] = 100; // new list --> [1, 100, 3, 4, 5]
  nums[4] = 500; // new list --> [1, 100, 3, 4, 500]
  // Remove Element
  nums.removeLast(); // remove the last item. new list --> [1, 100, 3, 4]
  nums.removeAt(2); // remove the item of index 2. new list --> [1, 100, 4]
  nums.remove(
      4); // remove element [4] from the whole list. new list --> [1, 100]

  numbers = [1, 2, 3, 4, 5];

  // Transform each number by multiplying it by 2
  List<int> doubledNumbers = numbers.map((number) => number * 2).toList();
  /*
    The map method is used to transform each element of a collection
    and returns a new iterable (list or set) with the transformed elements.
    It does not modify the original list
    but creates a new one based on the operation you apply to each element.
  */

  // Filter the numbers to only include even numbers
  List<int> evenNumbers = numbers.where((number) => number % 2 == 0).toList();

  // Calculate the sum of all numbers
  int sum = numbers.reduce((a, b) => a + b);
}

void map() {
  /*Dart Map {
access by key not index,
Key value pair,
enclosed by curly brace {},
'key': value,
key value can be any type
}
*/
  var myMap = {
    'name': "Ekramul",
    'age': 22,
    'gender': 'Male',
    'active': true,
    404: "Not Found",
    true: "True"
  };
  print(myMap);

  myMap['country'] =
      'Bangladesh'; // new Map --> {'name': "Ekramul", 'age': 22, 'gender': 'Male', 'active': true, 10:"Example", true:"Example", 'country': "Bangladesh"}

  // Create map using map constructor
  var person = new Map(); // Create Map object named person

  person['name'] = "Ekramul"; // new map --> {'name': "Ekramul"}
  person['age'] = 22; // new map --> {'name': "Ekramul", 'age': 22}
  person['city'] =
      "Tangail"; // new map --> {'name': "Ekramul", 'age': 22, 'city': "Tangail"}

  print(person.keys); // returns all keys in map
  print(person.values); // returns all values in map
  print(
      person.length); // returns all values in number of key value pairs in map
  print(person
      .isEmpty); // returns true if map is empty. (isNotEmpty is opposite of isEmpty)

  person.addAll({
    'country': "Bangladesh"
  }); // can add one or multiple key value pairs or elements in map. new map --> {'name': "Ekramul", 'age': 22, 'city': "Tangail", 'country': "Bangladesh"}
  person.remove('age'); // Remove age named key's pair only.
  person.clear(); // Clear the map

  Map<String, int> ages = {
    'Alice': 25,
    'Bob': 30,
    'Charlie': 35,
  };

// Map Iteration
  ages.forEach((key, value) {
    print('$key is $value years old');
  });
  // Alternative for in loop
  for (var entry in ages.entries) {
    print('${entry.key} is ${entry.value} years old');
  }

// Map with String keys and int values
  Map<String, int> ages_2 = {
    'Alice': 25,
    'Bob': 30,
  };

// Map with int keys and String values
  Map<int, String> errorCodes = {
    404: 'Not Found',
    200: 'OK',
  };

// Dynamic map with mixed key and value types
  Map<dynamic, dynamic> info = {
    'name': 'Alice',
    1001: true,
  };

// Declaring an empty map with String keys and int values
  Map<String, int> scores = {};

// Declaring an empty dynamic map (dynamic keys and values)
  Map<dynamic, dynamic> mixedInfo = {};
}

void operators() {
  // Arithmetic Operators
  var x = 20;
  var y = 2;
  print(x + y); // Addition
  print(x - y); // Subtraction
  print(x * y); // Multiplication
  print(x / y); // Divide
  print(x % y); // Modulus (Get Remainder)

  // Unary Operators

  // Postfix
  var ex = 10;
  print(ex++); // Postfix (Use first, then increment ex by 1)
  print(ex); // Here we got the incremented value

  print(ex--); // Postfix (Use first, then decrement ex by 1)
  print(ex); // Here we got the decremented value

  // Prefix
  print(
      ++ex); // Prefix (Increment by 1 first, then use). we got the incremented result here instant
  print(
      --ex); // Prefix (decrement by 1 first, then use). we got the decremented result here instant

  // Dart Constants (const, final keyword used to define constant)
  const thisYear = 2024;
  // thisYear = 2025; // will encounter error
  print(thisYear);

  final pastYear = 2022;
  // pastYear = 2023; // will encounter error
  print(pastYear);
}

void set() {
  /*
Dart Set
Unordered collection of different values of the same type,
same as array but unordered,
doesn't allow the duplicate values in set, all elements must be unique. Ignores the duplicate values, count the first one only
*/
  var mySet = <String>{
    'Dhaka',
    'Barishal',
    'Coxs Bazar'
  }; // <Type declaration is optional>. Indicates all elements must be String and unique. Ignore all the stored duplicate values, count the first duplicate element only
  mySet.add(
      'Khulna'); // Add element on last. new set --> {'Dhaka', 'Barishal', 'Coxs Bazar', 'Khulna'}
  mySet.add(
      'Dhaka'); // Ignore this add as it exist already. new set --> {'Dhaka', 'Barishal', 'Coxs Bazar', 'Khulna'}
  mySet.addAll({
    "Chittagong",
    'Tangail'
  }); // Add elements on last. new set --> {'Dhaka', 'Barishal', 'Coxs Bazar', 'Khulna', 'Chittagong', 'Tangail'}

  // Access the set element
  print(mySet
      .elementAt(2)); // returns value at index 2 in mySet. that is Coxs Bazar
  mySet.clear(); // remove all elements and clear mySet

  print(mySet); // Print empty set. output --> {}

  // Set also has first, last, isEmpty, isNotEmpty, length, single properties same as Dart List.
}

void controlFlow_loops_ifElse_switch() {
  // Control flow in Dart
  //decision making control flow
  var marks = 70;

  // if, if-else, if-else if
  if (marks >= 80) {
    print("Result is A+");
  } else if (marks >= 70 && marks < 80) {
    print("Result is A");
  } else if (marks < 70 && marks >= 60) {
    print("Result is A-");
  } else {
    print("Result is below A-");
  }

  // switch-case statement
  int num = 2;
  switch (num) {
    case 1:
      print("One");
      break; // Optional break. Dart use break by default

    case 2:
      print("Two");
      break;

    case 3:
      print("Three");
      break;

    default: // Optional
      print("Not one to three");
      break; // Optional
  }

  // Switch fall-through operation
  var val = 1;
  switch (val) {
    case 1:
      print("fall - ");
      continue label; // Continue after the "label:". Explicitly falls through to label:

    case 2:
      print("goodbye");
      break;

    label: // This is a label on the switch case to show fall through

    case 3:
      print("through - ");
  } // Output will fall - through of this switch cases.

  // For Loop {Also called entry control loop}
  for (var i = 1; i <= 10; i++) {
    print("Hello World : " + i.toString());
  }
  // For In Loop {Also called entry control loop}
  // For in loop on list
  List myList = ['A', 'B', 'C', 'D', 'E'];

  for (var element in myList) {
    print(element);
  }

  // for in loop on set
  Set mySet = {'A', 'B', 'C', 'D', 'E'};

  for (var item in mySet) {
    print(item);
  }
  // for in loop in json array
  var productList = [
    {'name': 'Soap', 'price': 100},
    {'name': 'Ball', 'price': 50},
    {'name': 'Noddles', 'price': 20},
    {'name': 'Oil', 'price': 800},
  ];
  for (var product in productList) {
    var item =
        "Product Name is ${product['name']} and Price is ${product['price']} Tk";
    print(item);
  }

  // while loop {Also called exit control loop}
  var i = 1;
  while (i <= 5) {
    print(i++);
  }

  // do-while loop {Also called exit control loop}
  i = 1;
  do {
    print(i++);
  } while (i <= 5);
}

void spread_operator() {
  // Using spread operator with lists
  List<int> list1 = [1, 2, 3];
  List<int> list2 = [4, 5, 6];
  List<int> combinedList = [...list1, ...list2];
  print(combinedList); // Output: [1, 2, 3, 4, 5, 6]
  // Same for set, map also

  // Null-aware spread operator
  List<int>? nullableList; // nullableList = null by default
  List<int> combinedListSafe = [...?nullableList, ...list1];
  print(combinedListSafe); // Output: [1, 2, 3]
}

void functions() {
  // Functions
  var additionResult = addition(3, 5) + 4.5;
  print(additionResult);
}

int addition(int x, int y) {
  // method for method example
  return (x + y);
}

void collectionIf_collectionFor() {
  // Collection-if Example
  bool includeExtra = true; // Condition to include extra items
  List<int> numbers = [1, 2, 3];

  // Using Collection-if to conditionally add elements
  List<int> result = [
    ...numbers, // Spread existing numbers
    if (includeExtra) 4, // Include 4 if includeExtra is true
    if (!includeExtra) 5, // This will not be included
  ];

  print(result); // Output: [1, 2, 3, 4]

  // Collection-for Example
  List<int> numbersFor = [1, 2, 3];

  // Using Collection-for to create a new list of squares
  List<int> squares = [
    for (var number in numbersFor)
      number * number // Iterate over each number and calculate its square
  ];

  print(squares); // Output: [1, 4, 9]

  // Combining Collection-if and Collection-for
  List<int> numbersCombined = [1, 2, 3, 4];
  bool includeEvenSquares =
      true; // Condition to include squares of even numbers

  // Using Collection-if and Collection-for together
  List<int> resultCombined = [
    for (var number in numbersCombined)
      if (includeEvenSquares && number.isEven)
        number * number // Include square if condition is true
  ];

  print(resultCombined); // Output: [4, 16]
}

void parsing() {
  print("Enter a Number: ");
  int? a = int.parse(stdin
      .readLineSync()!); // Converts a String to a double. Throws an exception (FormatException) if the input is not a valid representation of a double
  int? b = int.tryParse(stdin
      .readLineSync()!); // Attempts to convert a String to a double. Returns null if the input is not a valid representation of a double.
  print(a);
  print(b);
  print("Hello World");
}
