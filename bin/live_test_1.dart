import 'dart:io';

void main(){
  calculateAreaOfTriangle();
}
void calculateAreaOfTriangle() {
  // If we Take User Input
  /*stdout.write('Enter the Base of Triangle: ');
  double base = double.tryParse(stdin.readLineSync()!) ?? 10.00; // Use 10 as default value if the input is invalid

  stdout.write('Enter the Height of Triangle: ');
  double height = double.tryParse(stdin.readLineSync()!) ?? 10.00; // Use 10 as default value if the input is invalid
  */

  // Without User Input
  double base = 10.00;
  double height = 10.00;

  // Calculate Area of Triangle
  double area = 0.5 * base * height;

  print('Base of Triangle is: $base');
  print('Height of Triangle is: $height\n');

  // Print Area
  print('Area of Triangle is: ${area.toStringAsFixed(2)}'); // Print 2 digit after point
}