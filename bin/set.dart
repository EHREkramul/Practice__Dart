void main(){
  ///////// Set /////////
  // Set is a collection of unique items. Set is an unordered collection of items.

  // Declaration of Set
  Set<String> names = {};
  var names2 = {};
  var names3 = <String>{'John', 'Doe', 'Smith'};

  // Accessing Set
  print(names3);

  // Add items to Set
  names.add('John');
  names.addAll({'Doe', 'Smith'});

  // Remove items from Set
  names.remove('John');
  names.removeWhere((element) => element == 'Doe');
  names.removeAll({'Smith', 'Doe'}); // Remove multiple items from Set
  names.clear();

  // Set Properties
  print(names3.length); // Return length of Set
  print(names3.isEmpty); // Return true if Set is empty
  print(names3.isNotEmpty); // Return true if Set is not empty
  print(names3.first); // Return first element of Set
  print(names3.last); // Return last element of Set

  // Set Methods
  names3.contains('John'); // Return true if Set contains 'John'
  names3.union({'John', 'Doe'}); // Return union of two Sets
  names3.intersection({'John', 'Doe'}); // Return intersection of two Sets
  names3.difference({'John', 'Doe'}); // Return difference values of names3 Sets

  // Set Iteration
  names3.forEach((element) {print(element);;});
}