void main(){
  //////// Arithmetic Operators ////////
  // Arithmetic operators are used to perform basic mathematical operations.

  // +: Addition
  int sum = 10 + 20;
  print(sum); // 30

  // -: Subtraction
  int difference = 20 - 10;
  print(difference); // 10

  // *: Multiplication
  int product = 10 * 20;
  print(product); // 200

  // /: Division
  double quotient = 20 / 10;
  print(quotient); // 2.0

  // ~/: Integer Division
  int integerQuotient = 20 ~/ 3;
  print(integerQuotient); // 6

  // %: Modulus
  int remainder = 20 % 3;
  print(remainder); // 2



  //////// Unary Operators ////////
  // Unary operators are used to increment or decrement the value of a variable.

  // ++: Increment
  int x = 10;
  print(++x); // 11. Prefix increment. Increment x by 1 and then return the value.
  print(x++); // 11. Postfix increment. Return the value of x and then increment x by 1.

  // --: Decrement
  int y = 20;
  print(--y); // 19. Prefix decrement. Decrement y by 1 and then return the value.
  print(y--); // 19. Postfix decrement. Return the value of y and then decrement y by 1.


  //////// Assignment Operators ////////
  // Assignment operators are used to assign values to variables.

  // =: Assign
  var a = 10.00;
  int b = 10;

  // +=: Add and Assign
  a += 5; // a = a + 5

  // -=: Subtract and Assign
  a -= 5; // a = a - 5

  // *=: Multiply and Assign
  a *= 5; // a = a * 5

  // /=: Divide and Assign
  a /= 5; // a = a / 5

  // ~/=: Integer Divide and Assign
  b ~/= 5; // b = b ~/ 5

  // %=: Modulus and Assign
  a %= 5; // a = a % 5

  print(a); // 0
  print(b); // 2



  //////// Relational Operators ////////
  // Relational operators are used to compare two values.

  // ==: Equal to
  print(10 == 10); // true

  // !=: Not equal to
  print(10 != 10); // false

  // >: Greater than
  print(10 > 5); // true

  // <: Less than
  print(10 < 5); // false

  // >=: Greater than or equal to
  print(10 >= 10); // true

  // <=: Less than or equal to
  print(10 <= 5); // false



  //////// Logical Operators ////////
  // Logical operators are used to combine two or more conditions.

  // &&: Logical AND
  print(true && true); // true

  // ||: Logical OR
  print(false || true); // true

  // !: Logical NOT
  print(!true); // false
}