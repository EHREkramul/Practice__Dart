void main(){
  //////// Map ////////
  // Map is a collection of key-value pairs. Each key is unique. The key and value can be of any data type.

  // Map Declaration
  Map<String, int> map1 = {'one': 1, 'two': 2, 'three': 3};
  var map2 = {'one': 1, 'two': 2, 'three': 3};

  // Accessing Map Elements
  print(map1['one']); // 1
  print(map1['three']); // 3

  // Updating Map Elements
  map1['three'] = 30;
  print(map1); // {one: 1, two: 2, three: 30}

  // Adding Elements to Map
  map1['four'] = 4; // Add key-value pair
  map1.addAll({'five': 5, 'six': 6}); // Add multiple key-value pairs

  // Removing Elements from Map
  map1.remove('four'); // Remove key-value pair with key 'four'
  map1.removeWhere((key, value) => value % 2 == 0); // Remove key-value pairs where value is even
  map1.clear(); // Remove all key-value pairs

  // Map Properties
  print(map1.length); // Returns the number of key-value pairs
  print(map1.isEmpty); // Returns true if the map is empty
  print(map1.isNotEmpty); // Returns true if the map is not empty
  print(map1.keys); // Returns an iterable containing all keys. output: (one, two, three)
  print(map1.values); // Returns an iterable containing all values. output: (1, 2, 30)
  print(map1.entries); // Returns an iterable containing all key-value pairs. output: (MapEntry(one: 1), MapEntry(two: 2), MapEntry(three: 30))
  print(map1.containsKey('one')); // Returns true if the map contains the key 'one'
  print(map1.containsValue(30)); // Returns true if the map contains the value 30
  print(map1.map((key, value) => MapEntry(key, value * 2))); // Returns a new map with the key-value pairs transformed by the function

  // Map Methods
  map1.update('one', (value) => value * 3); // Update the value of key 'one' to 3 times of its current value
  map1.update('four', (value) => 4, ifAbsent: () => 0); // Update the value of key 'four' to 4 if it exists, otherwise add key-value pair 'four': 0
  map1.updateAll((key, value) => value * 2); // Update all values of map to 2 times of their current values
  map1.putIfAbsent('four', () => 4); // Add key-value pair 'four': 4 if it does not exist. Otherwise, return the value of key 'four'
  map1.containsKey('four'); // Return true if map contains key 'four'
  map1.containsValue(4); // Return true if map contains value 4

  // Iterating over Map
  map1.forEach((key, value) => print('$key: $value'));
}