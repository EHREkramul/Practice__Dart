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
    print("It executes all time. If there is any error or not");
  }
  print("Program is still running");
}