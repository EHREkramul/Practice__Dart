void main(){
  // If-Else
  int a = 10;
  if(a > 10){
    print("Greater than 10");
  }else if(a < 10){
    print("Less than 10");
  }else{
    print("Equal to 10");
  }

  // Switch Case
  String grade = "b";
  switch(grade){
    case "A" || 'a':
      print("Excellent");
      break;
    case "B" || "b":
    case "C" || "c":
      print("Average");
      break;
    case "D" || 'd':
      print("Poor");
      break;
    default:
      print("Invalid Grade");
  }

  // For Loop
  for(int i = 0; i < 5; i++){
    print(i);
  }

  // For in Loop
  List<int> numbers = [1, 2, 3, 4, 5];
  for(int number in numbers){
    print(number);
  }

  // While Loop
  int i = 0;
  while(i < 5){
    print(i);
    i++;
  }

  // Do-While Loop
  int j = 0;
  do{
    print(j);
    j++;
  }while(j < 5);
}