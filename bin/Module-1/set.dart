void main(){
  ///////// Set /////////
  // Set is a collection of unique items. Set is an unordered collection of items. All data must be same type by default.

  // Declaration of Set
  Set<String> names = {};
  var names2 = <String>{}; // var names2 = {};----This will create a Map not Set
  var tempSet = {1, 2, 3, 4}; // Dart will automatically detect this as Set and type will be Set<int>
  var names3 = <String>{'John', 'Doe', 'Smith'};
  // var tempSet = {'John', 10, true, 10.45}; // Dart will automatically detect this as Set and type will be Set<Object>

  // Accessing Set
  print(names3);
  print(names3.elementAt(0)); // Return element at index 0

  // Add items to Set
  names.add('John');
  names2.add('EHR');
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
  var newName = <String>{'Karim', 'Hasan', 'Rahim'};
  newName.contains('Karim'); // Return true if Set contains 'John'
  newName.containsAll({'Karim', 'Rahim'}); // Return true if Set contains all elements

  newName.union({'John', 'Doe'}); // Return union of two Sets
  newName.intersection({'John', 'Doe'}); // Return intersection of two Sets
  newName.difference({'John', 'Doe'}); // Return values of first Set which are not in second Set

  // Set Iteration
  names3.forEach((element) {print(element);;});

  // Convert Set to List
  List<String> namesList = names3.toList();
  var namesList2 = names3.toList();
  print(namesList);
}