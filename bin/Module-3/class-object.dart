import 'MyClass.dart';

void main(){
  var p1 = Person('I am person constructor'); // Constructor called here automatically

  p1.getAge();
  p1.name = "Karim Miya";

  Person.identify(); // Static property. Only accessible with class, not object.

  print(p1.name);
  print(p1.alpha);
  print(p1.alpha[0]);
  p1.sayName();
}