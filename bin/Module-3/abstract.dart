abstract class Father{
  totalTaka(){}
}

class Son extends Father{
  totalTaka(){
    print("Son's Money = 50,000 "); // Method Overriding
  }
}

void main(){
  // var f1 = Father(); // Object of abstract class can't be created

  var s1 = Son();
  s1.totalTaka();
}