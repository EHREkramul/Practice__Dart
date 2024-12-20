void main(){
  Restaurant bfc = Restaurant();
  // bfc._zoneName; // Error. Private field
  bfc.setCustomerName = 'Ekramul Haque';
  print('Welcome ${bfc.getCustomerName}');
  // bfc._name = "BFC"; // No access. _name is private.
  // bfc._prepareItem('Chicken Bucket'); // No access. _prepareItem is private.
  print(bfc.order('Chicken Bucket'));
}

class Restaurant{
  Restaurant(){
    _shopping();
  }

  final _restaurantName = 'BFC';
  // const String _name = "BFC"; // Only static field can be const. static const String _name = "BFC";
  // late const String _name1 = "BFC"; // Error. Members can't be declared to be both 'const' and 'late'.
  late String _customerName;
  String get getCustomerName => _customerName; // Getter Method. Call: bfc.getCustomerName
  // String set setCustomerName (name) => _customerName=name; // Setter Method. Call: bfc.setCustomerName = 'Ekramul Haque';. The return type of the setter must be 'void' or absent/nothing.
  set setCustomerName (name) => _customerName=name; // Setter Method. Call: bfc.setCustomerName = 'Ekramul Haque';
  /*set setCustomerName(String name){ // Another alternative to define setter method // Call(same): bfc.setCustomerName = 'Ekramul Haque';
    _customerName = name;
  }*/

  String order (String item){
    _prepareItem(item);
    return '$item served';
  }

  _prepareItem(String item){
    print('Preparing $item');
  }
  _shopping(){
    print('Shopping for $_restaurantName Opening');
  }

}