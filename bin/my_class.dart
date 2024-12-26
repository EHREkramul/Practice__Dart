class MyClass{

  MyClass(){ // Dart doesn't support constructor overloading
    print("I am a constructor of MyClass");
  }

  var myName = "Ekramul Haque";
  var age = 22;

  static addTwoNumber(int x, int y){ // can be accessed by class only (static member)
    print(x + y);
  }

  addThreeNumber(int x, int y, int z){
    print(x + y + z);
    print(this.myName); // access instance members with this.
  }
}