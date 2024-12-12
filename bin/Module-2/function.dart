void main(){
  print(addition( 3, b:3,a:2.87)); // Named parameter should be used by calling it's name
}

// return_type function_name (parameter list){Function body}
//addition({required int a, required int b}) // Named parameter.
int addition(int x, {double a=0, required int b}){
  return (a+b).toInt();
}

