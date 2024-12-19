class Father{
  totalTaka(){
    print("Father's Money = 80,000 ");
  }
}

class Son extends Father{
  totalTaka(){
    print("Son's Money = 50,000 "); // Method Overriding
  }
}

void main(){
  var f1 = Father();
  f1.totalTaka();

  var s1 = Son();
  s1.totalTaka();
}