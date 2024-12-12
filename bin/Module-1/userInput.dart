import 'dart:io';

void main(){
  print("Enter your name: ");
  String? name = stdin.readLineSync();
  print(name);


  print("Enter your age: ");
  int? age = int.tryParse(stdin.readLineSync()!); // return null if non integer input is given
  print(age);

  print("Enter account balance: ");
  double? balance = double.tryParse(stdin.readLineSync()!);
  print(balance);
}