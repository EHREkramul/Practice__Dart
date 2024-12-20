import 'restaurant.dart';

void main(){
  Restaurant bfc = Restaurant();
  // bfc._zoneName; // Error. Private field
  bfc.setCustomerName = 'Ekramul Haque';
  print('Welcome ${bfc.getCustomerName}');
  // bfc._name = "BFC"; // No access. _name is private.
  // bfc._prepareItem('Chicken Bucket'); // No access. _prepareItem is private.
  print(bfc.order('Chicken Bucket'));
}

