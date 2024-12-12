void main(){
  int age;
  // print(age); // Error
  int? age2;
  print(age2); // Ok. return null if age2 is empty

  print(age2 ?? 18); // Use 18 if age2 is null

  String? name; // using ? is optional to initialize the variable, even in letter
  print(name ?? 'User'); // use "User" if name is null

  late String city;
  // print(city); // Error city is not initialized
  city = "Dhaka";
  print(city); // Ok

   List<int?> nullable = [1,2,3,4,5,null,7]; // int: doesn't accept null values. int?: accept null values.
}