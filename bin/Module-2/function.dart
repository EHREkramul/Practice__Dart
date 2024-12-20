void main(){
  print(addition( 3, b:3,a:2.87)); // Named parameter should be used by calling it's name
  print(multiplication(2,5));
  division(5,2);
  add(10, 20, "Addition is");
  temp( b: 12.3);
}

temp({double? a, required double b}){ // Optional parameter in named parameter
  print('$a and $b');
}
// temp2(double e =34, int d){} // Error. Default value can be only in named parameter.

// return_type function_name (parameter list){Function body}
//addition({required int a, required int b}) // Named parameter.
int addition(x, {double a=0, required int b}){ // if type not declared then it will use dynamic. dynamic x
  return (a+b).toInt();
}

var multiplication = (a, b) => a*b;
var division = (a,b) => {
  print(a/b), // 2.5
  print("Hello") // Hello
}; // Use {} block to write multiple line inside arrow_function/dart_lambda


// Optional Parameter
add(double x, double y, [String? description]){ // description is optional parameter. // By default return type dynamic. Must use nullable type?
  if(description != null){
    print("$description: ${x+y}");
  }else{
    print("Add: ${x+y}");
  }
  // return "String"; // ok
  // return 123; // ok
}
