// Dart supports polymorphism through:
// 1. method overriding (runtime polymorphism)
// 2. method overloading (compile-time polymorphism)

/* 1. Runtime Polymorphism (Method Overriding)

* Method overriding occurs when a subclass provides a specific implementation
* of a method that is already defined in its superclass or interface.
* The subclass can override the method to provide its own behavior.
*/

// Base class
class Animal {
  void speak() {
    print("Animal is making a sound");
  }
}

// Subclass
class Dog extends Animal {
  @override
  void speak() {
    print("Dog barks");
  }
}

// Another subclass
class Cat extends Animal {
  @override
  void speak() {
    print("Cat meows");
  }
}

void main() {
  Animal animal1 = Dog(); // Parent Animal class instance hold Child Dog() class object
  Animal animal2 = Cat(); // Parent Animal class instance hold Child Cat() class object

  // Dog tempAnimal = Animal(); // Error. Child class object can be stored in parent class instance(object reference/name). But parent class object can't be stored in child class instance.

  // Polymorphism in action
  animal1.speak(); // Outputs: Dog barks
  animal2.speak(); // Outputs: Cat meows

  print(animal1.runtimeType); // Output: Dog
  print(animal2.runtimeType); // Output: Cat

  print(animal1 is Dog);
  print(animal2 is Cat);
  print(animal1 is Animal);
  print(animal2 is Animal);

  /*
  * When assigning an object of type Dog or Cat to a variable of type Animal,
  * We can still call the speak method, and the appropriate subclass method is invoked, demonstrating polymorphism.
  */
}
