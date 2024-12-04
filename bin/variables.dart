void main() {
  //////// Dart Variables ////////
  // Variables are used to store data. A variable is a name given to a memory location.
  // Variable Types: int, double, String, bool, dynamic, var

  // int: Integer values
  int age = 25;
  print(age);

  // double: Floating-point values
  double height = 5.9;
  print(height);

  // String: Sequence of characters
  String name = 'John Doe';
  print(name);

  // bool: Boolean values
  bool isTrue = true;
  print(isTrue);

  // dynamic: A variable whose type can be changed
  dynamic value = 100;
  print(value);
  value = '"Dart Programmings"';
  print(value);

  // var: A variable whose type is automatically inferred
  var score = 100;
  print(score);
  // score = 'Dart Programming'; // Error: type of score(int) declared using var cannot be changed

  // Constants: A variable whose value cannot be changed. const: Compile-time constant
  const pi = 3.14;
  print(pi);
  // pi = 3.14159; // Error: cannot change the value of a constant variable
  /* Error: Constants must be initialized with a constant value
  const double gravity;
  gravity = 9.8;*/

  // Final: A variable whose value can be set only once. final: Run-time constant
  final cityName = 'Mumbai';
  print(cityName);
  // OK: final variable can be declared without initialization
  final String country;
  country = 'India';
  print(country);
  // cityName = 'Delhi'; // Error: cannot change the value of a final variable
}