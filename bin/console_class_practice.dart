import 'my_class.dart';
import 'son.dart';
// import 'father.dart';

void main() {
  var obj = MyClass();
  MyClass.addTwoNumber(10, 20); // Accessing through class name due to static member
  // obj.addTwoNumber(10, 20); // Error. static member can't be accessed with object
  obj.addThreeNumber(12, 13, 15);
  print(obj.myName);


  // Inheritance Examples
  var objSon = Son();
  objSon.fathersMoney();
  // var fObj = Father(); // Error. object of abstract class can't be created.
}