// Any class can act as an interface.
// <------------------------------------ Single Interface ------------------------------------>

class Person{
  void identify(){
    print('I am a person');
  }
  void eating(){
    print('Person is eating');
  }
}

class Student implements Person{ // When a class implements another class, it must provide concrete implementations for all methods and properties defined in that interface.
  @override
  void eating() {
    print('Student eating');
  }

  @override
  void identify() {
    print('I am Student');
  }
}

// <------------------------------------ Multiple Interface ------------------------------------>
abstract class Animal {
  late String name;
  void eat();
  void sleep();
}


abstract class Flyer {
  void fly();
}

abstract class Swimmer {
  void swim();
}

class Duck implements Animal, Flyer, Swimmer { // Multiple Interface/implementation
  @override
  void eat() {
    print("Duck is eating.");
  }

  @override
  void sleep() {
    print("Duck is sleeping.");
  }

  @override
  void fly() {
    print("Duck is flying.");
  }

  @override
  void swim() {
    print("Duck is swimming.");
  }

  @override
  late String name;
}


void main(){
  Student s1 = Student();
  s1.eating();

  var d1 = Duck();
  d1.swim();
}


