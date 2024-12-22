Future<void> main() async {
  print('Just Started');

  Future.delayed(Duration(seconds: 2), (){
    print('Run after 2 seconds');
  });

  await perform();
  print('After all run');
  isValidToVote(15);

}
bool isValidToVote(int age){
  return age>=18?true:false;
}

Future<void> perform() async{
  print('Function Starts');

  await Future.delayed(Duration(seconds: 3), (){
    print('Function Await');
  });

  print('Function End');
}