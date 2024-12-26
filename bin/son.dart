import 'father.dart';

class Son extends Father{ // Child Class (Extends/Inherits Father)
  @override // Override keyword to indicate the method is overriding. Optional. good practice to use
  fathersMoney(){ // Method overriding
    print("Total Father Amount : 5,00,000 TK");
  }
}