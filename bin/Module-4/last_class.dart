void main() async{
  print("Started");
  var results = await Future.wait([task1(), task2()]);
  print(results);
  print('End of Task');
}

Future<String> task1(){
  return Future.delayed(Duration(seconds: 2), () => "Task 1");
}
Future<String> task2(){
  return Future.delayed(Duration(seconds: 3), () => "Task 2");
}