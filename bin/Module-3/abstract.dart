abstract class Father{
  // totalTaka(); // Valid. Must be implemented body into sub classes. Non-Abstract class can not have method without body
  totalTaka(){ // Implementation in child class is optional. by default this body will be used.
    print('Father\'s Money = 80,000');
  }
  static identify(){
    print('I am Father');
  }
}

class Son extends Father{
  totalTaka(){
    print("Son's Money = 50,000 "); // Method Overriding
  }
}

void main(){
  // var f1 = Father(); // Object of abstract class can't be created
  Father.identify(); // Static member can be accessible

  var s1 = Son();
  s1.totalTaka();
}