class Person{
  // constructor
  Person(identifyTXT){ // Constructor name should be same as class name. Can not return. "return" keyword can't be used
    print(identifyTXT);
  }


  // Properties
  var name = "Ekramul Haque";
  int age = 22;
  var alpha = ['A', 'B', 'C'];

  getAge(){
    print(age);
  }
  sayName(){
    print('My name is ${this.name}'); // access the member/field of this(current) class using "this" keyword. using "this" is optional in dart.
  }
  static identify(){
    print('I am person identify');
  }
}
