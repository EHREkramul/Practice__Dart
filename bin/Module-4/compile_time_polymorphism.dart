// Dart supports polymorphism through:
// 1. method overriding (runtime polymorphism)
// 2. method overloading (compile-time polymorphism)

/* 2. Compile-time Polymorphism (Method Overloading)

* Dart does not support method overloading in the traditional sense,
* where multiple methods can have the same name but different parameter types.
* However, polymorphism can still be achieved by using default parameter values or optional parameters.
* */

class Printer {
  void printMessage(String message, [String? prefix]) {
    if (prefix != null) {
      print("$prefix: $message");
    } else {
      print(message);
    }
  }
}

void main() {
  Printer printer = Printer();
  printer.printMessage("Hello, Dart!");          // Outputs: Hello, Dart!
  printer.printMessage("Hello, Dart!", "Info"); // Outputs: Info: Hello, Dart!
}
