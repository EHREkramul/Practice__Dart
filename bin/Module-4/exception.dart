import 'dart:io';

void main(){

  try{
    print("Enter your age: ");
    int age = int.parse(stdin.readLineSync()!);
    print("Your age is: $age");
  }catch(e){
    print(e);
  }
  finally{
    print("Finally executes all time. If there is any error or not");
  }
  print("Program is still running");


  try{
    int a = int.parse('12d3');
    print(a);
  } on FormatException catch(error){
    print('Format exception');
  }
  catch(e){
    print('not format');
  }
  print('Still Running');
}
