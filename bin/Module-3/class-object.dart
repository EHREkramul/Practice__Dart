import 'MyClass.dart';

void main(){
  var p1 = Person('I am person constructor'); // Constructor called here automatically
  Person.identify(); // Static property. Only accessible with class, not object.

  p1.getAge();
  p1.name = "Karim Miya";

  print(p1.name);
  print(p1.alpha);
  print(p1.alpha[0]);
  p1.sayName();

  Student rahim = Student();

  rahim.studentName = "Rahim Islam";
  rahim.age = 23;
  rahim.studentClass = 'Class-10';

  print('Student Name: ${rahim.studentName}');

  late String temp;
  // print(temp); // Error temp not initialized/assigned
  temp = "Temporary";
  print(temp); // Ok
}

class Student{
  // Student(int a) {} // Constructor overloading is not available in dart.
  late String studentName; // If we declare type then late is required. Because String can't store null, String? can.
  int? age; // nullable
  late String studentClass;

   identify(){
    print('I am student');
  }

  method1(){}
// method1(int a){} // Method Overloading is also not allowed in dart
}