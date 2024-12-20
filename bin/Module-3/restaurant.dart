class Restaurant{
  Restaurant(){
    _shopping();
  }

  final _restaurantName = 'BFC';
  // const String _name = "BFC"; // Only static field can be const. static const String _name = "BFC";
  // late const String _name1 = "BFC"; // Error. Members can't be declared to be both 'const' and 'late'.
  late String _customerName;
  // String set setCustomerName (name) => _customerName=name; // Setter Method. Call: bfc.setCustomerName = 'Ekramul Haque';. The return type of the setter must be 'void' or absent/nothing.
  set setCustomerName (name) => _customerName=name; // Setter Method. Call: bfc.setCustomerName = 'Ekramul Haque';
  String get getCustomerName => _customerName; // Getter Method. Call: bfc.getCustomerName

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